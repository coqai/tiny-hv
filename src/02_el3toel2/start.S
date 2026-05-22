.section .text
.global _start

_start:
    mrs x0, CurrentEL
    lsr x0, x0, #2

    cmp x0, #3
    b.eq from_el3

    cmp x0, #2
    b.eq from_el2

    b .

from_el3:
    /*
     * SCR_EL3:
     * NS=1   (non-secure)
     * RW=1   (AArch64 lower EL)
     */
    mov x1, #(1 << 10)
    orr x1, x1, #1
    msr scr_el3, x1

    /*
     * return to EL2h
     */
    mov x1, #0x3c9
    msr spsr_el3, x1

    ldr x1, =from_el2
    msr elr_el3, x1

    eret


from_el2:
    ldr x0, =stack_top
    mov sp, x0

    bl hv_init

1:
    wfe
    b 1b
