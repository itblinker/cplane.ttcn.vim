"{{{ autotag
function cplane#AutoTagON()
    call cplane#cpp#events#AutoTagON()
    call cplane#sct#events#AutoTagON()
endfunction


function cplane#AutoTagOFF()
    call cplane#cpp#events#AutoTagOFF()
    call cplane#sct#events#AutoTagOFF()
endfunction
"}}}


function cplane#UpSack()
    execute 'Start! -wait=''error'' make upSack'
endfunction


"{{{ retag
function cplane#Retag()
    let l:filetype = &filetype

    if(filetype ==# 'cpp')
        call cplane#cpp#tags#Update()
        return

    elseif (l:filetype == 'ttcn')
        call cplane#sct#tags#Update()
        return

    else
        execute 'echo ''retag cannot be performed outside from cpp/ttcn files'''
    endif
endfunction
"}}}
