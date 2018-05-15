@echo ############################################
@echo #                                          #
@echo #  此脚本由姜晨制作，用于收集计算机信息！  #
@echo #                                          #
@echo ############################################


@echo 你的计算机名是%computername%，请等待几分钟……

@md c:\info_collect_%computername%

@echo "ver" >>c:\info_collect_%computername%\ERROR.log

@ver 1>c:\info_collect_%computername%\Windows_OS_version.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "set" >>c:\info_collect_%computername%\ERROR.log

@set 1>c:\info_collect_%computername%\All_of_the_environment_variables.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "whoami /all /fo list" >>c:\info_collect_%computername%\ERROR.log

@whoami /all /fo list 1>c:\info_collect_%computername%\Current_user_information.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "net config workstation" >>c:\info_collect_%computername%\ERROR.log

@net config workstation 1>c:\info_collect_%computername%\Workstation_configuration_information.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "net config server" >>c:\info_collect_%computername%\ERROR.log

@net config server 1>c:\info_collect_%computername%\Server_configuration_information.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "ipconfig /all" >>c:\info_collect_%computername%\ERROR.log

@ipconfig /all 1>c:\info_collect_%computername%\Network_information.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "systeminfo" >>c:\info_collect_%computername%\ERROR.log

@systeminfo 1>c:\info_collect_%computername%\Computer_and_OS_information.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "arp -a" >>c:\info_collect_%computername%\ERROR.log

@arp -a 1>c:\info_collect_%computername%\ARP_information.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "route print" >>c:\info_collect_%computername%\ERROR.log

@route print 1>c:\info_collect_%computername%\Route_information.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "netstat -ano" >>c:\info_collect_%computername%\ERROR.log

@netstat -ano 1>c:\info_collect_%computername%\Netstat_information.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "tasklist /v" >>c:\info_collect_%computername%\ERROR.log

@tasklist /v 1>c:\info_collect_%computername%\Running_processes.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "net start" >>c:\info_collect_%computername%\ERROR.log

@net start 1>c:\info_collect_%computername%\Windows_service.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "net localgroup "Administrators"" >>c:\info_collect_%computername%\ERROR.log

@net localgroup "Administrators" 1>c:\info_collect_%computername%\Local_administrator_accounts.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "net group /domain" >>c:\info_collect_%computername%\ERROR.log

@net group /domain 1>c:\info_collect_%computername%\Domain_administrator_accounts.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "net user" >>c:\info_collect_%computername%\ERROR.log

@net user 1>c:\info_collect_%computername%\Discovered_users.txt 2>>c:\info_collect_%computername%\ERROR.log 

@echo "group "Domain Computers" /domain" >>c:\info_collect_%computername%\ERROR.log

@net group "Domain Computers" /domain 1>c:\info_collect_%computername%\Domain_Computers_information.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "group "Domain Controllers" /domain" >>c:\info_collect_%computername%\ERROR.log

@net group "Domain Controllers" /domain 1>c:\info_collect_%computername%\Domain_Controllers_information.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "net share" >>c:\info_collect_%computername%\ERROR.log

@net share 1>c:\info_collect_%computername%\Net_share.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "net view" >>c:\info_collect_%computername%\ERROR.log

@net view 1>c:\info_collect_%computername%\Net_view.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "net session" >>c:\info_collect_%computername%\ERROR.log

@net session 1>c:\info_collect_%computername%\SMB_sessions.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "schtasks" >>c:\info_collect_%computername%\ERROR.log

@schtasks 1>c:\info_collect_%computername%\Scheduled_tasks.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo "echo %LOGONSERVER%" >>c:\info_collect_%computername%\ERROR.log

@echo %LOGONSERVER% 1>c:\info_collect_%computername%\Active_directory_login_server.txt 2>>c:\info_collect_%computername%\ERROR.log

@echo 已完成，保存文件至c:\info_collect_%computername%


@PAUSE 