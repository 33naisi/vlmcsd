#查询系统版本
wmic os get caption


#激活
#填入自己Windows版本对应的密钥
#这个IP地址是你KMS服务器的地址
slmgr.vbs -upk
slmgr.vbs -ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr.vbs -skms tx.imyuan.top
slmgr.vbs -ato
slmgr.vbs -dlv


#如果不想用kms了，可以重置回原来的状态
#清除系统KMS信息
#重置计算机的授权状态
slmgr.vbs -ckms
slmgr.vbs -rearm


#Windows GVLK密钥对照表（KMS激活专用）
操作系统	KMS激活序列号
#Windows 10 Home								TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
#Windows 10 Home N								3KHY7-WNT83-DGQKR-F7HPR-844BM
#Windows 10 Home Single Language				7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
#Windows 10 Home Country Specific				PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
#Windows 10 Professional						W269N-WFGWX-YVC9B-4J6C9-T83GX
#Windows 10 Professional N						MH37W-N47XK-V7XM9-C7227-GCQG9
#Windows 10 Professional Education				6TP4R-GNPTD-KYYHQ-7B7DP-J447Y
#Windows 10 Professional Education N			YVWGF-BXNMC-HTQYQ-CPQ99-66QFC
#Windows 10 Professional Workstation			NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J
#Windows 10 Professional Workstation N			9FNHH-K3HBT-3W4TD-6383H-6XYWF
#Windows 10 Education							NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
#Windows 10 Education N							2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
#Windows 10 Enterprise							NPPR9-FWDCX-D2C8J-H872K-2YT43
#Windows 10 Enterprise N						DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
#Windows 10 Enterprise G						YYVX9-NTFWV-6MDM3-9PT4T-4M68B
#Windows 10 Enterprise G N						44RPN-FTY23-9VTTB-MP9BX-T84FV
#Windows 10 Enterprise 2015 LTSB				WNMTR-4C88C-JK8YV-HQ7T2-76DF9
#Windows 10 Enterprise 2015 LTSB N				2F77B-TNFGY-69QQF-B8YKP-D69TJ
#Windows 10 Enterprise 2016 LTSB				DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ
#Windows 10 Enterprise 2016 LTSB N				QFFDN-GRT3P-VKWWX-X7T3R-8B639
#Windows 10 Enterprise LTSC 2018				M7XTQ-FN8P6-TTKYV-9D4CC-J462D
#Windows 10 Enterprise LTSC 2018 N				92NFX-8DJQP-P6BBQ-THF9C-7CG2H
#Windows 10 Enterprise Remote Server			7NBT4-WGBQX-MP4H7-QXFF8-YP3KX
#Windows 10 Enterprise for Remote Sessions		CPWHC-NT2C7-VYW78-DHDB2-PG3GK
#Windows 10 Lean								NBTWJ-3DR69-3C4V8-C26MC-GQ9M6

#激活office
#一般ospp.vbs可以拖进去cmd窗口，所以也可以这么弄：
cscript "C:\Program Files (x86)\Microsoft Office\Office16\OSPP.VBS" /sethst:192.168.1.1
#这个IP地址是你KMS服务器的地址
#一般来说，“一句命令已经完成了”，但一般office不会马上连接kms服务器进行激活，所以我们额外补充一条手动激活命令：
cscript ospp.vbs /act
#检查激活状态：
cscript ospp.vbs /dstatus
