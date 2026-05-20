#!/usr/bin/env python3
"""
Convert AllInstrument.txt to ARM assembly .s file
Usage: python allinstrument_to_asm.py
"""

import re
import sys

def parse_bytestring(s):
    """Parse BYTE $40 $00 $00 $00 into list of ints"""
    result = []
    for token in s.split():
        if token.startswith('$'):
            result.append(int(token[1:], 16))
    return result

def parse_poins(line):
    """Extract all POIN labels from line"""
    return re.findall(r'POIN\s+_(\w+)', line)

def convert_to_asm(input_file, output_file, skip_incbin=False):
    with open(input_file, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    out = []
    out.append('@ ARM Assembly - AllInstrument.s')
    out.append('@ Generated from AllInstrument.txt')
    out.append('')
    out.append('    .section .rodata')
    out.append('    .align 2,0')
    out.append('')
    
    # Collect all labels
    labels = set()
    for line in lines:
        line = line.strip()
        if line.startswith('_') and ':' in line and not line.startswith('#incbin') and not line.startswith('#if'):
            label = line.split(':')[0].strip()
            labels.add(label)
    
    i = 0
    while i < len(lines):
        line = lines[i].rstrip()
        
        if not line.strip():
            out.append('')
            i += 1
            continue
        
        # Skip #ifndef, #define, #endif (keep as comments for reference)
        if line.startswith('#ifndef') or line.startswith('#define') or line.startswith('#endif'):
            out.append(f'@ {line}')
            i += 1
            continue
        
        # Handle #incbin
        if '#incbin' in line:
            if skip_incbin:
                out.append(f'    {line}')
            else:
                match = re.search(r'#incbin\s+"([^"]+)"', line)
                if match:
                    out.append(f'    .incbin "{match.group(1)}"')
                else:
                    out.append(f'    @ {line}')
            out.append('')
            i += 1
            continue
        
        # Handle label
        if line.startswith('_') and ':' in line:
            label = line.split(':')[0].strip()
            out.append(f'{label}:')
            i += 1
            continue
        
        # Handle ALIGN
        if line.startswith('ALIGN'):
            out.append('    .align 2,0')
            i += 1
            continue
        
        # Handle BYTE ... ;POIN ... ;POIN ... lines
        if line.startswith('BYTE'):
            # Parse bytes
            byte_match = re.search(r'BYTE\s+([^;]+)', line)
            if byte_match:
                bytes_data = parse_bytestring(byte_match.group(1))
                for b in bytes_data:
                    out.append(f'    .byte 0x{b:02x}')
            
            # Parse POIN labels
            poins = parse_poins(line)
            for poin in poins:
                out.append(f'    .word _{poin}')
            
            i += 1
            continue
        
        # Handle standalone POIN
        if line.startswith('POIN'):
            poins = parse_poins(line)
            for poin in poins:
                out.append(f'    .word _{poin}')
            i += 1
            continue

        # Other lines -> comment
        if line and not line.startswith('_'):
            out.append(f'    @ {line}')
        
        i += 1
    
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(out))
    
    print(f'Done: {output_file}')
    print(f'Warning: .incbin files may not exist - use skip_incbin=True to comment them out')

if __name__ == '__main__':
    input_file = sys.argv[1] if len(sys.argv) > 1 else 'AllInstrument.event'
    output_file = sys.argv[2] if len(sys.argv) > 2 else 'AllInstrument.s'
    skip = '--skip-incbin' in sys.argv
    
    convert_to_asm(input_file, output_file, skip_incbin=skip)
