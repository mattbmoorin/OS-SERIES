section .multiboot_header
header_start:
  ; magic number
  dd 0xe85250d6 ; multiboot2 specification
  ; architecture
  dd 0 ; protected mode i386 (info about the OS)
  ; header length
  dd header_end - header_start ; size of the header
  ; checksum
  dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start)) ; subtract sum of all data in header to get checksum
; end tag
dw 0
dw 0
dd 8
header_end: