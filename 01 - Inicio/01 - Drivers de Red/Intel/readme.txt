Intel(R) Network Connections Software Version 27.0 Release Notes
=======================================================================
February 2, 2022

This release includes software and drivers for Intel(R) Ethernet adapters and 
integrated network connections.


Contents
========

- What's New in This Release
- Operating System Support
- Discontinued Support
- User Guides
- Intel Fiber Optic Connections
- Installing Drivers and Intel(R) PROSet
- Saving and Restoring Adapter Settings in Microsoft Windows* operating systems
- Configuring SR-IOV for improved network security
- Power Management and System Wake
- RDMA (Remote Direct Memory Access) Notes
- Device Notes
- Notes for Microsoft Operating Systems
- Teaming Notes
- Known Issues
- Customer Support


What's New in This Release
==========================

- Microsoft* Windows Server* 2022 support for devices based on the following 
controllers:
   * Intel(R) Ethernet Controller X552
   * Intel(R) Ethernet Controller X553


Operating System Support
========================

Supported operating systems
---------------------------
The drivers in this release have been tested with the following operating 
systems. Additional OSs may function with our drivers but are not tested.
- Microsoft* Windows Server* 2022 
- Microsoft Windows Server, version 2004
- Microsoft Windows Server 2019, Version 1903
- Microsoft Windows Server 2019
- Microsoft Windows Server 2016
- Microsoft Windows Server 2012 R2
- Microsoft Windows Server 2012
- Microsoft* Windows* 10 21H2
- Microsoft Windows 10, version 2004
- Microsoft Windows 10, Version 1809
- Microsoft Windows 8.1
- Microsoft Azure Stack HCI
- VMWare* ESXi* 7.0
- VMWare ESXi 6.7
- VMWare ESXi 6.5
- VMWare ESXi 6.0
- Linux*, v2.4 kernel or higher
- Red Hat* Enterprise Linux* (RHEL) 8.5 (supported only on Intel Ethernet 800 
Series devices) 
- Red Hat Enterprise Linux 8.4 (all other devices)
- Red Hat Enterprise Linux 7.9
- SUSE* Linux Enterprise Server (SLES) 15 SP3
- SUSE Linux Enterprise Server 12 SP5
- Canonical* Ubuntu* 20.04 LTS 
- Canonical Ubuntu 18.04 LTS
- FreeBSD* 13.0 
- FreeBSD 12.2

Compatibility Notes
-------------------
- Before performing a major OS upgrade, Intel recommends that you uninstall the 
Intel PROSet(R) feature, perform the OS upgrade, and then reinstall with the 
latest version of Intel PROSet. This will ensure all features are available and 
avoid potential issues.

- Microsoft Windows Server 2012 R2 is the last Windows Server operating system 
version that supports Intel(R) Advanced Networking Services (Intel ANS).

- Intel 10GbE Ethernet Adapters do not support Microsoft Windows 32-bit 
operating systems. They support 32-bit versions of Linux and FreeBSD.

- Even though the UEFI driver states that it supports "Intel(R) 40GbE" devices, 
the driver supports all devices based on the Intel(R) X722, XXV710, X710, and 
XL710 controllers, regardless of speed.

Drivers and software for unsupported operating systems
------------------------------------------------------
The most recent software and drivers for unsupported operating systems can be 
found on the Intel Customer Support website at
http://www.intel.com/support/go/network/adapter/home.htm

Some older Intel(R) Ethernet Adapters do not have full software support for the 
most recent versions of Microsoft Windows. Many older Intel Ethernet Adapters 
have base drivers supplied by Microsoft Windows. Lists of supported devices per 
OS are available at:
http://www.intel.com/support/go/network/adapter/nicoscomp.htm


Discontinued Support
====================
Release 26.7 is the last release that supports Intel(R) Ethernet Network 
Adapter E810-XXV-2 for OCP 2.0. 

Release 26.4 is the last release that supports the following:
- SUSE Linux Enterprise Server 11. 
- Canonical Ubuntu 16.04 
- The Microsoft Windows e1q driver and devices. These drivers will no longer be 
tested or updated. The drivers may still be provided in your download package 
or on your install media for your convenience. This affects devices based on 
the following:
  - Intel(R) 82574L Gigabit Network Connection
  - Intel(R) Gigabit ET2 Quad Port Server Adapter
  - Intel(R) 82575EB Gigabit Backplane Connection
  - Intel(R) 82575EB Gigabit Network Connection
  - Intel(R) 82576 Gigabit Dual Port Network Connection
  - Intel(R) 82576 Gigabit Dual Port Server Network Connection
  - Intel(R) 82576NS Gigabit Ethernet Controller
  - Intel(R) 82576NS SerDes Gigabit Ethernet Controller
  - Intel(R) 82583V Gigabit Network Connection
  - Intel(R) Gigabit CT Desktop Adapter
  - Intel(R) Gigabit CT2 Desktop Adapter
  - Intel(R) Gigabit EF Dual Port Server Adapter
  - Intel(R) Gigabit ET Dual Port Network Connection
  - Intel(R) Gigabit ET Dual Port Server Adapter
  - Intel(R) Gigabit ET Quad Port Mezzanine Card
  - Intel(R) Gigabit ET Quad Port Server Adapter
  - Intel(R) Gigabit VT Quad Port Server Adapter

Starting with Release 26.4, the following adapters and devices will no longer 
be tested or updated. The drivers may still be provided in your download 
package or on your install media for your convenience.
- Intel(R) Ethernet Controller X540-AT2
- Intel(R) Ethernet Controller X540-AT1
- Intel(R) Ethernet Converged Network Adapter X540-T2
- Intel(R) Ethernet Converged Network Adapter X540-T1
- Intel(R) X540 Virtual Function

Release 26.3 is the last release that supports the following:
- Microsoft Windows 10, Version 1803
- Microsoft Windows 10, Version 1903
- Red Hat* Enterprise Linux* (RHEL) 6.x
- The FreeBSD em driver. Maintenance for this driver will be continued by the 
community. 

Release 25.2 is the last release that supports the following:
- DOS tools and diagnostics.
- The 32-bit Microsoft Windows 10 e1d driver. 64-bit Microsoft Windows 10 is 
still supported.
   This affects devices based on the following controllers:
  - Intel(R) Ethernet Connection I217-LM
  - Intel(R) Ethernet Connection I217-V
  - Intel(R) Ethernet Connection I218-LM
  - Intel(R) Ethernet Connection I218-V
  - Intel(R) Ethernet Connection I219-LM
  - Intel(R) Ethernet Connection I219-V
- The Linux e1000e driver. Maintenance for this driver will be continued by the 
community.

Release 25.0 is the last release to support:
- Microsoft* Windows* 7
- Microsoft* Windows Server* 2008 R2
- Intel(R) QSFP+ Configuration Utility (QCU)
- IOUtil

Release 24.4 removed the following from the installation package:
- Support for PRO/100 devices
- DOS drivers
- UEFI driver support for PCI/PCI-X devices
- Support for WinCE
- Microsoft* Windows* 10 RS3 (NDIS65) Universal Drivers. Please use the NDIS68 
drivers.
- Support for FCoE

Starting with Release 23.5, the drivers for the following adapters and devices 
will no longer be tested or updated. The drivers may still be provided in your 
download package or on your install media for your convenience.
- Intel(R) 82566MM Gigabit Network Connection
- Intel(R) PRO/1000 PB Dual Port Server Connection
- Intel(R) PRO/1000 EB Network Connection with I/O Acceleration
- Intel(R) PRO/1000 EB1 Network Connection with I/O Acceleration
- Intel(R) PRO/1000 EB Backplane Connection with I/O Acceleration
- Intel(R) 82567V-3 Gigabit Network Connection
- Intel(R) 82567V-4 Gigabit Network Connection
- Intel(R) 82567LM-4 Gigabit Network Connection
- Intel(R) 82567LF Gigabit Network Connection
- Intel(R) 82567V Gigabit Network Connection
- Intel(R) 82567LM-2 Gigabit Network Connection
- Intel(R) 82567LF-2 Gigabit Network Connection
- Intel(R) 82567V-2 Gigabit Network Connection
- Intel(R) 82567LM-3 Gigabit Network Connection
- Intel(R) 82567LF-3 Gigabit Network Connection
- Intel(R) 82577LM Gigabit Network Connection
- Intel(R) 82577LC Gigabit Network Connection
- Intel(R) 82578DM Gigabit Network Connection
- Intel(R) 82578DC Gigabit Network Connection
- Intel(R) 82567LM Gigabit Network Connection
- Intel(R) 82566DM Gigabit Network Connection
- Intel(R) 82566DC Gigabit Network Connection
- Intel(R) 82566MC Gigabit Network Connection
- Intel(R) PRO/1000 PT Dual Port Network Connection
- Intel(R) PRO/1000 PT Dual Port Server Adapter
- Intel(R) PRO/1000 PT Dual Port Server Connection
- Intel(R) PRO/1000 PF Dual Port Server Adapter
- Intel(R) PRO/1000 PT Network Connection
- Intel(R) PRO/1000 PT Server Adapter
- Intel(R) PRO/1000 PF Network Connection
- Intel(R) PRO/1000 PF Server Adapter
- Intel(R) PRO/1000 PB Server Connection
- Intel(R) PRO/1000 PM Network Connection
- Intel(R) PRO/1000 PL Network Connection
- Intel(R) PRO/1000 PT Quad Port Server Adapter
- Intel(R) PRO/1000 PF Quad Port Server Adapter
- Intel(R) PRO/1000 PT Desktop Adapter
- Intel(R) PRO/1000 EB1 Backplane Connection with I/O Acceleration
- Intel(R) PRO/1000 PT Quad Port LP Server Adapter
- Intel(R) 82566DM-2 Gigabit Network Connection
- Intel(R) 82562V 10/100 Network Connection
- Intel(R) 82562V-2 10/100 Network Connection
- Intel(R) 82562G-2 10/100 Network Connection
- Intel(R) 82562GT-3 10/100 Network Connection
- Intel(R) 82562GT-2 10/100 Network Connection
- Intel(R) 82562GT 10/100 Network Connection
- Intel(R) 82562G 10/100 Network Connection
- Intel(R) Gigabit PT Quad Port Server ExpressModule
- Intel(R) 82566DC-2 Gigabit Network Connection
- Intel(R) 82598EB 10 Gigabit AF Dual Port Network Connection
- Intel(R) 10 Gigabit XF SR Dual Port Server Adapter
- Intel(R) 10 Gigabit XF SR Server Adapter
- Intel(R) 82598EB 10 Gigabit AF Network Connection
- Intel(R) 10 Gigabit AT Server Adapter
- Intel(R) 82598EB 10 Gigabit AT Network Connection
- Intel(R) 10 Gigabit AT2 Server Adapter
- Intel(R) 82598EB 10 Gigabit AT2 Network Connection
- Intel(R) 82598EB 10 Gigabit AT CX4 Network Connection
- Intel(R) 10 Gigabit SR Dual Port Express Module
- Intel(R) 10 Gigabit CX4 Dual Port Server Adapter
- Intel(R) 82598EB 10 Gigabit KX4 Network Connection
- Intel(R) 10 Gigabit AF DA Dual Port Server Adapter
- Intel(R) 10 Gigabit XF LR Server Adapter
- Intel(R) 82598EB 10 Gigabit Dual Port Network Connection


User Guides
===========

Several user guides for Intel Network Connections are available for this 
product. You may access them in the following ways:
- Double-click "index.htm" located in the root of the Intel download.
- On Windows-based systems, start the autorun program on the download,
  then click "View User Guides."
- Go to http://support.intel.com.


Intel Fiber Optic Connections
=============================

Caution: The fiber optic ports may utilize Class 1 or Class 1M laser devices. 
Do not stare into the end of a fiber optic connector connected to a "live" 
system. Do not use optical instruments to view the laser output. Using optical 
instruments increases eye hazard. Laser radiation is hazardous and may cause 
eye injury. To inspect a connector, receptacle or adapter end, be sure that the 
fiber optic device or system is turned off, or the fiber cable is disconnected 
from the "live" system.

The Intel Gigabit and 10GbE network adapters with fiber optic connections 
operate only at their native speed and only at full-duplex. Therefore you do 
not need to make any adjustments. Use of controls or adjustments or performance 
of procedures other than those specified herein may result in hazardous 
radiation exposure. The laser module contains no serviceable parts.


Installing Drivers and Intel PROSet
===================================

You must have administrator rights to install or use base drivers or Intel 
PROSet. Intel recommends the following procedure for installing drivers:
1) Cancel any Found New Hardware Wizard screens that open.
2) Start the autorun located in your download directory.
3) Click "Install Drivers and Software" and follow the instructions in the
   install wizard.


Compatibility Information for Intel PROSet
------------------------------------------
- Intel(R) PROSet for Windows* Device Manager is not supported on 
Microsoft Windows Server 2019 (and later) and Microsoft Windows* 10 Version 
1809 (and later). Use Intel(R) PROSet Adapter Configuration Utility instead. 
The installer will determine which utility to install based on the operating 
system you are running.

- Microsoft Azure Stack HCI supports only Intel(R) PROSet for Windows 
PowerShell* software. 

Intel PROSet for Windows Device Manager is not supported on the
following devices
---------------------------------------------------------------
* Any platform with a System on a Chip (SoC) processor 
* Devices based on the Intel(R) Ethernet Controller X722
* Intel(R) X722 Virtual Function devices
* Intel(R) X552 10G Ethernet devices
* Intel(R) X552 Virtual Function devices
* Intel(R) X553 Ethernet devices
* Intel(R) X553 Virtual Function devices

- In some versions of Windows, Intel(R) PROSet functionality is integrated with 
the Windows Device Manager. To configure Intel(R) Ethernet Adapters and 
Controllers, open the Windows Device Manager. Do not open adapter, team, or 
VLAN properties from the network control panel as you may be prompted to reboot 
your system.

- You must upgrade Intel PROSet when upgrading drivers. Failure to do so will 
result in instability and missing tabs in Windows Device Manager.

NOTE: Support for the Intel PROSet command line utilities (prosetcl.exe and 
crashdmp.exe) has been removed. This functionality has been replaced by the 
Intel(R) PROSet for Microsoft* Windows PowerShell* software. Please transition 
all of your scripts and processes to use the Intel PROSet for Microsoft Windows 
PowerShell software. Microsoft Windows 8.1 and Windows Server 2012 R2 are the 
last operating systems to support the Intel PROSet command line utilities.

Intel PROSet fails to install
-----------------------------
A possible cause could be the Windows Modules Installer service is disabled. 
The installer for Intel PROSet requires this service. You can enable this 
service from the Administrative Tools -> Component Services control panel.


Saving and Restoring Adapter Settings in Microsoft Windows
operating systems
==========================================================

You can save and then restore adapter settings using the Microsoft Windows 
PowerShell* script, SaveRestore.ps1. You must have Administration privileges to 
run scripts. If you do not have Administration privileges, you will not receive 
an error; the script just will not run. Only adapter settings are saved 
(including ANS teaming and VLANs). The adapter's driver is not saved. Restore 
using the script only once. Restoring multiple times may result in unstable 
configuration. The Restore operation requires the same OS as when the 
configuration was saved.

NOTE: Intel PROSet must be installed for SaveRestore.ps1 to run. Also, for 
systems running a 64-bit OS, be sure to run the 64-bit version of Windows 
PowerShell, not the 32-bit (x86) version, when running the SaveRestore.ps1 
script.

NOTE: The SaveResDX.vbs script is unsupported. Please transition all of your 
scripts and processes to Microsoft Windows PowerShell.

NOTE: "Enable RDMA routing across IP Subnets" may not be automatically saved 
when you upgrade from prior versions of the Intel Network Connections software. 
You can manually override the default values within the RDMA Configurations 
Options dialog or via command line properties.

Major operating system upgrades and saving your configuration
-------------------------------------------------------------
Your network device settings, including teams and VLANs, are not saved when you 
upgrade your operating system. You must reinstall your network drivers and 
software and reconfigure your network devices. This applies for upgrading from 
one version of Microsoft Windows to another, not applying a service pack.


Configuring SR-IOV for improved network security
================================================

In a virtualized environment, on Intel(R) Ethernet Adapters that support 
SR-IOV, the virtual function (VF) may be subject to malicious behavior. 
Software-generated frames are not expected and can throttle traffic between the 
host and the virtual switch, reducing performance. To resolve this issue, 
configure all SR-IOV enabled ports for VLAN tagging. This configuration allows 
unexpected, and potentially malicious, frames to be dropped.


Power Management and System Wake
================================

Not all systems support every wake setting. There may be BIOS or Operating 
System settings that need to be enabled for your system to wake up. In 
particular, this is true for Wake from S5 (also referred to as Wake from power 
off). 

System does not wake when expected
----------------------------------
Under Microsoft Windows Server 2012, the system may not wake even though Wake 
on LAN settings are enabled. Disabling Fast Startup in the operating system 
should resolve the issue.

System does not wake on link
----------------------------
On a driver-only installation, if you change 'Wake on Link Settings' to Forced 
and change 'Wake on Magic Packet' and 'Wake on Pattern Match' to Disabled, the 
system may not wake up when expected. In order to "Wake on Link" successfully, 
check the Power Management tab and make sure that "Allow this device to wake 
the computer" is checked. You may also need to change 'Wake on Magic Packet' or 
'Wake on Pattern Match' to Enabled.

Directed Packets may not wake the system
----------------------------------------
On some systems, quad port server adapters may not wake when configured to wake 
on directed packet. If you experience problems waking on directed packets, you 
must configure the adapter to use Magic Packets*.

Power Management options are unavailable or missing 
---------------------------------------------------
If you install only the base drivers, later install Intel(R) PROSet for Windows 
Device Manager, then remove Intel PROSet, the settings on the Power Management 
tab on the Adapter Property Sheet may be unavailable or missing altogether. You 
must reinstall Intel PROSet to resolve the issue.

Low power link speed slower than expected
-----------------------------------------
If you disable the "Reduce Power During Standby" setting and remove power from 
the system, your system may link at 10Mbps when power is restored, instead of 
100Mbps or faster. The system will continue to link at 10Mbps until the 
operating system is loaded. This setting will be restored when the OS loads.

System Wakes Unexpectedly
-------------------------
On a driver only install, if you uncheck the "Allow this device to bring the 
computer out of standby" option on the Power Management tab, the adapter will 
still wake the system from Standby or Hibernate. The "Wake on Settings" option 
on the Advanced tab must also be set to Disabled.

Auto Connect Battery Saver (ACBS) enabled NICs do not power up when
connected back to back
-------------------------------------------------------------------
If you have two systems, both running on batteries and both with ACBS-enabled 
NICs that are in an ACBS state, and you connect them back to back, the NICs 
will not power up. Since both NICs are powered down, neither one can generate a 
link signal to wake the other. Either connect AC power to one system or disable 
ACBS to resolve this issue.

Auto Connect Battery Saver (ACBS) does not function
---------------------------------------------------
ACBS will not function on an adapter if the adapter has forced speed or duplex 
settings. ACBS will only function if the adapter is set to auto-detect or 
auto-negotiate.

Wake on LAN is unavailable
--------------------------
Wake on LAN is supported on port A only on the following devices:
- Intel(R) Ethernet Server Adapter I340-T4
- Intel(R) Ethernet Server Adapter I340-T2
- Intel(R) Ethernet Server Adapter I340-F4

Wake on LAN is not supported on any port of the following devices:
- Intel(R) Ethernet Network Adapter E810-2C-Q2 
- Intel(R) Ethernet Network Adapter E810-C-Q2 
- Intel(R) Ethernet Network Adapter E810-XXV-4 
- Intel(R) Ethernet Network Adapter E810-XXV-4T 
- Intel(R) Ethernet Network Adapter E810-XXV-2 
- Intel(R) Ethernet Converged Network Adapter X710
- Intel(R) Ethernet Converged Network Adapter X710-2
- Intel(R) Ethernet Converged Network Adapter X710-4
- Intel(R) Ethernet Converged Network Adapter X710-T
- Intel(R) Ethernet Converged Network Adapter X710-T4
- Intel(R) Ethernet Converged Network Adapter XL710-Q1
- Intel(R) Ethernet Converged Network Adapter XL710-Q2
- Intel(R) Ethernet Network Adapter X710-T2L
- Intel(R) Ethernet Network Adapter X710-T4L
- Intel(R) Ethernet Network Adapter X710-TL

Most Intel 10GbE Network Adapters do not support Wake on LAN on any port.

System Wakes-Up from a Removed VLAN
-----------------------------------
If a system goes into standby mode, and a directed packet is sent to the IP 
address of the removed VLAN, the system will wake-up. This occurs because a 
directed packet bypasses VLAN filtering.

Intel Network Adapters ignore consecutive Wake Up signals while
transitioning into standby mode
---------------------------------------------------------------
While sending a system into standby, occasionally a wake up packet arrives 
before the system completes the transition into standby mode. When this 
happens, the system ignores consecutive wake up signals and remains in standby 
mode until manually powered up using the mouse, keyboard, or power button.

Link flap when Energy Efficient Ethernet is enabled
---------------------------------------------------
Some switches do not support Energy Efficient Ethernet (EEE) correctly. Make 
sure your switch is loaded with the latest firmware. Disabling EEE on your 
adapter may resolve this issue.


RDMA (Remote Direct Memory Access) Notes
========================================
Intel(R) Ethernet 800 Series devices support iWARP and RoCEV2.

Intel(R) Ethernet 722 Series devices only support iWARP.

Microsoft Windows support for RoCEV2 is provided for Microsoft Windows Server 
2016, and later.

Microsoft Windows support for iWARP is provided for Microsoft Windows Server 
2012 R2, and later.

Devices based on the Intel(R) Ethernet 800 Series do not support RDMA when 
operating in multiport mode with more than 4 ports.

You can install the RDMA Windows User Mode Provider by selecting RDMA in the 
driver install wizard.


Device Notes: Intel(R) Ethernet 800 Series
==========================================

Tx hangs in some virtualized environments using LFC 
---------------------------------------------------
When link-level flow control (LFC) is enabled on a heavily utilized network 
interface, network traffic might stop due to a Tx hang event. This is caused 
when the system runs out of descriptors and can't reuse them fast enough. 
Disabling LFC or increasing the Rx descriptor ring size may help mitigate the 
issue.

RDMA (Remote Direct Memory Access)
----------------------------------
Devices based on the Intel(R) Ethernet 800 Series do not support RDMA when 
operating in multiport mode with more than 4 ports.

System may crash during high storage bandwidth tests on Microsoft Windows
Server 2019 
-------------------------------------------------------------------------
With a Storage Spaces Direct (S2D) storage cluster configuration running 
Microsoft Windows Server 2019, high storage bandwidth tests may result in a 
system crash, with bug check code 0x1E (KMODE_EXCEPTION_NOT_HANDLED) and 
smbdirect as the failed module. This is due to a known issue in the operating 
system. Customers should contact Microsoft via the appropriate support channel 
for a solution.

VMQ Support
-----------
On Intel(R) Ethernet 800 Series devices, Intel regularly tests up to 128 VMQs 
per NIC. Edge case testing shows that binding more than 512 VMQs per NIC may 
cause system instability or a system crash.

SR-IOV Support
--------------
On Intel(R) Ethernet 800 Series devices, Intel regularly tests up to 128 
Virtual Functions (VFs) per NIC. Edge case testing shows that binding more than 
128 VFs per NIC may cause system instability or a system crash.

A port in willing mode does not apply DCB settings received from the 
connected switch 
--------------------------------------------------------------------
When operating in multiport mode with more than 4 ports, Intel(R) Ethernet 800 
Series devices support a maximum of 4 traffic classes (TCs) per port. If a port 
is in willing mode and connected to a switch that advertises more than 4 TCs, 
the port will not map to the advertised TCs. Instead it will map to the 
operating system's default TC configuration (usually 1 TC).


Device Notes: Intel(R) Ethernet 700 Series
==========================================

For an Intel(R) 40GbE Network Adapter to reach its full potential, you must 
install it in a PCIe Gen3 x8 slot. Installing it in a shorter slot, or a Gen2 
or Gen1 slot, will impact the throughput the adapter can attain.

Some Intel Ethernet 710 Series devices report a subvendor ID of 0x0000 and may 
display a generic branding string. Port 0 reports the correct subvendor ID and 
displays the correct branding string.

Intel Ethernet 710 Series devices may maintain link on any and all ports as 
long as power is provided to the device, regardless of the device's or system's 
power state.

Intel Ethernet 710 Series devices do not support Microsoft Windows Server 2012 
as the SR-IOV Guest operating system or as the SR-IOV Host operating system. 
They also do not support Linux as the SR-IOV guest operating system on any 
Microsoft Windows Server Hyper-V Host.

SFP+ and QSFP+ Devices:

See the link below for information on supported media for X710/XL710/XXV710 
based devices:
  http://www.intel.com/content/dam/www/public/us/en/documents/release-notes/
  xl710-ethernet-controller-feature-matrix.pdf
NOTES:
* Some Intel branded network adapters based on the X710/XL710 controller
  only support Intel branded modules. On these adapters, other modules
  are not supported and will not function.
* For connections based on the 710 Series controller, support is dependent
  on your system board. Please see your vendor for details.
* In all cases Intel recommends using Intel optics; other modules may function
  but are not validated by Intel. Contact Intel for supported media types.
* In systems that do not have adequate airflow to cool the adapter and
  optical modules, you must use high temperature optical modules.

Intel ANS VLANs adversely affect performance
--------------------------------------------
Intel ANS VLANs adversely affect the performance of 710 Series based devices. 
Use the networking features built into Microsoft Windows Server 2012, or other 
server management software, to assign VLANs.

Traffic is not passed between Virtual NICs
------------------------------------------
SR-IOV Virtual Functions are unable to send or receive traffic between Virtual 
NICs on the same physical port or between emulated connections on a Linux 
Software bridge and connections that use SR-IOV VFs. Use an external switch 
that is 802.1Qbg (VEPA) capable to workaround this issue.


Device Notes: Intel 10GbE Network Adapters
==========================================

Release 18.7 is the last release in which Intel 10GbE Network Adapters support 
32-bit Microsoft Windows. Starting with Release 18.8, Intel 10GbE Network 
Adapters only support 64-bit operating systems.

Devices based on the Intel(R) Ethernet Connection X552 and Intel(R) Ethernet 
Connection X553 do not support the following features:
* Energy Efficient Ethernet (EEE)
* Intel PROSet for Windows Device Manager
* Intel ANS teams or VLANs (LBFO is supported)
* Data Center Bridging (DCB)
* IPSec Offloading
* MACSec Offloading
In addition, SFP+ devices based on the Intel(R) Ethernet Connection X552 and 
Intel(R) Ethernet Connection X553 do not support the following features:
* Speed and duplex auto-negotiation.
* Wake on LAN
* 1000BASE-T SFP Modules

Devices based on the Intel(R) Ethernet Controller X722 do not support the 
following features:
* Intel PROSet for Windows Device Manager
* Intel ANS teams or VLANs (LBFO is supported)

Attaching the cable to the Intel(R) 10 Gigabit AF DA Dual Port Server Adapter 
may require significant force. The cable must be latched in for proper 
operation.

When 82599-based SFP+ devices are connected back to back, they should be set to 
the same Speed/Duplex setting. Results may vary if you mix speed settings.

Some Intel(R) 10 Gigabit Network Adapters and Connections support SFP+ 
pluggable optical modules.

82599-Based Adapters
NOTES:
* If your 82599-based Intel(R) Network Adapter came with Intel SFP+ optics, or 
is an Intel(R) Ethernet Server Adapter X520 type of adapter, then it only 
supports Intel optics and/or the direct attach cables listed below.

Supplier	Type					Part Numbers
SR Modules
  Intel		DUAL RATE 1G/10G SFP+ SR (bailed)	AFBR-703SDZ-IN2
  Intel		DUAL RATE 1G/10G SFP+ SR (bailed)	FTLX8571D3BCV-IT
  Intel		DUAL RATE 1G/10G SFP+ SR (bailed)	AFBR-703SDDZ-IN1
LR Modules
  Intel		DUAL RATE 1G/10G SFP+ LR (bailed)	FTLX1471D3BCV-IT
  Intel		DUAL RATE 1G/10G SFP+ LR (bailed)	AFCT-701SDZ-IN2
  Intel		DUAL RATE 1G/10G SFP+ LR (bailed)	AFCT-701SDDZ-IN1
QSFP Modules
  Intel		TRIPLE RATE 1G/10G/40G QSFP+ SR (bailed)    E40GQSFPSR
QSFP+ 40G speed is not supported on 82599 based devices.

The following is a list of 3rd party SFP+ modules and direct attach cables that 
have received some testing. Not all modules are applicable to all devices.

Supplier	Type				Part Numbers
  Finisar	SFP+ SR bailed, 10g single rate	FTLX8571D3BCL
  Avago		SFP+ SR bailed, 10g single rate	AFBR-700SDZ
  Finisar	SFP+ LR bailed, 10g single rate	FTLX1471D3BCL

  Finisar	DUAL RATE 1G/10G SFP+ SR (No Bail)	 FTLX8571D3QCV-IT
  Avago		DUAL RATE 1G/10G SFP+ SR (No Bail)	AFBR-703SDZ-IN1
  Finisar	DUAL RATE 1G/10G SFP+ LR (No Bail)	FTLX1471D3QCV-IT
  Avago		DUAL RATE 1G/10G SFP+ LR (No Bail)	AFCT-701SDZ-IN1

  Finisar	1000BASE-T SFP				FCLF8522P2BTL
  Avago		1000BASE-T				SFP ABCU-5710RZ
  HP		1000BASE-SX				SFP 453153-001

82599-Based SFP+ adapters support all passive and active limiting direct attach 
cables that comply with SFF-8431 v4.1 and SFF-8472 v10.4 specifications.

82599-Based QSFP+ Adapters
NOTES:
* 82599-Based QSFP+ adapters do not support 1x40Gbps connections. They only
  support 4x10Gbps connections. QSFP+ link partners must be configured for
  4x10Gbps.
* 82599-Based QSFP+ adapters do not support automatic link speed detection.
  The adapter's link speed must be configured to either 10Gbps or 1Gbps to
  match the link partners speed capabilities. Incorrect speed configurations
  will result in failure to link.

The Intel(R) Ethernet Converged Network Adapter X520-Q1 only supports the 
optics and direct attach cables listed below.

Supplier	Type					Part Numbers
  Intel		DUAL RATE 1G/10G QSFP+ SR (bailed)	E40GQSFPSR

82599-Based QSFP+ adapters support all passive and active limiting QSFP+ direct 
attach cables that comply with SFF-8436_v4.1 specifications.

82598-Based Adapters
NOTES:
* Intel(R) Network Adapters that support removable optical modules
  only support their original module type (i.e., the Intel(R) 10 Gigabit
  SR Dual Port Express Module only supports SR optical modules). If you
  plug in a different type of module, the driver will not load.
* Hot Swapping/hot plugging optical modules is not supported.
* Only single speed, 10 gigabit modules are supported.
* LAN on Motherboard (LOMs) may support DA, SR, or LR modules. Other
  module types are not supported. Please see your system documentation for
  details.

The following is a list of SFP+ modules and direct attach cables that have 
received some testing. Not all modules are applicable to all devices.

Supplier	Type				Part Numbers
  Finisar	SFP+ SR bailed, 10g single rate	FTLX8571D3BCL
  Avago		SFP+ SR bailed, 10g single rate	AFBR-700SDZ
  Finisar	SFP+ LR bailed, 10g single rate	FTLX1471D3BCL

82598-Based adapters support direct attach cables that comply with SFF-8431 
v4.1 and SFF-8472 v10.4 specifications with the following exceptions:

Supplier	Type					Part Numbers
  Leoni		3 meter passive direct attach cable	747522301
  Amphenol	3 meter passive direct attach cable	571540002

*** Active direct attach cables are not supported.

THIRD PARTY OPTIC MODULES AND CABLES REFERRED TO ABOVE ARE LISTED ONLY FOR THE 
PURPOSE OF HIGHLIGHTING THIRD PARTY SPECIFICATIONS AND POTENTIAL COMPATIBILITY, 
AND ARE NOT RECOMMENDATIONS OR ENDORSEMENT OR SPONSORSHIP OF ANY THIRD PARTY'S 
PRODUCT BY INTEL. INTEL IS NOT ENDORSING OR PROMOTING PRODUCTS MADE BY ANY 
THIRD PARTY AND THE THIRD PARTY REFERENCE IS PROVIDED ONLY TO SHARE INFORMATION 
REGARDING CERTAIN OPTIC MODULES AND CABLES WITH THE ABOVE SPECIFICATIONS. THERE 
MAY BE OTHER MANUFACTURERS OR SUPPLIERS, PRODUCING OR SUPPLYING OPTIC MODULES 
AND CABLES WITH SIMILAR OR MATCHING DESCRIPTIONS. CUSTOMERS MUST USE THEIR OWN 
DISCRETION AND DILIGENCE TO PURCHASE OPTIC MODULES AND CABLES FROM ANY THIRD 
PARTY OF THEIR CHOICE. CUSTOMERS ARE SOLELY RESPONSIBLE FOR ASSESSING THE 
SUITABILITY OF THE PRODUCT AND/OR DEVICES AND FOR THE SELECTION OF THE VENDOR 
FOR PURCHASING ANY PRODUCT. THE OPTIC MODULES AND CABLES REFERRED TO ABOVE ARE 
NOT WARRANTED OR SUPPORTED BY INTEL. INTEL ASSUMES NO LIABILITY WHATSOEVER, AND 
INTEL DISCLAIMS ANY EXPRESS OR IMPLIED WARRANTY, RELATING TO SALE AND/OR USE OF 
SUCH THIRD PARTY PRODUCTS OR SELECTION OF VENDOR BY CUSTOMERS.


Device Notes: 1Gb Ethernet
==========================

System does not boot
--------------------
Your system may run out of I/O resources and fail to boot if you install more 
than four quad port server adapters. Moving the adapters to different slots or 
rebalancing resources in the system BIOS may resolve the issue.
This issue affects the following Adapters:
* Intel(R) Ethernet Server Adapter I350-T4

Jumbo Frames and Jumbo Packets
------------------------------
Jumbo Frames and MACSec are not compatible on the Intel(R) 82579LM and Intel(R) 
82579V Network Connections. If MACSec is enabled on a platform containing 
either part, you will not be able to enable Jumbo Frames on the connection.


Device Notes: Intel(R) Ethernet Desktop Adapter and Network Connection
======================================================================

The Intel(R) 82562V 10/100 Network Connection and Intel(R) 82562V 10/100 
Network Connection are supported by the gigabit drivers.

Release 20.6 is the last release in which Intel(R) Ethernet iSCSI Boot supports 
Intel(R) Ethernet Desktop Adapters and Network Connections. Starting with 
Release 20.7, Intel Ethernet iSCSI Boot no longer supports Intel Ethernet 
Desktop Adapters and Network Connections.


Notes for Microsoft Operating Systems
=====================================
Some older Intel Ethernet Adapters do not have full software support for the 
most recent versions of Microsoft Windows. Many older Intel Ethernet Adapters 
have base drivers supplied by Microsoft Windows. Lists of supported devices per 
OS are available at:
http://www.intel.com/support/go/network/adapter/nicoscomp.htm

WINDOWS 8.1 AND WINDOWS SERVER 2012 R2:

Encapsulated traffic may fail when traffic is tagged and 'Packet
Priority & VLAN' option is disabled
----------------------------------------------------------------
If the 'Packet Priority & VLAN' advanced parameter is set to "Disabled," VLAN 
tagged packets will have incomplete destination information and may be dropped 
by the physical switch. To ensure encapsulated traffic is not dropped, verify 
that the 'Packet Priority & VLAN' advanced parameter is set to "Enabled."

Virtual Machine Queues are not allocated until reboot
-----------------------------------------------------
On a Microsoft Windows Server 2012 R2 system with Intel(R) Ethernet Gigabit 
Server adapters installed, if you install Hyper-V and create a VM switch, 
Virtual Machine Queues (VMQ) are not allocated until you reboot the system. 
Virtual machines can send and receive traffic on the default queue, but no VMQs 
will be used until after a system reboot.

Link loss after changing the Jumbo Frames setting
-------------------------------------------------
Inside a guest partition on a Microsoft Windows Server 2012 R2 Hyper-V virtual 
machine, if you change the jumbo frame Advanced setting on an Intel(R) X540 
based Ethernet Device or associated Hyper-V NetAdapter, you may lose link. 
Changing any other Advanced Setting will resolve the issue.

DCB QoS and Priority Flow Control do not act as expected
--------------------------------------------------------
If you use Microsoft's Datacenter Bridging (DCB) implementation configure 
Quality of Service (QoS) and Priority Flow Control (PFC), the actual traffic 
flow segregation per traffic class may not match your configuration and PFC may 
not pause traffic as expected. If you mapped more than one priority to a 
Traffic Class, enabling only one of the priorities and disabling the others 
will work around the issue. Installing Intel's DCB implementation will also 
resolve this issue.
This issue affects Microsoft Windows Server 2012 and Server 2012 R2.


WINDOWS SERVER 2012 NOTES: 

Hot plug operations do not work as expected in the following reference designs:
Foxcove - Hot plug operations do not work.
Emerald Ridge - Hot plug operations work only if you have the latest BIOS.

In Intel(R) PROSet for Windows Device Manager, the help text may not initially 
be displayed. The text should appear after switching between tabs a few times 
in Intel(R) PROSet.


Teaming Notes
=============
Intel devices that are not supported by Intel(R) PROSet can still be added to 
teams. These devices are supported by the Multi-Vendor Teaming functionality of 
ANS teams.

Microsoft Server 2012 NIC Teaming (LBFO)
----------------------------------------
Intel(R) Advanced Network Services (ANS) teaming and VLANs are incompatible 
with Microsoft Server 2012 NIC Teaming (LBFO). Do not create an LBFO team using 
ports that are part of an ANS team or ANS VLAN.

DCB is not compatible with Microsoft Server 2012 NIC Teaming (LBFO)
-------------------------------------------------------------------
Data Center Bridging (DCB) is incompatible with Microsoft Server 2012 NIC 
Teaming (LBFO). Do not create an LBFO team using Intel 10G ports when DCB is 
installed. Do not install DCB if Intel 10G ports are part of an LBFO team. 
Install failures and persistent link loss may occur if DCB and LBFO are used on 
the same port. Installing Microsoft's Hot fix KB 2818790 will resolve the 
issue. This issue only affects Microsoft Windows Server 2012.

RLB is not supported when a team is added to a virtual NIC
----------------------------------------------------------
Virtual NICs cannot be created on a team with Receive Load Balancing enabled. 
Receive Load Balancing is automatically disabled if you create a virtual NIC on 
a team.

Team setup requirement
----------------------
Before creating a team, make sure each adapter is configured similarly. Check 
each adapter's settings in Intel PROSet. Settings to check include QoS Packet 
Tagging, Jumbo Frames, and the various offloads. If team members implement 
Advanced features differently, the team will align the settings with the least 
capable adapter.

Changing Offload Settings for an Adapter in an ANS Team
-------------------------------------------------------
When you disable an offload setting for an adapter in an ANS team, the team 
reloads and the team capabilities are recalculated. As a result, the offload 
setting is disabled for the remaining adapters in the ANS team. Intel PROSet 
does not reflect the fact that the offload setting is disabled for the 
remaining adapters in the team.
If you re-enable the offload setting for the original adapter in the team, the 
settings will not be applied until the system is rebooted or the team is 
reloaded.

IEEE 802.3ad teaming on Cisco trunks
------------------------------------
When implementing 802.3ad teams on Cisco switch ports in trunking mode, set the 
native/untagged VLAN for these ports to ID 1. Otherwise, you may experience 
traffic loss or lack of failover between aggregators. See your Cisco 
documentation for information about setting the native VLAN ID.


TEAMING KNOWN ISSUES:

Unexpected performance drop or disabled ANS team member
-------------------------------------------------------
Using non-Intel cmdlets, such as the Set-NetAdapterAdvancedProperty cmdlet 
provided in Microsoft PowerShell*, to change settings for an ANS-teamed adapter 
may cause the team to stop using that adapter to pass traffic. You may see this 
as reduced performance or the adapter being disabled in the PROSet Teaming GUI. 
You can repair the issue by changing the setting back to its previous state, or 
by removing the adapter from the ANS team and then adding it back.

Network Connections window shows the team as disabled or network
cable unplugged
----------------------------------------------------------------
After adding a VLAN to the team, this is normal. The connection protocols are 
now bound to the VLAN on the team. You can configure the connection protocols 
in the Properties for the VLAN.

Team name doesn't change in Device Manager
------------------------------------------
If you modify a team name from the team property sheet, it may take several 
minutes for the name to change in Device Manager. Closing and opening Device 
Manager will load the new name.

Removing a teamed adapter from a hot-plug system
------------------------------------------------
When you physically remove an adapter that is part of a team or a VLAN, you 
must reboot or reload the team/VLAN before using that adapter in the same 
network. This will prevent Ethernet address conflicts.

VLANs remain after team removal
-------------------------------
When you remove a team, some of the VLANs bound to that team may remain. You 
can manually remove the VLANs to correct the issue.

Changing speed and duplex of adapters in a team
-----------------------------------------------
When you add an adapter to a Link Aggregation team using Intel PROSet, make 
sure that the adapter is running at the same speed and duplex of the other 
adapters in the team.

Compatibility notes for Multi Vendor Teaming
--------------------------------------------
Attempting to hot-add a non-Intel adapter to a team may cause system 
instability. If you do hot-add a non-Intel adapter to a team, make sure you 
restart the computer or reload the team.

IEEE 802.3ad teaming with Foundry switches
------------------------------------------
Foundry switches require an even number of ports in an aggregated link. If you 
remove an adapter from an 802.3ad team connected to a Foundry switch, make sure 
you maintain an even number of adapters in the team.


Known Issues
============

Receive Error counts may be higher than the actual packet error count
---------------------------------------------------------------------
When a packet is received with more than one error, two bad packets may be 
reported. This affects all devices based on 10G, or faster, controllers.

Unexpected issues with VMs using SR-IOV in Microsoft Windows Server,
version 2004 
--------------------------------------------------------------------
Guest VMs using SR-IOV may lose connection due to a known issue in Microsoft 
Windows Server, version 2004. Microsoft plans to resolve the issue in a future 
release. SR-IOV VFs work as expected in Windows Server 2019.

Signed PowerShell cmdlets run slower than unsigned cmdlets
----------------------------------------------------------
You may experience extreme slowness with signed PowerShell* cmdlets when a 
system is connected to the network but not to the Internet. This occurs because 
the operating system cannot connect to the service that verifies the signed 
cmdlet. See the following Microsoft support article for a workaround:
https://support.microsoft.com/en-us/help/4523292/signed-powershell-cmdlets-run-s
lower-than-unsigned-cmdlets

Lower than expected receive throughput in Windows Hyper-V* guests 
-----------------------------------------------------------------
You may experience lower than expected receive throughput in Windows guest VMs 
when VMQ offload is enabled. Disabling Receive Segment Coalescing (RSC) in the 
network device's advanced settings may help resolve the issue.

Logical switch creation fails
-----------------------------
When you use Microsoft SCVMM (System Center Virtual Machine Manager) to create 
an encapsulation-enabled (VXLAN, NVGRE, etc.) logical switch, it may fail with 
error code 0x80041001. To resolve the issue, after the failure is seen, perform 
the following:
1. Disable the "Hyper-V Extensible Virtual Switch" property on the Intel 
Ethernet device.
2. Recreate the logical switch.
This affects hosts running Microsoft Windows Server 2019.

Microsoft Windows guest operating systems may not pass traffic across VLANs
---------------------------------------------------------------------------
The Virtual Function (VF) driver is not aware of the VLAN configuration if you 
use LBFO (Load Balancing and Failover) to configure VLANs in a Windows guest. 
VLANs configured using LBFO on a Virtual Function driver may result in failure 
to pass traffic.

Log link state events do not display correctly in localized Windows Server 2016
-------------------------------------------------------------------------------
In a previous version of the driver, some log link state events did not display 
correctly in some localized versions of Microsoft* Windows Server* 2016 when 
bringing link down and then back up on Intel(R) i210AT adapters. This issue has 
been corrected in the current driver version. Be sure to download and install 
the latest drivers and software from Intel.

NVM update utilities exit with error on kernel 4.16 and higher 
--------------------------------------------------------------
On Linux* kernel 4.16 and higher, the iomem parameter is set to "strict" by 
default, which prevents the NVM update utilities from accessing the MMIO on 
1GbE and 10GbE devices. Trying to update a device when "strict" is set causes 
the device to lose link during the update process. Also, if you run any of the 
NVM update utilities (NVMUpdate, NVMCheck, QCU, or Bootutil), the utility may 
exit with the error "The selected adapter (location:[Bus:Device:Function]) 
cannot be initialized due to inaccessible device memory. Update the device 
driver and reboot the system before running this utility again. Consult the 
utility documentation for more information." 

If you wish to update a device without losing link, you can either:
1. Install Linux base drivers (igb or ixgbe) from Release 24.1, or newer
2. Set the iomem kernel parameter to "relaxed" (i.e., iomem=relaxed) and reboot 
the system before running the update utility.

Incorrect branding strings
--------------------------
Devices based on the Intel(R) Ethernet Controller X550 and Intel Ethernet 
Controller X700 series may display incorrect branding strings in Windows Device 
Manager. This issue does not affect the functionality of the device. This issue 
only affects Microsoft* Windows Server* 2016.

Identify Adapter command does not blink LEDs as expected
--------------------------------------------------------
On some Intel(R) Ethernet Connections, the LEDs are connected to PHY and not to 
the MAC. The driver's Identify Adapter functionality uses the MAC register, so 
the LEDs will not blink on these devices. This affects the following devices:
*  Intel(R) Ethernet Connection X552 1000BASE-T
*  Intel(R) Ethernet Connection X552/X557-AT 10GBASE-T

Changing a VLAN ID to untagged and then reusing that VLAN ID may cause the
untagged VLAN to fail
--------------------------------------------------------------------------
On Windows 10 RS1, if you change a VLAN ID to untagged on a device or team and 
then later reuse that VLAN ID on that device or team, the untagged VLAN may 
fail to pass traffic. To resolve this issue, remove the untagged VLAN and 
recreate it.

VXN Driver Fails To Load in Windows Server VM on ESX 6.5
--------------------------------------------------------
The VXN driver may fail to load with a yellow-bang error after installation on 
a Windows Server 2016 or Windows Server 2012 R2 VM running on an ESX 6.5 host. 
To fix this, reboot the VM.

Driver Installation Hangs
-------------------------
Driver installation for devices based on the Intel Ethernet X710 and XL710 
controllers may hang. This may be because the device is connected to a switch 
that is not advertising traffic class 0. To resolve the issue, disconnect the 
device from the switch or configure the switch to advertise TC0, power cycle 
your system, then restart the driver installation. This may occur with any 
Intel Ethernet X710 or XL710 device on Microsoft Windows Server 2016.

Device Fails to Load
--------------------
Devices based on the Intel Ethernet X710, XL710, X722, and XXV710 controllers 
may fail to load with a yellow-bang error. This may be because the device is 
connected to a switch that is not advertising traffic class 0. To resolve the 
issue, disconnect the device from the switch or configure the switch to 
advertise TC0, and restart your system. This may occur with any Intel Ethernet 
X710, XL710, X722, or XXV710 device on any version of Microsoft Windows Server.

Import of IntelNetCmdlets PowerShell Module Fails When Trailing
Backslash Used
----------------------------------------------------------------
If you include a trailing backslash ("\") at the end of the Import-Module 
command, the import operation will fail (for example, "ps>import-module 
c:\<path>\IntelNetCmdlets\"). In Microsoft Windows* 10 and Windows Server* 
2016, the auto-complete function appends a trailing backslash. If you use 
auto-complete when entering the Import-Module command, delete the trailing 
backslash before pressing Return to execute the command.

Code 10 Error in Device Manager When Intel DCB Installed and RSS Queues
Changed to 16 or Greater
-----------------------------------------------------------------------
If the Intel DCB feature is installed, changing the number of Receive Side 
Scaling (RSS) queues to 16 or greater may result in a Code 10 error in Device 
Manager. To resolve this issue, reinstall the driver from the Intel 
installation media. Note that this will reset the RSS queues value to the 
default of 8. Do not change the RSS queues to 16 or greater, as doing so will 
result in another Code 10 error. Setting RSS queues to a lower value such as 1, 
2, or 4 does not cause error.

Driver Installation Issues on Microsoft* Windows* 10
----------------------------------------------------
Release 20.7 (or later) driver installs on Microsoft Windows 10 may time out or 
fail due to extended wait time (up to 4 minutes per Ethernet port). In most 
cases, despite the timeout, the driver installs correctly and is usable. If the 
driver does not install correctly, retry the installation process. Note that 
Intel(R) PROSet for Windows Device Manager relies on correctly installed 
drivers.

Lower than expected throughput on X710/XL710 based devices
----------------------------------------------------------
If you have an X710 or XL710 based device installed in a four CPU socket 
system. Receive and transmit traffic may be significantly lower than expected. 
Setting your interrupt rate to High may mitigate the issue.

Link loss after identifying the adapter
---------------------------------------
All ports on the device may lose link when you run the diagnostic tests to 
identify the adapter on a single port. Link will return to normal after several 
seconds. This only affects 10G-BaseT devices based on the Intel(R) Ethernet 
Controller X710.

System does not get link when connected to a 10GbE switch
---------------------------------------------------------
Systems that contain an Intel(R) i210 or i211 device may not link to a 10GbE 
switch. This may happen when the system's Ethernet cable is not connected to 
the switch during power up or if the cable is disconnected for more than a 
couple of minutes. Disabling and enabling the device in the operating system 
will restore link.

Multicast routing table is not automatically set up
---------------------------------------------------
The multicast routing table for the Intel(R) Ethernet Virtual Function 700 
Series driver is not automatically set up and the virtual machine will not 
receive multicast traffic. Manually adding the multicast routing will resolve 
the issue.

Enable PME setting not set to expected value
--------------------------------------------
After running Sysprep, the Enable PME setting may not be set to the expected 
value. You should manually verify and configure the setting.

Receive Side Scaling value is blank
-----------------------------------
Changing the Receive Side Scaling setting of an adapter in a team may cause the 
value for that setting to appear blank when you next check it. It may also 
appear blank for the other adapters in the team. The adapter may be unbound 
from the team in this situation. Disabling and enabling the team will resolve 
the issue.

CPU utilization higher than expected
------------------------------------
Setting RSS Queues to a value greater than 4 is only advisable for large web 
servers with several processors. Values greater than 4 may increase CPU 
utilization to unacceptable levels and have other negative impacts on system 
performance.

RSS Load Balancing Profile Advanced Setting
-------------------------------------------
Setting the "RSS load balancing profile" Advanced Setting to "ClosestProcessor" 
may significantly reduce CPU utilization. However, in some system 
configurations (such as a system with more Ethernet ports than processor 
cores), the "ClosestProcessor" setting may cause transmit and receive failures. 
Changing the setting to "NUMAScalingStatic" will resolve the issue.

Unexpected link loss when connected to Netgear XSM7224S switch
--------------------------------------------------------------
The Netgear XSM7224s switch is sensitive to Energy Efficient Ethernet (EEE) 
mode. Link flap errors will occur with several Intel devices when EEE mode is 
enabled. Disable EEE mode to resolve the issue. This issue affects devices 
based on the following:
* Intel(R) I350 controller
* Intel(R) 82579 series of controllers
* Intel(R) I217 series of controllers
* Intel(R) I218 series of controllers

Opening Windows Device Manager property sheet takes longer than expected
------------------------------------------------------------------------
The Windows Device Manager property sheet may take 60 seconds or longer to 
open. The driver must discover all Intel Ethernet devices and initialize them 
before it can open the property sheet. This data is cached, so subsequent 
openings of the property sheet are generally quicker.

Reduced or erratic receive performance
--------------------------------------
Intel(R) 7500 chipset-based systems may experience degraded receive 
performance. Increasing receive descriptors to 1024 will resolve the issue. 
Disabling C-states in the system BIOS will also resolve the issue.

Unexpected NMI with 82599-based NICs
------------------------------------
If you set the PCIe Maximum Payload Size to 256 bytes in your system BIOS and 
install an 82599-based NIC, you may receive an NMI when the NIC attains link. 
This happens when the physical slot does not support a payload size of 256 
Bytes even if the BIOS does. Moving the adapter to a slot that supports 256 
bytes will resolve the issue. Consult your system documentation for information 
on supported payload values.

VLANs are not supported on VMQ enabled adapters and teams
---------------------------------------------------------
If you create a VLAN on a VMQ enabled adapter, the VMQ setting will 
automatically be set to disabled. The same will happen if you create a VLAN on 
a team whose member adapters have VMQ enabled.

Unexpected Connectivity Loss
----------------------------
If you uncheck the "Allow the computer to turn off this device to save power" 
box on the Power Management tab and then put your system to sleep, you may lose 
connectivity when you exit sleep. You must disable and enable the NIC to 
resolve the issue. Installing Intel(R)PROSet for Windows Device Manager will 
also resolve the issue.

Reduced Large Send Offload performance
--------------------------------------
Large Send Offload (LSO) and IPSec Offload are not compatible. LSO is 
automatically disabled when IPSec Offload is enabled. This may reduce the 
performance of non-IPSec traffic. Confining all of your IPSec traffic to one 
port and enabling IPSec Offload only on that port may mitigate this issue. On 
Microsoft Windows 8.1 and Server 2012 and later, devices based on the 82576, 
82599, and X540 controllers are not affected by this issue.

Procedure for installing and upgrading drivers and utilities
------------------------------------------------------------
Intel does not recommend installing or upgrading drivers and Intel(R) PROSet 
software over a network connection. Instead, install or upgrade drivers and 
utilities from each system. To install or upgrade drivers and utilities, follow 
the instructions in the User Guide.

"Malicious script detected" warning from Norton AntiVirus* during
Intel PROSet Uninstall
-----------------------------------------------------------------
The Intel PROSet uninstall process uses a Visual Basic script as part of the 
process. Norton AntiVirus and other virus scanning software may mistakenly flag 
this as a malicious or dangerous script. Letting the script run allows the 
uninstall process to complete normally.

Windows Code 10 Error Message on Driver Install or Upgrade
----------------------------------------------------------
If you encounter a Windows Code 10 error message when installing or upgrading 
drivers, reboot to resolve the issue.

No settings available on the Intel(R) Boot Options tab in Windows Device
Manager after flashing an EFI image
------------------------------------------------------------------------
The settings have been hidden because the EFI environment does not make use of 
them.

Network stack will not enable RSC
---------------------------------
If Intel Data Center Bridging (DCB) is installed, the network stack will not 
enable Receive Segment Coalescing (RSC).

PXE option ROM does not follow the PXE specification with respect to the
final "discover" cycle
------------------------------------------------------------------------
In order to avoid long wait periods, the option ROM no longer includes the 
final 32-second discover cycle. (If there was no response in the prior 
16-second cycle, it is almost certain that there will be none in the final, 
32-second cycle.


Intel 10GbE Network Adapter Known Issues
-----------------------------------------

ETS Bandwidth Allocations Don't Match Settings
----------------------------------------------
When Jumbo Frames is set to 9K with a 10GbE adapter, a 90%/10% ETS traffic 
split will not actually be attained on any particular port, despite settings 
being made on the DCB switch. When ETS is set to a 90%/10% split, an actual 
observed split of 70%/30% is more likely.

Supported SFP, SFP+, or QSFP+ module not recognized by the system
-----------------------------------------------------------------
If you try to install an unsupported module, the port may no longer install any 
subsequent modules, regardless of whether the module is supported or not. The 
port will show a yellow bang under Windows Device manager and an event id 49 
(unsupported module) will be added to the system log when this issue occurs. To 
resolve this issue, the system must be completely powered off.

Lower than expected performance on quad port 10GbE devices
----------------------------------------------------------
All SFP and QSFP quad port NICs based on the 82599 controller will link at 5 
GB/s (PCIe gen2) when used in a system from Intel's Enterprise Platforms and 
Services Division (EPSD). The PLX PCIe switch used on these NICs is not on the 
EPSD passlist of supported PCIe gen3 devices. Devices not on the passlist are 
blocked from linking at PCIe gen3 by the production BIOS.

Lower than expected performance on quad port 10GbE devices
----------------------------------------------------------
Quad port 10Gbe devices require x8 PCIe gen 3 slots. Full throughput is not 
possible in a PCIe gen 2 slot.

Lower than expected performance on dual port 10GbE devices
----------------------------------------------------------
Some PCIe x8 slots are actually configured as x4 slots. These slots have 
insufficient bandwidth for full 10Gbe line rate with dual port 10GbE devices. 
The driver can detect this situation and will write the following message in 
the system log: "PCI-Express bandwidth available for this card is not 
sufficient for optimal performance. For optimal performance a x8 PCI-Express 
slot is required." If this error occurs, moving your adapter to a true x8 slot 
will resolve the issue.

Link Loss on 10GbE Devices with Jumbo Frames enabled
----------------------------------------------------
You must not lower Receive_Buffers or Transmit_Buffers below 256 if jumbo 
frames are enabled on an Intel(R) 10GbE Device. Doing so will cause loss of 
link.

Failed connection and possible system instability
-------------------------------------------------
If you have non-Intel networking devices capable of Receive-Side Scaling 
installed in your system, the Microsoft Windows registry keyword "RSSBaseCPU" 
may have been changed from the default value of 0x0 to point to a logical 
processor. If this keyword has been changed then devices based on Intel(R) 
82598 or 82599 10 Gigabit Ethernet Controllers might not pass traffic. 
Attempting to make driver changes in this state may cause system instability. 
Set the value of RSSBaseCpu to 0x0, or to a value corresponding to a physical 
processor, and reboot the system to resolve the issue.


Customer Support
================

- Main Intel support website: http://support.intel.com
- Network products information:
http://support.intel.com/support/go/network/adapter/home.htm


Legal / Disclaimers
===================

Copyright (C) 2002 - 2022, Intel Corporation. All rights reserved.
Parts of Intel(R) PROSet for Windows Device Manager are based on the pugixml 
library (http://pugixml.org). pugixml is Copyright (C) 2006-2015 Arseny 
Kapoulkine.

Intel Corporation assumes no responsibility for errors or omissions in this 
document. Nor does Intel make any commitment to update the information 
contained herein.

Intel and the Intel logo are trademarks of Intel Corporation or its 
subsidiaries in the U.S. and/or other countries.

* Other product and corporate names may be trademarks of other companies and 
are used only for explanation and to the owners' benefit, without intent to 
infringe.


