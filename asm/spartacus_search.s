# Spartacus Search in x86-64 Linux assembly (GAS, AT&T).
# Prints each byte '1'..'5' of the hardcoded haystack on its own line.
# Assemble: as -o sss.o spartacus_search.s && ld -o sss sss.o

.section .data
haystack: .ascii "12345"
len = . - haystack
newline: .ascii "\n"

.section .text
.global _start
_start:
    mov $0, %rbx              # index
loop:
    cmp $len, %rbx
    jge done
    mov $1, %rax              # sys_write
    mov $1, %rdi              # stdout
    lea haystack(%rbx), %rsi
    mov $1, %rdx
    syscall
    mov $1, %rax
    mov $1, %rdi
    lea newline(%rip), %rsi
    mov $1, %rdx
    syscall
    inc %rbx
    jmp loop
done:
    mov $60, %rax             # sys_exit
    xor %rdi, %rdi
    syscall
