@echo off
chcp 65001

title Test

cls

set /a tries=3
set pass=1

:top
echo.
echo ------------------------------------
echo.
echo            Введите пароль
echo.
echo [r] - Запуск RealTemp
echo [q] - Выход
echo ------------------------------------
echo.
echo У вас осталось %tries% попытки!
echo.
echo Введите пароль:

set /p pass=
if %pass%==1 (
    goto correct
)

if %pass%==q (
    goto exit
)

if %pass%==r (
    goto startrt
)

set /a tries=%tries%-1
if %tries%==0 (
    goto out
)


cls

goto top

:correct
cls
color e
echo.
echo ------------------------------------
echo.
echo Поздравляем! Пароль введен верно, запуск программ
echo.
echo ------------------------------------
echo.
pause

:startrt
cls
echo.
echo Запуск RealTemp
echo.
start /d "G:\Portable\System monitoring\RealTemp\" RealTempGT.exe
echo.
echo Завершено.
pause

:exit
cls
echo.
echo Вы нажали на выход
echo.
pause


:out
echo.
echo Вы ввели пароль неверно, осталось %tries% попыток!
echo.
echo Выход из программы . . .
echo.
pause
exit