@echo off
color A
set load=10
set/a loadnum=10
mode con: cols=110 lines=30

:Loading
set load1=%load1%/\/\/\
set load2=%load2%\/\/\/
cls
echo                    +------------------------+                 
echo                   /          Optimus         \                
echo  +-----------------------------------------------------------+
echo  /                                                           \
echo  \                      STARTING OPTIMUS                     /
echo  /                                                           \
echo  \            remember to start it as administrator          /
echo  /                                                           \
echo  \             remember to create a restore point            /
echo  /                                                           \
echo  \     remember to restart in order to apply the changes     /
echo  /                                                           \
echo  \                  Loading... Please Wait...                /
echo  /                                                           \
echo  +-----------------------------------------------------------+
echo                   \         starting         /                
echo                    +------------------------+    
echo  %loadnum%
echo  +-----------------------------------------------------------+
echo  %load1%
echo  %load2%                                          
echo  +-----------------------------------------------------------+
timeout 1 > nul     
set/a loadnum=%loadnum% +100

if %loadnum%==110 goto Done

goto Loading
:Done
    color 3
    mode con: cols=65 lines=20
    goto gamingMenu

set startDir=%cd%

IF %PROCESSOR_ARCHITECTURE% EQU amd64 (
>nul 2>&1 %SYSTEMROOT%\SysWOW64\cacls.exe %SYSTEMROOT%\SysWOW64\config\system
) ELSE (
>nul 2>&1 %SYSTEMROOT%\system32\cacls.exe %SYSTEMROOT%\system32\config\system
)
goto gamingMenu
mode con: cols=65 lines=20

:startMenu
    exit

:gamingMenu
    cls
    echo                    +------------------------+                 
    echo                   /          Optimus         \                
    echo  +-----------------------------------------------------------+
    echo  /                                                           \
    echo  \         [ 0 ] cleaner               [ 1 ] Windows         /
    echo  /                                                           \
    echo  \         [ 2 ] regedit               [ 3 ] Storage         /
    echo  /                                                           \
    echo  \         [ 4 ] Services              [ 5 ] Mouse / key     /
    echo  /                                                           \
    echo  \         [ 6 ] Nvidia                [ 7 ] network         /
    echo  /                                                           \
    echo  \         [ 8 ] BCDedit               [ 9 ] Power Plan      /
    echo  /                                                           \
    echo  \                       [ x ] Go back                       /
    echo  /                                                           \
    echo  +-----------------------------------------------------------+
    echo                   \          Gaming          /                
    echo                    +------------------------+                 
    set /p input=: 
    if /i %input% == 0 goto cmdsGaming
    if /i %input% == 1 goto winGaming
    if /i %input% == 2 goto regeditsGaming
    if /i %input% == 3 goto storageGaming
    if /i %input% == 4 goto servicesGaming
    if /i %input% == 5 goto mousekeybordGaming
    if /i %input% == 6 goto nvidiaGaming
    if /i %input% == 7 goto networkGaming
    if /i %input% == 8 goto bcdeditGaming
    if /i %input% == 9 goto PowerGaming
    if /i %input% == x goto startMenu
    )ELSE (
    goto MisspellGamingMenu
    
    :MisspellgamingMenu
        cls
        echo Misspell Detected!
        timeout 1 > nul
        goto GamingMenu

    :PowerGaming
        cls
        powershell $actual = pwd | findstr OPTIMUS
        powershell powercfg -import "$actual\Unixcorn.pow"
        echo [ + ] imported power plan ...
        echo [ + ] remember to activate it 
        timeout 3 > nul
        cls
        echo apply !
        timeout 1 > nul
        goto GamingMenu

    :bcdeditGaming
        goto BCDeditGamingMenu
        :BCDeditGamingMenu
            cls
            echo                    +------------------------+                 
            echo                   /          Optimus         \                
            echo  +-----------------------------------------------------------+
            echo  /                                                           \
            echo  \         [ 0 ] reset                 [ 1 ] recomended      /
            echo  /                                                           \
            echo  \         [ 2 ] Legacy Boot           [ 3 ] Standard Boot   /
            echo  /                                                           \
            echo  \                       [ x ] Go back                       /
            echo  /                                                           \
            echo  +-----------------------------------------------------------+
            echo                   \     Gaming / BCDedit     /                
            echo                    +------------------------+  
            set /p input=Option: 
            if /i %input% == 0 goto resetBCDeditGaming
            if /i %input% == 1 goto recomendedBCDeditGaming
            if /i %input% == 2 goto LegacyBCDeditGaming
            if /i %input% == 3 goto StandardBCDeditGaming
            if /i %input% == x goto gamingMenu
            ) ELSE (
            goto MisspellBCDeditGamingMenu
            
            :MisspellBCDeditGamingMenu
                cls
                echo Misspell Detected!
                timeout 1 > nul
                goto BCDeditGamingMenu
            
            :resetBCDeditGaming
                cls
                echo Resetting BCDedits...
                bcdedit /deletevalue useplatformtick >nul 2>&1
                bcdedit /deletevalue nx >nul 2>&1
                bcdedit /deletevalue linearaddress57 >nul 2>&1
                bcdedit /deletevalue increaseuserva >nul 2>&1
                bcdedit /deletevalue firstmegabytepolicy >nul 2>&1
                bcdedit /deletevalue avoidlowmemory >nul 2>&1
                bcdedit /deletevalue nolowmem >nul 2>&1
                bcdedit /deletevalue allowedinmemorysettings >nul 2>&1
                bcdedit /deletevalue x2apicpolicy >nul 2>&1
                bcdedit /deletevalue configaccesspolicy >nul 2>&1
                bcdedit /deletevalue MSI Default >nul 2>&1
                bcdedit /deletevalue usephysicaldestination >nul 2>&1
                bcdedit /deletevalue usefirmwarepcisettings >nul 2>&1
                bcdedit /deletevalue useplatformclock >nul 2>&1
                bcdedit /deletevalue disabledynamictick >nul 2>&1
                bcdedit /deletevalue vsmlaunchtype >nul 2>&1
                bcdedit /deletevalue vm >nul 2>&1
                cls
                goto BCDeditGamingMenu
            
            :recomendedBCDeditGaming
                cls
                echo Applying Recommended BCDedits...
                bcdedit /set x2apicpolicy enable >nul 2>&1
                bcdedit /set disabledynamictick yes >nul 2>&1
                bcdedit /deletevalue useplatformclock >nul 2>&1
                bcdedit /set useplatformtick yes >nul 2>&1
                cls
                goto BCDeditGamingMenu
            
            :LegacyBCDeditGaming
                cls
                echo Applying Legacy Boot menu.
                timeout 1 > nul
                cls
                echo Applying Legacy Boot menu..
                timeout 1 > nul
                cls
                echo Applying Legacy Boot menu...
                timeout 1 > nul
                bcdedit /set {default} bootmenupolicy legacy >nul 2>&1
                cls
                goto BCDeditGamingMenu
            
            :StandardBCDeditGaming
                cls
                cls
                echo Applying Standard Boot menu.
                timeout 1 > nul
                cls
                echo Applying Standard Boot menu..
                timeout 1 > nul
                cls
                echo Applying Standard Boot menu...
                timeout 1 > nul
                bcdedit /set {default} bootmenupolicy standard >nul 2>&1
                cls
                goto BCDeditGamingMenu
        
    :networkGaming
        :networkGamingMenu
        cls
        echo                    +------------------------+                 
        echo                   /          Optimus         \                
        echo  +-----------------------------------------------------------+
        echo  /                                                           \
        echo  \         [ 0 ] Optimize                 [ 1 ] default      /
        echo  /                                                           \
        echo  \         [ 2 ] disable Wifi             [ 3 ] enable Wifi  /
        echo  /                                                           \
        echo  \                       [ x ] Go back                       /
        echo  /                                                           \
        echo  +-----------------------------------------------------------+
        echo                   \     Gaming / network     /                
        echo                    +------------------------+  
        set /p input=Option: 
        if /i %input% == 0 goto OptimizenetworkGaming
        if /i %input% == 1 goto defaultnetworkGaming
        if /i %input% == 2 goto disablenetworkGaming
        if /i %input% == 3 goto enablenetworkGaming
        if /i %input% == x goto gamingMenu
        ) ELSE (
        goto MisspellnetworkGamingMenu
        
        :MisspellnetworkGamingMenu
            cls
            echo Misspell Detected!
            timeout 1 > nul
            goto networkGamingMenu
        
        :OptimizenetworkGaming
            cls
            echo Applying Network Tweaks...
            ipconfig /flushdns >nul 2>&1
            netsh int tcp set heuristics disabled >nul 2>&1
            netsh int tcp set global chimney=disabled >nul 2>&1
            netsh int tcp set global dca=enabled >nul 2>&1
            netsh int tcp set global netdma=enabled >nul 2>&1
            netsh int tcp set global rss=enabled >nul 2>&1
            netsh int tcp set global rsc=disabled >nul 2>&1
            netsh int tcp set global ecncapability=disabled >nul 2>&1
            netsh int tcp set global timestamps=disabled >nul 2>&1
            netsh int tcp set global initialRto=3000 >nul 2>&1
            powershell -Command "Set-NetOffloadGlobalSetting -PacketCoalescingFilter disabled" >nul 2>&1
            powershell -Command "Disable-NetAdapterChecksumOffload -Name * -IpIPv4 -TcpIPv4 -TcpIPv6 -UdpIPv4 -UdpIPv6" >nul 2>&1
            reg add "HKLM\SYSTEM\CurrentControlSet\Services\nsi" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider /v LocalPriority /t REG_DWORD /d 4 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider /v HostPriority /t REG_DWORD /d 5 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider /v DnsPriority /t REG_DWORD /d 6 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider /v NetbtPriority /t REG_DWORD /d 7 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v MaxUserPort /t REG_DWORD /d 65534 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v GlobalMaxTcpWindowSize /t REG_DWORD /d 256960 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v TcpTimedWaitDelay /t REG_DWORD /d 30 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v EnableWsd /t REG_DWORD /d 0 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v Tcp1323Opts /t REG_DWORD /d 1 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v TcpMaxDupAcks /t REG_DWORD /d 2 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v TcpWindowSize /t REG_DWORD /d 256960 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v DefaultTTL /t REG_DWORD /d 64 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v DisableTaskOffload /t REG_DWORD /d 0 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v DisableDynamicDiscovery /t REG_DWORD /d 0 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v EnablePMTUDiscovery /t REG_DWORD /d 1 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v EnablePMTUBDetect /t REG_DWORD /d 0 /f >nul 2>&1
            reg add HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters /v SackOpts /t REG_DWORD /d 1 /f >nul 2>&1
            reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v MaxConnectionsPerServer /t REG_DWORD /d 8 /f >nul 2>&1
            reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v MaxConnectionsPer1_0Server /t REG_DWORD /d 8 /f >nul 2>&1
            reg add "HKU\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v MaxConnectionsPerServer /t REG_DWORD /d 8 /f >nul 2>&1
            reg add "HKU\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v MaxConnectionsPer1_0Server /t REG_DWORD /d 8 /f >nul 2>&1
            reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dhcp" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
            reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched /v TimerResolution /t REG_DWORD /d 1 /f >nul 2>&1
            reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched /v NonBestEffortLimit /t REG_DWORD /d 0 /f >nul 2>&1
            reg add HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched /v MaxOutstandingSends /t REG_DWORD /d 0 /f >nul 2>&1
            reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\NDIS\Parameters" /v TrackNblOwner /t REG_DWORD /d 00000000 /f >nul 2>&1
            cls
            echo apply !
            timeout 1 > nul
            echo Network Tweaks applied!
            goto networkGamingMenu
        
        :defaultnetworkGaming
            cls
            ipconfig /flushdns >nul 2>&1
            netsh int ipv4 reset >nul 2>&1
            netsh int ipv6 reset >nul 2>&1
            netsh winsock reset >nul 2>&1
            cls
            echo Network Settings reset!
            goto networkGamingMenu
        
        :disablenetworkGaming
            goto networkGamingMenu
            cls
            sc stop WlanSvc >nul 2>&1
            sc config WlanSvc start=disabled >nul 2>&1
            cls
            echo Wifi Disabled!
        
        :enablenetworkGaming
            cls
            sc config WlanSvc start=auto >nul 2>&1
            sc start WlanSvc >nul 2>&1
            cls
            echo Wifi Enabled!
            timeout 3 > nul
            goto networkGamingMenu


    :nvidiaGaming
        cls
        echo Applying Nvidia Tweaks...
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnablePreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >nul 2>&1	
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "ComputePreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnablePreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "ComputePreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnablePreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ComputePreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "ComputePreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcWatchdogProfileOffset" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableAutoBoost" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcTimeout" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ThreadDpcEnable" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DpcWatchdogPeriod" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfCalculateActualUtilization" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm\Parameters" /v "AcpiFirmwareWatchDog" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm\Parameters" /v "AmliWatchdogAction" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm\Parameters" /v "AmliWatchdogTimeout" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm\Parameters" /v "WatchdogTimeout" /t REG_DWORD /d "1" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Throttle" /v "PerfEnablePackageIdle" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "AllowPepPerfStates" /t REG_DWORD /d "0" /f >nul 2>&1
        Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Processor" /v "CPPCEnable" /t REG_DWORD /d "0" /f >nul 2>&1
        cls
        echo apply !
        timeout 1 > nul
        goto gamingMenu

    :mousekeybordGaming
        :mousekeybordGamingMenu
        cls
        echo                    +------------------------+                 
        echo                   /          Optimus         \                
        echo  +-----------------------------------------------------------+
        echo  /                                                           \
        echo  \         [ 0 ] More settings            [ 1 ] balanced     /
        echo  /                                                           \
        echo  \                       [ x ] Go back                       /
        echo  /                                                           \
        echo  +-----------------------------------------------------------+
        echo                   \   Gaming / Mouse + key   /                
        echo                    +------------------------+  
        set /p input=Option: 
        if /i %input% == 0 goto moreSettingsmousekeybordGaming
        if /i %input% == 1 goto balancedmousekeybordGaming
        if /i %input% == x goto gamingMenu
        ) ELSE (
        goto MisspellmousekeybordGamingMenu
        
        :MisspellmousekeybordGamingMenu
            cls
            echo Misspell Detected!
            timeout 1 > nul
            goto mousekeybordGamingMenu

        :balancedmousekeybordGaming
            @echo off
            reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v CpuPriorityClass /t Reg_DWORD /d "4" /f
            reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v IoPriority /t Reg_DWORD /d "3" /f
            reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f
            reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f
            reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f
            reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_DWORD /d "0" /f
            reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_DWORD /d "0" /f
            reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_DWORD /d "0" /f
            reg add "HKEY_CURRENT_USER\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_DWORD /d "0" /f
            reg add "HKLM\SYSTEM\CurrentControlSet\services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "20" /f 
            reg add "HKLM\SYSTEM\CurrentControlSet\services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "20" /f
            reg add "HKU\!USER_SID!\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000c0cc0c0000000000809919000000000040662600000000000033330000000000" /f
            reg add "HKU\!USER_SID!\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000000038000000000000007000000000000000a800000000000000e00000000000" /f
            cls
            echo apply !
            timeout 1 > nul
            goto mousekeybordGamingMenu
        :moreSettingsmousekeybordGaming
            :moreSettingsmousekeybordGamingMenu
                cls
                echo                    +------------------------+                 
                echo                   /          Optimus         \                
                echo  +-----------------------------------------------------------+
                echo  /                                                           \
                echo  \         [ 0 ] + imput / - fps   [ 1 ] - imput / + fps     /
                echo  /                                                           \
                echo  \                       [ 2 ] default                       /
                echo  /                                                           \
                echo  \                       [ x ] Go back                       /
                echo  /                                                           \
                echo  +-----------------------------------------------------------+
                echo                   \    Mouse + key / more    /                
                echo                    +------------------------+  
                set /p input=Option: 
                if /i %input% == 0 goto bimputwfpsGaming
                if /i %input% == 1 goto wimputbfpsGaming
                if /i %input% == 2 goto defwbGaming
                if /i %input% == x goto mousekeybordGamingMenu
                ) ELSE (
                goto MisspellmousekeybordGamingMenu
                
                :MisspellmousekeybordGamingMenu
                    cls
                    echo Misspell Detected!
                    timeout 1 > nul
                    goto moreSettingsmousekeybordGamingMenu
                
                :bimputwfpsGaming
                    cls
                    bcdedit /set tscsyncpolicy legacy
                    cls
                    echo apply !
                    timeout 1 > nul
                    goto moreSettingsmousekeybordGamingMenu

                :wimputbfpsGaming
                    cls
                    bcdedit /set tscsyncpolicy enhanced
                    cls
                    echo apply !
                    timeout 1 > nul
                    goto moreSettingsmousekeybordGamingMenu

                :defwbGaming
                    cls
                    bcdedit /deletevalue tscsyncpolicy
                    cls
                    echo apply !
                    timeout 1 > nul
                    goto moreSettingsmousekeybordGamingMenu


    :servicesGaming
        color C
        cls 
        echo                    +------------------------+                 
        echo                   /          Optimus         \                
        echo  +-----------------------------------------------------------+
        echo  /                                                           \
        echo  \      This program can only deactivate this processes.     /
        echo  /                                                           \
        echo  \            Make sure that you know what you're            /
        echo  /                                                           \
        echo  \                  doing before proceeding.                 /
        echo  /                                                           \
        echo  \             You can't go back once it's done.             /
        echo  /                                                           \
        echo  \             (Examples Geolocation, Superfetch)            /
        echo  /                                                           \
        echo  \               [ Press any key to continue ]               /
        echo  /                                                           \
        echo  +-----------------------------------------------------------+
        echo                   \      Windows / Apps      /                
        echo                    +------------------------+  
        timeout 10 > nul
        color 3
        cls
        :servicesGamingMenu
            cls
            echo                    +------------------------+                 
            echo                   /          Optimus         \                
            echo  +-----------------------------------------------------------+
            echo  /                                                           \
            echo  \         [ 0 ] search               [ 1 ] Bluetooth        /
            echo  /                                                           \
            echo  \         [ 2 ] Printer / Fax        [ 3 ] Remote Desktop   /
            echo  /                                                           \
            echo  \         [ 4 ] Telemetry            [ 5 ] Geolocation      /
            echo  /                                                           \
            echo  \         [ 6 ] Maps                 [ 7 ] Superfetch       /
            echo  /                                                           \
            echo  \         [ 8 ] Wallet               [ 9 ] Hyper-V          /
            echo  /                                                           \
            echo  \                       [ x ] Go back                       /
            echo  /                                                           \
            echo  +-----------------------------------------------------------+
            echo                   \     Gaming / services    /                
            echo                    +------------------------+     
            set /p input=: 
            if /i %input% == 0 goto servicesGamingSearch
            if /i %input% == 1 goto servicesGamingBluetooth
            if /i %input% == 2 goto servicesGamingprinter
            if /i %input% == 3 goto servicesGamingRemote
            if /i %input% == 4 goto servicesGamingTelemetry
            if /i %input% == 5 goto servicesGamingGeolocation
            if /i %input% == 6 goto servicesGamingMaps
            if /i %input% == 7 goto servicesGamingSuperfetch
            if /i %input% == 8 goto servicesGamingWallet
            if /i %input% == 9 goto servicesGamingHyper
            if /i %input% == x goto gamingMenu
            )ELSE (
            goto MisspellGamingServicesMenu
            :MisspellGamingServicesMenu
            cls
            echo Misspell Detected!
            timeout 1 > nul
            goto servicesGamingMenu
            
            :servicesGamingSearch
                cls
                sc stop "WSearch"
                sc config "WSearch" start=disabled
                cls
                echo apply !
                timeout 1 > nul
                goto servicesGamingMenu

            :servicesGamingBluetooth
                cls
                echo Credit to JSN for sending me this.
                timeout 2 > nul
                cls
                sc stop "bthserv"
                sc config "bthHFSrv" start=disabled
                reg add "HKLM\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
                reg add "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
                reg add "HKLM\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
                reg add "HKLM\SYSTEM\CurrentControlSet\Services\NaturalAuthentication" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
                reg add "HKLM\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
                cls
                echo apply !
                timeout 1 > nul
                goto servicesGamingMenu

            :servicesGamingprinter
                cls
                sc stop "Spooler"
                sc config "Spooler" start=disabled
                sc stop "Fax"
                sc config "Fax" start=disabled
                cls
                echo apply !
                timeout 1 > nul
                goto servicesGamingMenu

            :servicesGamingRemot
                cls
                sc stop "SessionEnv"
                sc config "SessionEnv" start=disabled
                sc stop "TermService"
                sc config "TermService" start=disabled
                cls
                echo apply !
                timeout 1 > nul
                goto servicesGamingMenu

            :servicesGamingTelemetry
                cls
                sc stop "DiagTrack"
                sc config "DiagTrack" start=disabled
                sc stop "dmwappushservice"
                sc config "dmwappushservice" start=disabled
                reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
                cls
                echo apply !
                timeout 1 > nul
                goto servicesGamingMenu

            :servicesGamingGeolocation
                cls
                sc stop "ifsvc"
                sc config "ifsvc" start=disabled
                cls
                echo apply !
                timeout 1 > nul
                goto servicesGamingMenu
            
            :servicesGamingMaps
                cls
                sc stop "MapsBroker"
                sc config "MapsBroker" start=disabled
                cls
                echo apply !
                timeout 1 > nul
                goto servicesGamingMenu

            :servicesGamingSuperfetch
                cls
                sc stop "Sysmain"
                sc config "Sysmain" start=disabled
                cls
                echo apply !
                timeout 1 > nul
                goto servicesGamingMenu
            
            :servicesGamingWallet
                cls
                sc stop "WalletService"
                sc config "WalletService" start=disabled
                cls
                echo apply !
                timeout 1 > nul
                goto servicesGamingMenu
            
            :servicesGamingHyper
                cls
                sc stop "vmickvpexchange"
                sc config "vmickvpexchange" start=disabled
                sc stop "vmicguestinterface"
                sc config "vmicguestinterface" start=disabled
                sc stop "vmicshutdown"
                sc config "vmicshutdown" start=disabled
                sc stop "vmicheartbeat"
                sc config "vmicheartbeat" start=disabled
                sc stop "vmicvmsession"
                sc config "vmicvmsession" start=disabled
                sc stop "vmicrdv"
                sc config "vmicrdv" start=disabled
                sc stop "vmictimesync"
                sc config "vmictimesync" start=disabled
                sc stop "vmicvss"
                sc config "vmicvss" start=disabled
                cls
                echo apply !
                timeout 1 > nul
                goto servicesGamingMenu
                    
    :storageGaming
        @echo off               
        :WindowsStorageGamingMenu
        cls
        echo                    +------------------------+                 
        echo                   /          Optimus         \                
        echo  +-----------------------------------------------------------+
        echo  /                                                           \
        echo  \         [ 0 ] HDD                      [ 1 ] SSD          /
        echo  /                                                           \
        echo  \                       [ x ] Go back                       /
        echo  /                                                           \
        echo  +-----------------------------------------------------------+
        echo                   \     Gaming / storage     /                
        echo                    +------------------------+  
        set /p input=Option: 
        if /i %input% == 0 goto HDD
        if /i %input% == 1 goto SSD
        if /i %input% == x goto gamingMenu
        ) ELSE (
        goto MisspellWindowsStorageGamingMenu
        
        :MisspellWindowsStorageGamingMenu
            cls
            echo Misspell Detected!
            timeout 1 > nul
            goto WindowsStorageGamingMenu

        :HDD
            cls
            fsutil behavior set disable8dot3 1
            fsutil behavior set disablelastaccess 1
            fsutil behavior set disabledeletenotify 0
            cls
            echo apply !
            timeout 1 > nul
            goto WindowsStorageGamingMenu

        :SSD
            cls
            fsutil behavior set disable8dot3 1
            fsutil behavior set disableLastAccess 0
            reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f
            reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f
            cls
            echo apply !
            timeout 1 > nul
            goto WindowsStorageGamingMenu

    :cmdsGaming
        rem 1
        @echo off
        RD /S /Q %temp%
        MKDIR %temp%
        takeown /f "%temp%" /r /d y
        takeown /f "C:\Windows\Temp" /r /d y
        RD /S /Q C:\Windows\Temp
        MKDIR C:\Windows\Temp
        takeown /f "C:\Windows\Temp" /r /d y
        takeown /f %temp% /r /d y
        rem 2
        cd/
        del *.log /a /s /q /f
        rem 3 
        net stop wuauserv
        net stop UsoSvc
        rd /s /q C:\Windows\SoftwareDistribution
        md C:\Windows\SoftwareDistribution
        del  /q/f/s  %temp%\*
        cd/
        @echo
        del *.log /a /s /q /f
        sc stop "wuauserv"
        sc stop "UsoSvc"
        rd /s /q C:\Windows\SoftwareDistribution
        md C:\Windows\SoftwareDistribution
        ipconfig /flushdns
        del C:\Windows\prefetch\*.*/s/q
        cls
        echo apply !
        timeout 1 > nul     
        goto gamingMenu 

    :regeditsGaming
        cls
        echo applying regedit ...
        rem .reg
        rem Windows
        C:\Windows\regedit.exe /s .\optimus.reg      
        rem Gamer
        C:\Windows\regedit.exe /s .\optimusgame.reg
        cls
        echo apply !
        timeout 1 > nul                
        goto gamingMenu 

    :winGaming
        :winGamingMenu
        cls
        echo                    +------------------------+                 
        echo                   /          Optimus         \                
        echo  +-----------------------------------------------------------+
        echo  /                                                           \
        echo  \         [ 0 ] Remove apps           [ 1 ] cortana         /
        echo  /                                                           \
        echo  \         [ 2 ] regedit               [ 3 ] CPU use         /
        echo  /                                                           \
        echo  \         [ 4 ] coming soon           [ 5 ] coming soon     /
        echo  /                                                           \
        echo  \         [ 6 ] coming soon           [ 7 ] coming soon     /
        echo  /                                                           \
        echo  \         [ 8 ] coming soon           [ 9 ] coming soon     /
        echo  /                                                           \
        echo  \                       [ x ] Go back                       /
        echo  /                                                           \
        echo  +-----------------------------------------------------------+
        echo                   \     Gaming / Windows     /                
        echo                    +------------------------+                 
        set /p input=: 
        if /i %input% == 0 goto removeAppsGamingWindows
        if /i %input% == 1 goto unistallCortanaGamingWindows 
        if /i %input% == 2 goto regeditGamingWindows 
        if /i %input% == 3 goto cpuUseGamingWindows 
        if /i %input% == x goto gamingMenu
        )ELSE (
        goto MisspellWindowsGamingMenu
    
        :MisspellWindowsGamingMenu
            cls
            echo Misspell Detected!
            timeout 1 > nul
            goto winGamingMenu
        
        :cpuUseGamingWindows
            cls
            powershell -Command Set-MpPreference -ScanAvgCPULoadFactor 5
            powershell -Command gpupdate /force
            timeout 1 > nul
            goto winGamingMenu

        :regeditGamingWindows
            reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f
            reg add "HKCU\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f
            reg dd "HKCU\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d "0" /f
            reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f
            reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f
            reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f
            reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d "1" /f
            reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
            reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
            reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f
            reg add "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f
            reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d "0" /f
            reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\EventTranscriptKey" /v "EnableEventTranscript" /t REG_DWORD /d "0" /f
            reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f
            reg add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f
            reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f
            reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f
            reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f
            reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d "0" /f
            reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f
            reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f
            reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f
            reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f
            cls
            echo apply !
            timeout 1 > nul  
            goto winGamingMenu

        :unistallCortanaGamingWindows
            cls
            @echo off
            Powershell -Command "Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage"
            reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCortanaButton" /t REG_DWORD /d "0" /f
            cls
            echo apply !
            timeout 1 > nul  
            goto winGamingMenu
    
        :removeAppsGamingWindows               
            :winAppsGamingMenu
                cls
                echo                    +------------------------+                 
                echo                   /          Optimus         \                
                echo  +-----------------------------------------------------------+
                echo  /                                                           \
                echo  \         [ 0 ] Alarm + Clock         [ 1 ] 3D Viewer       /
                echo  /                                                           \
                echo  \         [ 2 ] Feedback              [ 3 ] Phone           /
                echo  /                                                           \
                echo  \         [ 4 ] Films                 [ 5 ] Camera          /
                echo  /                                                           \
                echo  \         [ 6 ] Grove Music           [ 7 ] help            /
                echo  /                                                           \
                echo  \         [ 8 ] Solitare              [ 9 ] Mail            /
                echo  /                                                           \
                echo  \         [ 10 ] MixedReality         [ 11 ] Maps           /
                echo  /                                                           \
                echo  \         [ 12 ] 3D Paint             [ 13 ] People         /
                echo  /                                                           \
                echo  \         [ 14 ] Skype                [ 15 ] Sticky         /
                echo  /                                                           \
                echo  \         [ 16 ] Voice recorder       [ 17 ] Weather        /
                echo  /                                                           \
                echo  \                       [ x ] Go back                       /
                echo  /                                                           \
                echo  +-----------------------------------------------------------+
                echo                   \      Windows / Apps      /                
                echo                    +------------------------+                 
                set /p input=: 
                if /i %input% == 0 goto alamsApps 
                if /i %input% == 1 goto viewerApps 
                if /i %input% == 2 goto feedbackApps 
                if /i %input% == 3 goto phoneApps  
                if /i %input% == 4 goto filmsApps  
                if /i %input% == 5 goto cameraApps  
                if /i %input% == 6 goto groveApps  
                if /i %input% == 7 goto helpApps  
                if /i %input% == 8 goto solitareApps
                if /i %input% == 9 goto mailApps  
                if /i %input% == 10 goto mixedApps 
                if /i %input% == 11 goto mapsApps  
                if /i %input% == 12 goto paint3dApps  
                if /i %input% == 13 goto peopleApps  
                if /i %input% == 14 goto skypeApps  
                if /i %input% == 15 goto stickyApps  
                if /i %input% == 16 goto recorderApps  
                if /i %input% == 17 goto weatherApps

                if /i %input% == x goto winGaming
                )ELSE (
                goto MisspellwinAppsGamingMenu
            
                :MisspellwinAppsGamingMenu
                    cls
                    echo Misspell Detected!
                    timeout 1 > nul
                    goto winAppsGamingMenu
                
                :alamsApps
                    cls 
                    Powershell -Command "Get-AppxPackage *alarms* | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :viewerApps
                    cls 
                    Powershell -Command "Get-AppxPackage Microsoft.Microsoft3DViewer | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :feedbackApps
                    cls 
                    Powershell -Command "Get-AppxPackage Microsoft.WindowsFeedbackHub | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :phoneApps
                    cls 
                    Powershell -Command "Get-AppxPackage -allusers Microsoft.YourPhone* | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :filmsApps
                    cls 
                    Powershell -Command "Get-AppxPackage Microsoft.ZuneVideo | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :cameraApps
                    cls 
                    Powershell -Command "Get-AppxPackage *camera* | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :groveApps
                    cls 
                    Powershell -Command "Get-AppxPackage *zunemusic* | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :helpApps
                    cls 
                    Powershell -Command "Get-AppxPackage *Microsoft.GetHelp* -AllUsers | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :solitareApps
                    cls 
                    Powershell -Command "Get-AppxPackage *solitairecollection* | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu


                :mailApps
                    cls 
                    Powershell -Command "Get-AppxPackage *communications* | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :mixedApps
                    cls 
                    Powershell -Command "Get-AppxPackage Microsoft.MixedReality.Portal | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :mapsApps
                    cls 
                    Powershell -Command "Get-AppxPackage *maps* | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :paint3dApps
                    cls 
                    Powershell -Command "Get-AppxPackage Microsoft.MSPaint | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :peopleApps
                    cls 
                    Powershell -Command "Get-AppxPackage people | Remove-AppxPackage" 
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :skypeApps
                    cls 
                    Powershell -Command "Get-AppxPackage Microsoft.SkypeApp | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :stickyApps
                    cls 
                    Powershell -Command "Get-AppxPackage Microsoft.MicrosoftStickyNotes | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :recorderApps
                    cls 
                    Powershell -Command "Get-AppxPackage *soundrecorder* | Remove-AppxPackage" 
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu

                :weatherApps
                    cls 
                    Powershell -Command "Get-AppxPackage *bingweather* | Remove-AppxPackage"
                    cls
                    echo apply !
                    timeout 1 > nul  
                    goto winAppsGamingMenu
)