;----- orchestra ---- - - -  -   -     -        -
; dSP @ tonmaschine DE                           
; 2015 Dec                                       

  sr        =  48000
  ksmps     =  10
  nchnls    =  2
  0dbfs     =  1

            massign   1, "MIDIsine"

  giTuning  ftgen     0, 0, 64, -2, \
                     12, 2, 261.659, 60, \
                     1.000, 1.059, 1.122, 1.189, 1.260, 1.335, \
                     1.414, 1.498, 1.588, 1.682, 1.782, 1.888, 2.000

  gaOutSend init      0

    opcode zz, a, k
            setksmps  1
  ktime     xin       
  kpos      init      0

            loop:
if (kpos == 0.2) then
            prints    "bang"
endif
            loop_lt   kpos, (1/(ktime  * sr)), 1, loop

  aout      init      0
            xout      aout

    endop


    instr +MainOut
            out       gaOutSend
            clear     gaOutSend
    endin

  ;   instr basic_sound
       
  ; icps      =  cpspch    ( p4 )
  ; iamp      =  .3  
  ;           print     icps
  ; asig      poscil    iamp, icps
  ; gaOutSend =  asig
  ;   endin

    instr MIDIsine
       
  icps      cpstmid   giTuning
  iamp      veloc     0, 1
            print     icps
  asig      poscil    iamp, icps
  gaOutSend =  asig
    endin