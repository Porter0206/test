
[amdpr1@localhost ~]$ cd /home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/common/derby
[amdpr1@localhost derby]$ ls -latr
total 52
-rw-r-----.  1 amdpr1 amdpr1 11358 Mar 19  2014 LICENSE
-rw-r-----.  1 amdpr1 amdpr1  6797 Jun 28  2018 RELEASE-NOTES.html
-rw-r-----.  1 amdpr1 amdpr1 12680 Jun 28  2018 NOTICE
drwxr-x---.  2 amdpr1 amdpr1  4096 Mar 30 13:23 bin
drwxr-x---. 10 amdpr1 amdpr1   130 Mar 30 13:23 ..
drwxr-x---.  2 amdpr1 amdpr1  4096 Mar 30 13:23 lib
drwxr-x---.  4 amdpr1 amdpr1   109 Mar 30 13:23 .
-rw-r-----.  1 amdpr1 amdpr1  6555 Mar 30 13:23 derbyServer.policy
[amdpr1@localhost derby]$ ls
bin  derbyServer.policy  lib  LICENSE  NOTICE  RELEASE-NOTES.html
[amdpr1@localhost derby]$ cd bin/
[amdpr1@localhost bin]$ echo $JAVA_HOME
/usr/java/jdk1.8.0

[amdpr1@localhost bin]$ ls
dblook            ij.bat                    setEmbeddedCP.bat       setNetworkServerCP.bat  startNetworkServer.sh  stopNetworkServer.sh
dblook.bat        NetworkServerControl      setNetworkClientCP      startNetworkServer      stopNetworkServer      sysinfo
derby_common.bat  NetworkServerControl.bat  setNetworkClientCP.bat  startNetworkServer.bat  stopNetworkServer.bat  sysinfo.bat
ij                setEmbeddedCP             setNetworkServerCP      startNetworkServer.cmd  stopNetworkServer.cmd

[amdpr1@localhost bin]$ ./startNetworkServer -h 192.168.50.185 $@ &
[5] 94727
[amdpr1@localhost bin]$ Sun Mar 31 09:39:43 CST 2024 : Security manager installed using the Basic server security policy.
Sun Mar 31 09:39:44 CST 2024 : Apache Derby Network Server - 10.14.2.0 - (1828579) started and ready to accept connections on port 1527
^C
[amdpr1@localhost bin]$ cd ../lib/
[amdpr1@localhost lib]$ ls
derbyclient.jar     derbyLocale_de_DE.jar  derbyLocale_hu.jar     derbyLocale_ko_KR.jar  derbyLocale_ru.jar     derby.log     derbytools.jar
derby.jar           derbyLocale_es.jar     derbyLocale_it.jar     derbyLocale_pl.jar     derbyLocale_zh_CN.jar  derbynet.jar  derby.war
derbyLocale_cs.jar  derbyLocale_fr.jar     derbyLocale_ja_JP.jar  derbyLocale_pt_BR.jar  derbyLocale_zh_TW.jar  derbyrun.jar

[amdpr1@localhost lib]$ java -jar derbyrun.jar ij
ij version 10.14
ij> connect 'jdbc:derby://192.168.50.185:1527/derbydb;create=true';
ij> exit;

[amdpr1@localhost lib]$ cp derbyclient.jar  /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/lib/
[amdpr1@localhost lib]$ cd /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/lib/
[amdpr1@localhost lib]$ ls
derbyclient.jar  readme.txt

# need to restart weblogic server
# <Mar 31, 2024 10:08:35 AM CST> <Notice> <WebLogicServer> <BEA-000395> <The following extensions directory contents added to the end of the classpath: /home/amdpr1/Desktop/   weblogic_poc/domains/wls14cdomain/lib/derbyclient.jar.>
[amdpr1@localhost bin]$ ./startWebLogic.sh &
[8] 98084
[amdpr1@localhost bin]$ .
.
JAVA Memory arguments: -Xms256m -Xmx512m -XX:CompileThreshold=8000
.
CLASSPATH=/usr/java/jdk1.8.0/lib/tools.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/weblogic.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/../oracle_common/modules/thirdparty/ant-contrib-1.0b3.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/modules/features/oracle.wls.common.nodemanager.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/common/derby/lib/derbyclient.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/common/derby/lib/derby.jar
.
PATH=/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/bin:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/bin:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/../oracle_common/modules/thirdparty/org.apache.ant/1.10.5.0.0/apache-ant-1.10.5/bin:/usr/java/jdk1.8.0/jre/bin:/usr/java/jdk1.8.0/bin:/usr/java/jdk1.8.0/bin:/home/amdpr1/.local/bin:/home/amdpr1/bin:/usr/share/Modules/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin
.
***************************************************
*  To start WebLogic Server, use a username and   *
*  password assigned to an admin-level user.  For *
*  server administration, use the WebLogic Server *
*  console at http://hostname:port/console        *
***************************************************
Starting WLS with line:
/usr/java/jdk1.8.0/bin/java -server   -Xms256m -Xmx512m -XX:CompileThreshold=8000 -cp /home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/weblogic-launcher.jar -Dlaunch.use.env.classpath=true -Dweblogic.Name=AdminServer -Djava.security.policy=/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/weblogic.policy  -Djava.system.class.loader=com.oracle.classloader.weblogic.LaunchClassLoader  -javaagent:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/debugpatch-agent.jar -da -Dwls.home=/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server -Dweblogic.home=/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server     -Djava.endorsed.dirs=/usr/java/jdk1.8.0/jre/lib/endorsed:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/../oracle_common/modules/endorsed:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/modules/endorsed  weblogic.Server
<Mar 31, 2024 10:08:35 AM CST> <Info> <Security> <BEA-090905> <Disabling the CryptoJ JCE Provider self-integrity check for better startup performance. To enable this check, specify -Dweblogic.security.allowCryptoJDefaultJCEVerification=true.>
<Mar 31, 2024 10:08:35 AM CST> <Info> <Security> <BEA-090906> <Changing the default Random Number Generator in RSA CryptoJ from ECDRBG128 to HMACDRBG. To disable this change, specify -Dweblogic.security.allowCryptoJDefaultPRNG=true.>
<Mar 31, 2024 10:08:35 AM CST> <Notice> <WebLogicServer> <BEA-000395> <The following extensions directory contents added to the end of the classpath:
/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/lib/derbyclient.jar.>
<Mar 31, 2024 10:08:36 AM CST> <Info> <WebLogicServer> <BEA-000377> <Starting WebLogic Server with Java HotSpot(TM) 64-Bit Server VM Version 25.202-b08 from Oracle Corporation.>
<Mar 31, 2024 10:08:37 AM CST> <Info> <Management> <BEA-141107> <Version: WebLogic Server 14.1.1.0.0  Thu Mar 26 03:15:09 GMT 2020 2000885>
<Mar 31, 2024 10:08:39 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STARTING.>
<Mar 31, 2024 10:08:39 AM CST> <Info> <WorkManager> <BEA-002900> <Initializing self-tuning thread pool.>
<Mar 31, 2024 10:08:40,287 AM CST> <Notice> <LoggingService> <BEA-320400> <The log file /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log will be rotated. Reopen the log file if tailing has stopped. This can happen on some platforms, such as Windows.>
<Mar 31, 2024 10:08:40,287 AM CST> <Notice> <LoggingService> <BEA-320401> <The log file has been rotated to /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log00007. Log messages will continue to be logged in /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log.>
<Mar 31, 2024 10:08:40,359 AM CST> <Notice> <Log Management> <BEA-170019> <The server log file weblogic.logging.FileStreamHandler instance=1198665928
Current log file=/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log
Rotation dir=/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs
 is opened. All server side log events will be written to this file.>
<Mar 31, 2024 10:08:41,743 AM CST> <Notice> <Security> <BEA-090946> <Security pre-initializing using security realm: myrealm>
<Mar 31, 2024 10:08:42,414 AM CST> <Notice> <Security> <BEA-090947> <Security post-initializing using security realm: myrealm>
<Mar 31, 2024 10:08:45,637 AM CST> <Notice> <Security> <BEA-090082> <Security initialized using administrative security realm: myrealm>
<Mar 31, 2024 10:08:46,467 AM CST> <Notice> <JMX> <BEA-149512> <JMX Connector Server started at service:jmx:iiop://192.168.50.185:7001/jndi/weblogic.management.mbeanservers.runtime.>
<Mar 31, 2024 10:08:46,959 AM CST> <Notice> <JMX> <BEA-149512> <JMX Connector Server started at service:jmx:iiop://192.168.50.185:7001/jndi/weblogic.management.mbeanservers.domainruntime.>
<Mar 31, 2024 10:08:46,966 AM CST> <Notice> <JMX> <BEA-149512> <JMX Connector Server started at service:jmx:iiop://192.168.50.185:7001/jndi/weblogic.management.mbeanservers.edit.>
<Mar 31, 2024 10:08:50,154 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STANDBY.>
<Mar 31, 2024 10:08:50,155 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STARTING.>
<Mar 31, 2024 10:08:50,209 AM CST> <Notice> <Log Management> <BEA-170036> <The Logging monitoring service timer has started to check for logged message counts every 30 seconds.>
<Mar 31, 2024 10:08:50,736 AM CST> <Notice> <Log Management> <BEA-170027> <The server has successfully established a connection with the Domain level Diagnostic Service.>
<Mar 31, 2024 10:08:51,176 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to ADMIN.>
<Mar 31, 2024 10:08:51,265 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RESUMING.>
<Mar 31, 2024 10:08:51,478 AM CST> <Notice> <Security> <BEA-090171> <Loading the identity certificate and private key stored under the alias DemoIdentity from the jks keystore file /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/security/DemoIdentity.jks.>
<Mar 31, 2024 10:08:51,498 AM CST> <Notice> <Security> <BEA-090169> <Loading trusted certificates from the jks keystore file /home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/DemoTrust.jks.>
<Mar 31, 2024 10:08:51,500 AM CST> <Notice> <Security> <BEA-090169> <Loading trusted certificates from the jks keystore file /usr/java/jdk1.8.0/jre/lib/security/cacerts.>
<Mar 31, 2024 10:08:51,505 AM CST> <Notice> <WebLogicServer> <BEA-000331> <Started the WebLogic Server Administration Server "AdminServer" for domain "wls14cdomain" running in development mode.>
<Mar 31, 2024 10:08:51,511 AM CST> <Notice> <WebLogicServer> <BEA-000360> <The server started in RUNNING mode.>
<Mar 31, 2024 10:08:51,514 AM CST> <Notice> <Server> <BEA-002613> <Channel "DefaultSecure" is now listening on 192.168.50.185:7002 for protocols iiops, t3s, ldaps, https.>
<Mar 31, 2024 10:08:51,514 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default" is now listening on 192.168.50.185:7001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 10:08:51,514 AM CST> <Notice> <Server> <BEA-002613> <Channel "DefaultSecure" is now listening on 192.168.50.185:7002 for protocols iiops, t3s, ldaps, https.>
<Mar 31, 2024 10:08:51,514 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default" is now listening on 192.168.50.185:7001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 10:08:51,517 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RUNNING.>
<Mar 31, 2024 10:08:52,963 AM CST> <Notice> <Log Management> <BEA-170027> <The server has successfully established a connection with the Domain level Diagnostic Service.>
