@echo off
title 🛡️ Activating Anti-Sleep Mode...

:: === Turn off hibernation (disables hiberfil.sys and deep sleep)
echo 🔧 Turning off hibernation...
powercfg -h off

:: === Disable all timeouts when plugged in (AC mode)
echo 🔧 Setting AC (plugged-in) timeout values...
powercfg -change -standby-timeout-ac 0
powercfg -change -monitor-timeout-ac 0
powercfg -change -disk-timeout-ac 0

:: === Disable all timeouts when on battery (DC mode)
echo 🔧 Setting DC (battery) timeout values...
powercfg -change -standby-timeout-dc 0
powercfg -change -monitor-timeout-dc 0
powercfg -change -disk-timeout-dc 0

:: === Set active power plan to "Balanced"
echo 🔧 Setting active power plan to Balanced...
powercfg /setactive SCHEME_BALANCED

:: === Disable power saving for all network adapters (prevents VPN disconnects)
echo 🔧 Disabling power saving on all network adapters...
for /f "tokens=*" %%n in ('wmic nic get name ^| findstr /v /i "Name"') do (
    for /f "tokens=*" %%p in ('wmic path win32_networkadapter where "Name='%%n'" get DeviceID ^| findstr /r "[0-9]"') do (
        powercfg -devicedisablewake "%%n" >nul 2>&1
    )
)

:: === Done!
echo ✅ Done! Your PC will never sleep, hibernate, or disconnect again.
pause
