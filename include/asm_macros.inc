    .macro function name
    .align 2, 0
    .global \name
    .type \name , function
    .endm

    .macro endfunction name
    .size \name , . - \name
    .endm

    .macro thumb_function name
    function \name
    .thumb
    .thumb_func
    .endm

    .MACRO ARM_FUNC_START name
    .ALIGN 2, 0
    .GLOBAL \name
    .ARM
    .TYPE \name, function
    .ENDM

    .MACRO ARM_FUNC_END name
    .SIZE \name, .-\name
    .ENDM

    .set NULL, 0

    .MACRO THUMB_FUNC_START name
    .ALIGN 2, 0
    .GLOBAL \name
    .THUMB
    .THUMB_FUNC
    .TYPE \name, function
    .ENDM

    .MACRO THUMB_FUNC_END name
    .SIZE \name, .-\name
    .ENDM

    @ Generates a glue function to be used when calling
    @ the specified ARM function from THUMB code.
    .MACRO THUMB_INTERWORK_VENEER name
    .SECTION .glue_7t
    .GLOBAL \name\()_t
    .THUMB
    .ALIGN 2, 0
    \name\()_t:
    bx pc
    nop
    .ARM
    b \name
    .SECTION .text
    .ENDM
