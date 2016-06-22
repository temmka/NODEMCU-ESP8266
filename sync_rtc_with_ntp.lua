--ESP8266 NodeMCU
--Sync RTC with NTP server 

NTP_SERVER_IP = '62.149.0.30'

sntp.sync(NTP_SERVER_IP , sync_ok, sync_fail) 

--Action for succes synchronization
function sync_ok(sec,usec,server)     
    rtctime.set(sec, usec)          --Set rtc time  
    print('ntp sync ok ',sec, usec)
end

--Action for fail synchronization
function sync_fail()                                  
   print('NTP sync failed!')
end
