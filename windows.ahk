; !   Alt
; ^   Ctrl
; >^  Right Ctrl
; +   Shift
; #   windowsKey(start)

; auto hot key Reload
#z::Reload,

; emacs keybinds(Right Ctrl)
>^b::Send, {Left}
>^f::Send, {Right}
>^n::Send, {Down}
>^p::Send, {Up}
>^e::Send, {End}
>^a::Send, {Home}
>^h::Send, {Backspace}
>^d::Send, {Delete}
>^k::Send, {Shift down}{End}{Shift up}{Backspace}
; NOTE: Disabled for Eclipse shortcut
; !>^e::Send, ^{End} ;vscode
; !>^a::Send, ^{Home} ;vscode

; Shift + emacs keybinds
+>^b::Send, +{Left}
+>^f::Send, +{Right}
+>^n::Send, +{Down}
+>^p::Send, +{Up}
+>^e::Send, +{End}
+>^a::Send, +{Home}

; windows + ctrl + n or p for vscode
; NOTE: mac Cmd >^n, p =: down, up
#>^n::send, !{Down}
#>^p::send, !{Up}
+#>^n::send, +!{Down}
+#>^p::send, +!{Up}

; Left Ctrl -> Alt(mac Cmd)
<!a::Send, ^a
<!n::Send, ^n
<!s::Send, ^s
; Windows Terminal Exception (alt + c = copy, alt + v = peast)
#IfWinNotActive ahk_class CASCADIA_HOSTING_WINDOW_CLASS
<!v::Send, ^v
<!c::Send, ^c
#If
<!x::Send, ^x
<!z::Send, ^z
<!k::Send, ^k  ; vscode
<!/::Send, ^/  ; vscode
<!,::Send, ^,  ; vscode
<!d::Send, ^d  ; vscode
<!f::Send, ^f  ; vscode
<!r::Send, ^r  ; chrome refresh
<!p::Send, ^p  ; vscode [serch file]
<!l::Send, ^l  ; chrome adressbar shortcut
<!g::Send, ^g  ; vscode [junp]
<!t::Send, ^t  ; vscode
<!e::Send, ^e  ; vscode [serch file by name]
<!b::Send, ^b  ; vscode [side bar toggle]
<!w::Send, ^w  ; vscode
<!1::Send, ^1 ; chrome tab
<!2::Send, ^2 ; chrome tab
<!3::Send, ^3 ; chrome tab
<!4::Send, ^4 ; chrome tab
<!5::Send, ^5 ; chrome tab
<!6::Send, ^6 ; chrome tab
<!7::Send, ^7 ; chrome tab
<!8::Send, ^8 ; chrome tab
<!9::Send, ^9 ; chrome tab
<!q::Send, !{F4} ; quit window

; Ctrl + Shift -> Alt + Shift(mac Cmd)
+<!p::Send, +^p  ; vscode
+<!f::Send, +^f  ; vscode
+<!o::Send, +^o  ; vscode
+<!a::Send, +^a  ; vscode
+<!e::Send, +^e  ; vscode
+<!m::Send, +^m  ; vscode
+<!@::Send, +^@  ; vscode
+<!c::Send, +^c  ; slack

; Right Ctrl -> ignore
; >^v::Return,
; >^s::Return,
; >^w::Return,


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; windows hotkey setting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; windows terminal hotkey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Right Ctrl + Alt + i
!>^i::ToggleTerminal()

ToggleTerminal()
{
  if !WinActive(WinMatcher) {
    WinActivate ahk_class CASCADIA_HOSTING_WINDOW_CLASS
  }
}


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; google chrome hotkey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Right Ctrl + Alt + g
!>^g::ToggleChrome()

ToggleChrome()
{
  if !WinActive(WinMatcher) {
    WinActivate,ahk_exe chrome.exe
  }
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; vscode hotkey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Right Ctrl + Alt + v
!>^v::ToggleVscode()

ToggleVscode()
{
  if !WinActive(WinMatcher) {
    WinActivate,ahk_exe code.exe
  }
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; eclipse hotkey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Right Ctrl + Alt + e
!>^e::ToggleEclipse()

ToggleEclipse()
{
  if !WinActive(WinMatcher) {
    WinActivate,ahk_exe eclipse.exe
  }
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; A5MK2 hotkey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Right Ctrl + Alt + a
!>^a::ToggleA5()

ToggleA5()
{
  if !WinActive(WinMatcher) {
    WinActivate,ahk_exe A5M2.exe
  }
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Slack hotkey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Right Ctrl + Alt + s
!>^s::ToggleSlack()

ToggleSlack()
{
  if !WinActive(WinMatcher) {
    WinActivate,ahk_exe Slack.exe
  }
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Notion hotkey
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Right Ctrl + Alt + n
!>^n::ToggleNotion()

ToggleNotion()
{
  if !WinActive(WinMatcher) {
    WinActivate,ahk_exe Notion.exe
  }
}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; windows terminal hotkey(hide & run)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ShowAndPositionTerminal()
; {
;   WinShow ahk_class CASCADIA_HOSTING_WINDOW_CLASS
;   WinActivate ahk_class CASCADIA_HOSTING_WINDOW_CLASS

  ; SysGet, WorkArea, MonitorWorkArea
  ; ; NOTE: not using it now
  ; ; Setting width & height
  ; ; TerminalWidth := A_ScreenWidth * 0.9
  ; ; if (A_ScreenWidth / A_ScreenHeight) > 1.5 {
  ; ;     TerminalWidth := A_ScreenWidth * 0.6
  ; ; }

  ; ; when taskbar left
  ; WinMove, ahk_class CASCADIA_HOSTING_WINDOW_CLASS,, WorkAreaTop + 65, WorkAreaTop + 5, A_ScreenWidth * 0.965, A_ScreenHeight,
; }

; ToggleTerminal()
; {
;   WinMatcher := "ahk_class CASCADIA_HOSTING_WINDOW_CLASS"

;   DetectHiddenWindows, On

;   if WinExist(WinMatcher)
;   ; Window Exists
;   {
;     DetectHiddenWindows, Off

;     ; Check if its hidden
;     if !WinExist(WinMatcher) || !WinActive(WinMatcher)
;     {
;       ShowAndPositionTerminal()
;     }
;     else if WinExist(WinMatcher)
;     {
;       ; Script sees it without detecting hidden windows, so..
;       WinHide ahk_class CASCADIA_HOSTING_WINDOW_CLASS
;       Send !{Esc}
;     }
;   }
  ; else
  ; {
  ;   Run "c:\Users\{UserPath}\AppData\Local\Microsoft\WindowsApps\wt.exe"
  ;   Sleep, 1000
  ;   ShowAndPositionTerminal()
  ; }
; }
