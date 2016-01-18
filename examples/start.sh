pd -jack -send "startup port 7000, name matrix, sends 7001 7002 7003 7004 7005 7006 7007" matrix.pd &

pd -jack -send "startup port 7001, name time1, period 2000, pl 0" zz-orgscore.pd &
pd -jack -send "startup port 7007, name time4, period 2000, pl 0, listen time1" zz-orgscore.pd &
pd -jack -send "startup port 7002, name sf1, listen time4, sf bassdrum.wav" sf-orgscore.pd &
pd -jack -send "startup port 7003, name time2, period 2000, pl 0 0.25 0.5 0.75, listen time1" zz-orgscore.pd &
pd -jack -send "startup port 7004, name sf2, listen time2, sf hihat.wav" sf-orgscore.pd &
pd -jack -send "startup port 7005, name time3, period 2000, pl 0.5, listen time1" zz-orgscore.pd &
pd -jack -send "startup port 7006, name sf3, listen time3, sf snare.wav" sf-orgscore.pd &