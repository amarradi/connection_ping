# connection_ping
Connection_ping sends simple pings to the domain or IP you pass in the first parameter. The result, whether positive or negative, is stored in the file that you pass in the second parameter. The number of pings you want to send is specified in the third parameter. Then Connection_ping waits ten seconds and repeats the whole process.
## parameter

*first Commandline-paramater is the domain or IP which you want to ping

*second Commandline-parameter is the filename for the output

*third Commandline-parameter is the number of pings that you want to send

## example

sh connection_ping google.com result.txt 1

## exit

Strg+C