    processor 6502

    seg code
    org $F000       ; Define the code origin at $F000

Start:
    sei             ; Disable interrupts
    cld             ; Disable the BCD decimal math mode
    ldx #$FF        ; Loads the X registere with #$FF
    txs             ; Transfer the X register to the (S)tack pointer register

; Clear the Page Zero Region ($00 to $FF)
; Meaning the entire RAM and also TIA registers. 