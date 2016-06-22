--ESP8266 NodeMCU
--Get time from RTC

TIME_ZONE = 3

sec = rtctime.get() + (TIME_ZONE * 3600)

HH = sec % 86400 / 3600
MM = sec % 3600 / 60
SS = sec % 60

--Return time as HH:MM:SS
return(string.format("%02u:%02u:%02u",HH,MM,SS))
