datasg segment
tem db 6,7 dup  (0)
i dw 0
return dw 0
datasg ends
codesg segment
assume cs:codesg,ds:datasg
start:
MOV AX,datasg
MOV DS,AX
mov ax,4c00h; int 21h的4ch号中断，安全退出程序。
int 21h;调用系统中断
codesg ends
end start
