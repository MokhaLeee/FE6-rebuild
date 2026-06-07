#!/bin/python3
# decoded data ---> parsed string

def parse_string_direct(u16_data):
    output = ""
    if u16_data == 0:
        return "\\x00"

    data_hi = (u16_data >> 8) & 0xFF
    data_lo = u16_data & 0xFF

    # little eddin!
    output = output + f"[0x{data_lo:02X}]"
    if data_hi != 0:
        output = output + f"[0x{data_hi:02X}]"

    return output

def parse_string_face_id(u16_data):
    if u16_data == 0xFFFF:
        return "[FID_Active]"
    else:
        fid = u16_data & 0xFF
        return f"[FID_0x{fid:02X}]"

def parse_string_core(data, cur_idx):

    appr_len = 0

    u16_data = data[cur_idx]

    if u16_data == 0:
        output = "[X]"
    elif u16_data == 1:
        output = "[LF]\n"   # replace of [NL]
    elif u16_data == 2:
        output = "[CR]"     # replace of [NL2]
    elif u16_data == 3:
        output = "[A]"
    elif u16_data == 4:
        output = "[....]"
    elif u16_data == 5:
        output = "[.....]"
    elif u16_data == 6:
        output = "[......]"
    elif u16_data == 7:
        output = "[.......]"
    elif u16_data == 8:
        output = "[OpenFarLeft]"
    elif u16_data == 9:
        output = "[OpenMidLeft]"
    elif u16_data == 10:
        output = "[OpenLeft]"
    elif u16_data == 11:
        output = "[OpenRight]"
    elif u16_data == 12:
        output = "[OpenMidRight]"
    elif u16_data == 13:
        output = "[OpenFarRight]"
    elif u16_data == 14:
        output = "[OpenFarFarLeft]"
    elif u16_data == 15:
        output = "[OpenFarFarRight]"
    elif u16_data == 16:
        output = "[LoadFace]" 
        # output = output + parse_string_direct(data[cur_idx + 1])
        output = output + parse_string_face_id(data[cur_idx + 1])
        appr_len = 1
    elif u16_data == 17:
        output = "[ClearFace]"
    elif u16_data == 18:
        output = "[NormalPrint]"
    elif u16_data == 19:
        output = "[FastPrint]"
    elif u16_data == 20:
        output = "[CloseSpeechFast]"
    elif u16_data == 21:
        output = "[CloseSpeechSlow]"
    elif u16_data == 22:
        output = "[ToggleMouthMove]"
    elif u16_data == 23:
        output = "[ToggleSmile]"
    elif u16_data == 24:
        output = "[Yes]"
    elif u16_data == 25:
        output = "[No]"
    elif u16_data == 26:
        output = "[BuySell]"
    elif u16_data == 27:
        output = "[ShopContinue]"
    elif u16_data == 28:
        output = "[SendToBack]"
    # elif u16_data == 29:
        # output = "[FastPrint]" # fe8 only
    elif u16_data == 31:
        output = "[.]"
    elif u16_data == 0x7F:
        output = "[DashedLine]"
    elif u16_data == 0xE9:
        output = "[AccentedE]"
    elif u16_data == 0x80: # face ctrl
        appr_len = 1
        ctrl = data[cur_idx + 1]
        if ctrl == 0 or ctrl == 1 or ctrl == 2 or ctrl == 3 or ctrl == 4 or ctrl == 7 or ctrl == 8 or ctrl == 9:
            output = f"[Unused800{ctrl}]"
        if ctrl == 4:
            output = "[LoadOverworldFaces]"
        elif ctrl == 5:
            output = "[G]"
        elif ctrl == 6:
            output = "[Unknown8006]"
        elif ctrl == 0xA:
            output = "[MoveFarLeft]"
        elif ctrl == 0xB:
            output = "[MoveMidLeft]"
        elif ctrl == 0xC:
            output = "[MoveLeft]"
        elif ctrl == 0xD:
            output = "[MoveRight]"
        elif ctrl == 0xE:
            output = "[MoveMidRight]"
        elif ctrl == 0xF:
            output = "[MoveFarRight]"
        elif ctrl == 0x10:
            output = "[MoveFarFarLeft]"
        elif ctrl == 0x11:
            output = "[MoveFarFarRight]"
        else:
            output = "f[!!ERROR:0x{ctrl:02X}]"
    elif u16_data == 0x4081:
        output = "[TAB]"
    elif u16_data == 0xE3:
        output = "\\xE3"
    else:
        output = parse_string_direct(u16_data)

    return appr_len, output

JIS2ASCII_DICT = {
    # 数字 0-9
    0x82D8: '0',   0x82DB: '1',   0x829F: '2',   0x82A1: '3',
    0x82A3: '4',   0x82A5: '5',   0x82A7: '6',   0x82C1: '7',
    0x82E1: '8',   0x82E3: '9',

    # 大写字母 A-Z
    0x82A0: 'A',   0x82A2: 'B',   0x82A4: 'C',   0x82A6: 'D',
    0x82A8: 'E',   0x82A9: 'F',   0x82AB: 'G',   0x82AD: 'H',
    0x82AF: 'I',   0x82B1: 'J',   0x82B3: 'K',   0x82B5: 'L',
    0x82B7: 'M',   0x82B9: 'N',   0x82BB: 'O',   0x82BD: 'P',
    0x82BF: 'Q',   0x82C2: 'R',   0x82C4: 'S',   0x82C6: 'T',
    0x82C8: 'U',   0x82C9: 'V',   0x82CA: 'W',   0x82CB: 'X',
    0x82CC: 'Y',   0x82CD: 'Z',

    # 小写字母 a-z
    0x82D0: 'a',   0x82D3: 'b',   0x82D6: 'c',   0x82D9: 'd',
    0x82DC: 'e',   0x82DD: 'f',   0x82DE: 'g',   0x82DF: 'h',
    0x82E0: 'i',   0x82E2: 'j',   0x82E4: 'k',   0x82E6: 'l',
    0x82E7: 'm',   0x82E8: 'n',   0x82E9: 'o',   0x82EA: 'p',
    0x82EB: 'q',   0x82ED: 'r',   0x82EC: 's',   0x82EE: 't',
    0x82AA: 'u',   0x82AC: 'v',   0x82AE: 'w',   0x82B0: 'x',
    0x82B2: 'y',   0x82B4: 'z',
    # 注意：s 和 t 有重复映射，这里保留最后出现的值

    # 空格
    0x8180: ' ',   0x82B6: ' ',   0x82B8: ' ',

    # 标点符号和特殊字符
    0x82BA: '!',   0x82BC: '"',   0x82BE: '#',   0x82C0: '$',
    0x82C3: '%',   0x82C5: '&',   0x82C7: "'",   0x82CE: '(',
    0x82D1: ')',   0x82CF: '-',   0x82D2: '.',   0x82D4: '*',
    0x82D5: '/',   0x82D7: '+',   0x82DA: ',',   0x82E5: ':',
    0x8343: '<',   0x8345: '=',   0x8347: '>',   0x8349: '?',
    0x834A: '@',   0x834C: '[',   0x834E: '\\',  0x8350: ']',
    0x8352: '^',   0x8354: '_',   0x8356: "'",   0x8358: '{',
    0x835A: '|',   0x835C: '}',   0x835E: '~',

    # 其他（原表中未分类的）
    0x82F0: 's',   0x82F1: 't',
}

def parse_string(decoded_data):
    parsed_string = ""
    idx = 0
    while True:
        if idx >= len(decoded_data):
            break

        cur = idx
        idx = idx + 1

        data_cur = decoded_data[cur]

        data_hi = (data_cur >> 8) & 0xFF
        data_lo = data_cur & 0xFF
        data_hb = (data_lo << 8) | data_hi

        decoded_ascii = False
        try:
            decoded_ch = JIS2ASCII_DICT[data_hb]
            decoded_ascii = True
            decoded = False
        except KeyError:
            try:
                decoded_ch = data_cur.to_bytes(2, byteorder='little').decode('cp932', errors='strict')
                decoded = True
            except UnicodeDecodeError:
                decoded = False
                decoded_ascii = False

        if decoded_ascii:
            parsed_string = parsed_string + decoded_ch
        elif decoded and decoded_ch.isprintable():
            decoded_ch = "{" + f"{data_cur:02X}" + "}"
            parsed_string = parsed_string + decoded_ch
        else:
            appr_len, this_string = parse_string_core(decoded_data, cur)

            parsed_string = parsed_string + this_string
            idx = idx + appr_len

    return parsed_string
    # just for test
    # return [f"0x{_data:04X}" for _data in decoded_data]
