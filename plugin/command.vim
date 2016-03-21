"{{{ source guard
let [s:plugin, s:enter] = maktaba#plugin#Enter(expand('<sfile>:p'))
if !s:enter
    finish
endif
"}}}

command -nargs=1 CplaneMakeForBothFsmr : call cplane#cpp#make#MakeForBothFsmr(<f-args>)

command CplaneAutoTagON  : call cplane#AutoTagON()
command CplaneAutoTagOFF : call cplane#AutoTagOFF()

command -nargs=* -complete=file  CplaneCodeRFGrepFromPath : call cplane#cpp#fgrep#from(<f-args>)
command -nargs=* -complete=file  CplaneSctRFGrepFromPath  : call cplane#sct#fgrep#from(<f-args>)

command CplaneEchoSctRunnerKeptData : call cplane#sct#testcase#EchoParametersForKeptTestcase()
