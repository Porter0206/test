-- (2) Creating a Domain
[amdpr1@localhost java]$ cd ~/Desktop/weblogic_poc/

[amdpr1@localhost weblogic_poc]$ mkdir domains
[amdpr1@localhost weblogic_poc]$ mkdir applications
[amdpr1@localhost weblogic_poc]$ ls
applications  fmw_14.1.1.0.0_wls_lite_Disk1_1of1.zip  jdk-8u202-linux-x64.tar.gz
domains       fmw_14.1.1.0.0_wls_lite_generic.jar

[amdpr1@localhost weblogic_poc]$ pwd
/home/amdpr1/Desktop/weblogic_poc

[amdpr1@localhost weblogic_poc]$ vi wls_install.rsp
[ENGINE]
Response File Version=1.0.0.0.0

[GENERIC]
ORACLE_HOME=/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home
INSTALL_TYPE=WebLogic Server

[amdpr1@localhost weblogic_poc]$ mkdir silent
[amdpr1@localhost weblogic_poc]$ cd silent/

# inst_group, "groups" cmd in linux env.
[amdpr1@localhost silent]$ vi createPrivateInventory.txt
inventory_loc=/home/amdpr1/Desktop/weblogic_poc/silent/privOraInv.loc
inst_group=amdpr1 wheel docker

[amdpr1@localhost silent]$ cd ..

[amdpr1@localhost weblogic_poc]$ java -jar /home/amdpr1/Desktop/weblogic_poc/fmw_14.1.1.0.0_wls_lite_generic.jar -silent -responseFile /home/amdpr1/Desktop/weblogic_poc/wls_install.rsp -invPtrLoc /home/amdpr1/Desktop/weblogic_poc/silent/createPrivateInventory.txt
Launcher log file is /tmp/OraInstall2024-03-30_12-41-08PM/launcher2024-03-30_12-41-08PM.log.
Extracting the installer . . . . . Done
Checking if CPU speed is above 300 MHz.   Actual 2208.002 MHz    Passed
Checking swap space: must be greater than 512 MB.   Actual 7987 MB    Passed
Checking if this platform requires a 64-bit JVM.   Actual 64    Passed (64-bit not required)
Checking temp space: must be greater than 300 MB.   Actual 14395 MB    Passed
Preparing to launch the Oracle Universal Installer from /tmp/OraInstall2024-03-30_12-41-08PM
Log: /tmp/OraInstall2024-03-30_12-41-08PM/install2024-03-30_12-41-08PM.log
Copyright (c) 1996, 2020, Oracle and/or its affiliates. All rights reserved.
Reading response file..
Skipping Software Updates
Starting check : CertifiedVersions
Expected result: One of oracle-6, oracle-7, redhat-7, redhat-6, SuSE-11, SuSE-12, SuSE-15
Actual Result: redhat-8
Check complete. The overall result of this check is: Passed
CertifiedVersions Check: Success.


Starting check : CheckJDKVersion
Expected result: 1.8.0_191
Actual Result: 1.8.0_202
Check complete. The overall result of this check is: Passed
CheckJDKVersion Check: Success.


Validations are enabled for this session.
Verifying data
Copying Files
Percent Complete : 10
Percent Complete : 20
Percent Complete : 30
Percent Complete : 40
Percent Complete : 50
Percent Complete : 60
Percent Complete : 70
Percent Complete : 80
Percent Complete : 90
Percent Complete : 100

The installation of Oracle Fusion Middleware 14.1.1 WebLogic Server and Coherence 14.1.1.0.0 completed successfully.
Logs successfully copied to /home/amdpr1/Desktop/weblogic_poc/silent/privOraInv.loc/logs.

[amdpr1@localhost weblogic_poc]$ cd silent/
[amdpr1@localhost silent]$ ls
createPrivateInventory.txt  Oracle  privOraInv.loc

# uninstall weblogic
[amdpr1@localhost silent]$ cd /home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/oui

[amdpr1@localhost oui]$ /home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/oui/bin/deinstall.sh -silent -responseFile /home/amdpr1/Desktop/weblogic_poc/wls_install.rsp
Launcher log file is /tmp/OraInstall2024-03-30_01-16-02PM/launcher2024-03-30_01-16-02PM.log.
Checking if CPU speed is above 300 MHz.   Actual 2208.002 MHz    Passed
Checking swap space: must be greater than 512 MB.   Actual 7987 MB    Passed
Checking if this platform requires a 64-bit JVM.   Actual 64    Passed (64-bit not required)
Checking temp space: must be greater than 300 MB.   Actual 15032 MB    Passed
Log: /tmp/OraInstall2024-03-30_01-16-02PM/deinstall2024-03-30_01-16-02PM.log
Setting ORACLE_HOME...
Copyright (c) 1996, 2020, Oracle and/or its affiliates. All rights reserved.
Reading response file..
Starting silent deinstallation...
Percent Complete : 10
Percent Complete : 20
Percent Complete : 30
Percent Complete : 40
Percent Complete : 50
Percent Complete : 60
Percent Complete : 70
Percent Complete : 80
Percent Complete : 90
100%

The uninstall of WebLogic Server 14.1.1.0.0 completed successfully.
Logs successfully copied to /home/amdpr1/Desktop/weblogic_poc/silent/privOraInv.loc/logs.

[amdpr1@localhost oui]$ cd /home/amdpr1/Desktop/weblogic_poc/

# re-install weblogic
[amdpr1@localhost weblogic_poc]$ java -jar /home/amdpr1/Desktop/weblogic_poc/fmw_14.1.1.0.0_wls_lite_generic.jar -silent -responseFile /home/amdpr1/Desktop/weblogic_poc/wls_install.rsp -invPtrLoc /home/amdpr1/Desktop/weblogic_poc/silent/createPrivateInventory.txt
Launcher log file is /tmp/OraInstall2024-03-30_01-22-46PM/launcher2024-03-30_01-22-46PM.log.
Extracting the installer . . . . . Done
Checking if CPU speed is above 300 MHz.   Actual 2208.002 MHz    Passed
Checking swap space: must be greater than 512 MB.   Actual 7987 MB    Passed
Checking if this platform requires a 64-bit JVM.   Actual 64    Passed (64-bit not required)
Checking temp space: must be greater than 300 MB.   Actual 14395 MB    Passed
Preparing to launch the Oracle Universal Installer from /tmp/OraInstall2024-03-30_01-22-46PM
Log: /tmp/OraInstall2024-03-30_01-22-46PM/install2024-03-30_01-22-46PM.log
Copyright (c) 1996, 2020, Oracle and/or its affiliates. All rights reserved.
Reading response file..
Skipping Software Updates
Starting check : CertifiedVersions
Expected result: One of oracle-6, oracle-7, redhat-7, redhat-6, SuSE-11, SuSE-12, SuSE-15
Actual Result: redhat-8
Check complete. The overall result of this check is: Passed
CertifiedVersions Check: Success.


Starting check : CheckJDKVersion
Expected result: 1.8.0_191
Actual Result: 1.8.0_202
Check complete. The overall result of this check is: Passed
CheckJDKVersion Check: Success.


Validations are enabled for this session.
Verifying data
Copying Files
Percent Complete : 10
Percent Complete : 20
Percent Complete : 30
Percent Complete : 40
Percent Complete : 50
Percent Complete : 60
Percent Complete : 70
Percent Complete : 80
Percent Complete : 90
Percent Complete : 100

The installation of Oracle Fusion Middleware 14.1.1 WebLogic Server and Coherence 14.1.1.0.0 completed successfully.
Logs successfully copied to /home/amdpr1/Desktop/weblogic_poc/silent/privOraInv.loc/logs.

[amdpr1@localhost weblogic_poc]$ ls -altr
total 1435392
-rw-r--r--. 1 amdpr1 amdpr1 638026223 Jul 22  2020 fmw_14.1.1.0.0_wls_lite_generic.jar
-rw-rw-r--. 1 amdpr1 amdpr1 637756056 Mar 10 17:18 fmw_14.1.1.0.0_wls_lite_Disk1_1of1.zip
-rw-rw-r--. 1 amdpr1 amdpr1 194042837 Mar 16 12:49 jdk-8u202-linux-x64.tar.gz
drwxr-xr-x. 7 amdpr1 amdpr1       110 Mar 30 11:36 ..
drwxrwxr-x. 2 amdpr1 amdpr1         6 Mar 30 12:06 domains
drwxrwxr-x. 2 amdpr1 amdpr1         6 Mar 30 12:06 applications
-rw-rw-r--. 1 amdpr1 amdpr1       165 Mar 30 12:25 wls_install.rsp
drwxrwxr-x. 5 amdpr1 amdpr1      4096 Mar 30 12:33 .
drwxrwxr-x. 4 amdpr1 amdpr1        76 Mar 30 12:41 silent

[amdpr1@localhost weblogic_poc]$ cd /home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/oracle_common/common/bin
[amdpr1@localhost bin]$ ls
clonedunpack_internal.sh    config.sh                          prepareCustomProvider.sh  unpack_internal.sh
clonedunpack.sh             configWallet_internal.sh           qs_config_internal.sh     unpack.sh
commBaseEnv.sh              configWallet.sh                    qs_config.sh              update_jdk_env.sh
commEnv.sh                  fmwconfig_common.sh                reconfig_internal.sh      wlst_internal.sh
commExtEnv.sh               getproperty.sh                     reconfig.sh               wlst.sh
config_builder_internal.sh  pack_internal.sh                   setHomeDirs.sh
config_builder.sh           pack.sh                            setWlstEnv_internal.sh
config_internal.sh          prepareCustomProvider_internal.sh  setWlstEnv.sh
[amdpr1@localhost bin]$ ./wlst.sh

Initializing WebLogic Scripting Tool (WLST) ...

Jython scans all the jar files it can find at first startup. Depending on the system, this process may take a few minutes to complete, and WLST may not return a prompt right away.

Welcome to WebLogic Server Administration Scripting Shell

Type help() for help on available commands

wls:/offline> help()

WLST is a command line scripting tool to configure and administer WebLogic Server. Try:

    help('all')              List all WLST commands available.
    help('browse')           List commands for browsing the hierarchy.
    help('common')           List the most commonly used commands.
    help('control')          List commands for controlling the domain/server.
    help('deployment')       List commands for deploying applications.
    help('diagnostics')      List commands for performing diagnostics.
    help('editing')          List commands for editing the configuration.
    help('information')      List commands for displaying information.
    help('lifecycle')        List commands for managing life cycle.
    help('nodemanager')      List commands for using Node Manager.
    help('offline')          List all offline commands available.
    help('online')           List all online commands available.
    help('storeadmin')       List all store admin commands.
    help('trees')            List commands use to navigate MBean hierarchy.
    help('variables')        List all global variables available.

wls:/offline> exit()


Exiting WebLogic Scripting Tool.

[amdpr1@localhost bin]$ vi createDomain.py
# Read the template to use for creating the domain
readTemplate('/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/common/templates/wls/wls.jar')

# Set the listen address and listen port for the Administration Server
cd('Servers/AdminServer')
set('ListenAddress','192.168.50.185')
set('ListenPort', 7001)

# Enable SSL on the Administration Server and set the SSL listen address and
# port
create('AdminServer','SSL')
cd('SSL/AdminServer')
set('Enabled', 'True')
set('ListenPort', 7002)

# Set the domain password for the WebLogic Server administration user
cd('/')
cd('Security/base_domain/User/weblogic')
cmo.setPassword('weblogic456')

# If the domain already exists, overwrite the domain
setOption('OverwriteDomain', 'true')

# write the domain and close the template
writeDomain('/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain')
closeTemplate()

exit()

[amdpr1@localhost bin]$ ./wlst.sh ./createDomain.py

Initializing WebLogic Scripting Tool (WLST) ...

Welcome to WebLogic Server Administration Scripting Shell

Type help() for help on available commands


Exiting WebLogic Scripting Tool.

[amdpr1@localhost bin]$ cd /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain
[amdpr1@localhost wls14cdomain]$ ls -latr
total 24
drwxr-x---.  2 amdpr1 amdpr1    6 Feb 21  2020 resources
-rw-r-----.  1 amdpr1 amdpr1  327 Feb 21  2020 fileRealm.properties.bak
-rw-r-----.  1 amdpr1 amdpr1  327 Feb 21  2020 fileRealm.properties
drwxrwxr-x.  3 amdpr1 amdpr1   26 Mar 30 14:38 ..
drwxr-x---.  3 amdpr1 amdpr1   16 Mar 30 14:38 common
drwxr-x---.  3 amdpr1 amdpr1   25 Mar 30 14:38 servers
drwxr-x---.  8 amdpr1 amdpr1  124 Mar 30 14:38 config
drwxr-x---.  6 amdpr1 amdpr1 4096 Mar 30 14:38 bin
drwxr-x---.  2 amdpr1 amdpr1   63 Mar 30 14:38 nodemanager
drwxr-x---.  2 amdpr1 amdpr1   46 Mar 30 15:23 lib
drwxr-x---.  2 amdpr1 amdpr1   46 Mar 30 15:23 console-ext
drwxr-x---.  2 amdpr1 amdpr1   46 Mar 30 15:23 autodeploy
drwxr-x---. 13 amdpr1 amdpr1 4096 Mar 30 15:23 .
drwxr-x---.  2 amdpr1 amdpr1  167 Mar 30 15:23 security
-rwxr-x---.  1 amdpr1 amdpr1  270 Mar 30 15:23 startWebLogic.sh
drwxr-x---.  3 amdpr1 amdpr1 4096 Mar 30 15:23 init-info
