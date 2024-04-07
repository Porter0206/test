
[amdpr1@localhost bin]$ pwd
/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/bin
[amdpr1@localhost bin]$ ./startWebLogic.sh
.
.
JAVA Memory arguments: -Xms256m -Xmx512m -XX:CompileThreshold=8000
.
CLASSPATH=/usr/java/jdk1.8.0/lib/tools.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/weblogic.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/../oracle_common/modules/thirdparty/ant-contrib-1.0b3.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/modules/features/oracle.wls.common.nodemanager.jar::/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/common/derby/lib/derbynet.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/common/derby/lib/derbyclient.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/common/derby/lib/derby.jar
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
<Mar 31, 2024 5:13:25 AM CST> <Info> <Security> <BEA-090905> <Disabling the CryptoJ JCE Provider self-integrity check for better startup performance. To enable this check, specify -Dweblogic.security.allowCryptoJDefaultJCEVerification=true.>
<Mar 31, 2024 5:13:26 AM CST> <Info> <Security> <BEA-090906> <Changing the default Random Number Generator in RSA CryptoJ from ECDRBG128 to HMACDRBG. To disable this change, specify -Dweblogic.security.allowCryptoJDefaultPRNG=true.>
<Mar 31, 2024 5:13:27 AM CST> <Info> <WebLogicServer> <BEA-000377> <Starting WebLogic Server with Java HotSpot(TM) 64-Bit Server VM Version 25.202-b08 from Oracle Corporation.>
<Mar 31, 2024 5:13:28 AM CST> <Info> <Management> <BEA-141107> <Version: WebLogic Server 14.1.1.0.0  Thu Mar 26 03:15:09 GMT 2020 2000885>
<Mar 31, 2024 5:13:30 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STARTING.>
<Mar 31, 2024 5:13:30 AM CST> <Info> <WorkManager> <BEA-002900> <Initializing self-tuning thread pool.>
<Mar 31, 2024 5:13:31,234 AM CST> <Notice> <LoggingService> <BEA-320400> <The log file /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log will be rotated. Reopen the log file if tailing has stopped. This can happen on some platforms, such as Windows.>
<Mar 31, 2024 5:13:31,234 AM CST> <Notice> <LoggingService> <BEA-320401> <The log file has been rotated to /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log00001. Log messages will continue to be logged in /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log.>
<Mar 31, 2024 5:13:31,299 AM CST> <Notice> <Log Management> <BEA-170019> <The server log file weblogic.logging.FileStreamHandler instance=202000772
Current log file=/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log
Rotation dir=/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs
 is opened. All server side log events will be written to this file.>
<Mar 31, 2024 5:13:31,910 AM CST> <Notice> <Security> <BEA-090946> <Security pre-initializing using security realm: myrealm>
<Mar 31, 2024 5:13:32,555 AM CST> <Notice> <Security> <BEA-090947> <Security post-initializing using security realm: myrealm>
<Mar 31, 2024 5:13:33,858 AM CST> <Notice> <Security> <BEA-090082> <Security initialized using administrative security realm: myrealm>
<Mar 31, 2024 5:13:34,704 AM CST> <Notice> <JMX> <BEA-149512> <JMX Connector Server started at service:jmx:iiop://192.168.50.185:7001/jndi/weblogic.management.mbeanservers.runtime.>
<Mar 31, 2024 5:13:35,332 AM CST> <Notice> <JMX> <BEA-149512> <JMX Connector Server started at service:jmx:iiop://192.168.50.185:7001/jndi/weblogic.management.mbeanservers.domainruntime.>
<Mar 31, 2024 5:13:35,339 AM CST> <Notice> <JMX> <BEA-149512> <JMX Connector Server started at service:jmx:iiop://192.168.50.185:7001/jndi/weblogic.management.mbeanservers.edit.>
<Mar 31, 2024 5:13:38,841 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STANDBY.>
<Mar 31, 2024 5:13:38,841 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STARTING.>
<Mar 31, 2024 5:13:38,939 AM CST> <Notice> <Log Management> <BEA-170036> <The Logging monitoring service timer has started to check for logged message counts every 30 seconds.>
<Mar 31, 2024 5:13:40,096 AM CST> <Notice> <Log Management> <BEA-170027> <The server has successfully established a connection with the Domain level Diagnostic Service.>
<Mar 31, 2024 5:13:40,301 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to ADMIN.>
<Mar 31, 2024 5:13:40,420 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RESUMING.>
<Mar 31, 2024 5:13:40,655 AM CST> <Notice> <Security> <BEA-090171> <Loading the identity certificate and private key stored under the alias DemoIdentity from the jks keystore file /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/security/DemoIdentity.jks.>
<Mar 31, 2024 5:13:40,675 AM CST> <Notice> <Security> <BEA-090169> <Loading trusted certificates from the jks keystore file /home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/DemoTrust.jks.>
<Mar 31, 2024 5:13:40,689 AM CST> <Notice> <Security> <BEA-090169> <Loading trusted certificates from the jks keystore file /usr/java/jdk1.8.0/jre/lib/security/cacerts.>
<Mar 31, 2024 5:13:40,709 AM CST> <Notice> <Server> <BEA-002613> <Channel "DefaultSecure" is now listening on 192.168.50.185:7002 for protocols iiops, t3s, ldaps, https.>
<Mar 31, 2024 5:13:40,710 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default" is now listening on 192.168.50.185:7001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 5:13:40,711 AM CST> <Notice> <Server> <BEA-002613> <Channel "DefaultSecure" is now listening on 192.168.50.185:7002 for protocols iiops, t3s, ldaps, https.>
<Mar 31, 2024 5:13:40,711 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default" is now listening on 192.168.50.185:7001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 5:13:40,712 AM CST> <Notice> <WebLogicServer> <BEA-000331> <Started the WebLogic Server Administration Server "AdminServer" for domain "wls14cdomain" running in development mode.>
<Mar 31, 2024 5:13:40,730 AM CST> <Notice> <WebLogicServer> <BEA-000360> <The server started in RUNNING mode.>
<Mar 31, 2024 5:13:40,738 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RUNNING.>

# WebLogic Console Url
# http://192.168.50.185:7001/console
# https://192.168.50.185:7002/console

[amdpr1@localhost bin]$ ./startWebLogic.sh &
[1] 76884
[amdpr1@localhost bin]$ .
.
JAVA Memory arguments: -Xms256m -Xmx512m -XX:CompileThreshold=8000
.
CLASSPATH=/usr/java/jdk1.8.0/lib/tools.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/weblogic.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/../oracle_common/modules/thirdparty/ant-contrib-1.0b3.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/modules/features/oracle.wls.common.nodemanager.jar::/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/common/derby/lib/derbynet.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/common/derby/lib/derbyclient.jar:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/common/derby/lib/derby.jar
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
<Mar 31, 2024 6:08:59 AM CST> <Info> <Security> <BEA-090905> <Disabling the CryptoJ JCE Provider self-integrity check for better startup performance. To enable this check, specify -Dweblogic.security.allowCryptoJDefaultJCEVerification=true.>
<Mar 31, 2024 6:08:59 AM CST> <Info> <Security> <BEA-090906> <Changing the default Random Number Generator in RSA CryptoJ from ECDRBG128 to HMACDRBG. To disable this change, specify -Dweblogic.security.allowCryptoJDefaultPRNG=true.>
<Mar 31, 2024 6:09:00 AM CST> <Info> <WebLogicServer> <BEA-000377> <Starting WebLogic Server with Java HotSpot(TM) 64-Bit Server VM Version 25.202-b08 from Oracle Corporation.>
<Mar 31, 2024 6:09:01 AM CST> <Info> <Management> <BEA-141107> <Version: WebLogic Server 14.1.1.0.0  Thu Mar 26 03:15:09 GMT 2020 2000885>
<Mar 31, 2024 6:09:03 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STARTING.>
<Mar 31, 2024 6:09:03 AM CST> <Info> <WorkManager> <BEA-002900> <Initializing self-tuning thread pool.>
<Mar 31, 2024 6:09:04,596 AM CST> <Notice> <LoggingService> <BEA-320400> <The log file /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log will be rotated. Reopen the log file if tailing has stopped. This can happen on some platforms, such as Windows.>
<Mar 31, 2024 6:09:04,597 AM CST> <Notice> <LoggingService> <BEA-320401> <The log file has been rotated to /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log00003. Log messages will continue to be logged in /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log.>
<Mar 31, 2024 6:09:04,645 AM CST> <Notice> <Log Management> <BEA-170019> <The server log file weblogic.logging.FileStreamHandler instance=1766784475
Current log file=/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs/AdminServer.log
Rotation dir=/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/AdminServer/logs
 is opened. All server side log events will be written to this file.>
<Mar 31, 2024 6:09:05,279 AM CST> <Notice> <Security> <BEA-090946> <Security pre-initializing using security realm: myrealm>
<Mar 31, 2024 6:09:05,864 AM CST> <Notice> <Security> <BEA-090947> <Security post-initializing using security realm: myrealm>
<Mar 31, 2024 6:09:07,017 AM CST> <Notice> <Security> <BEA-090082> <Security initialized using administrative security realm: myrealm>
<Mar 31, 2024 6:09:07,679 AM CST> <Notice> <JMX> <BEA-149512> <JMX Connector Server started at service:jmx:iiop://192.168.50.185:7001/jndi/weblogic.management.mbeanservers.runtime.>
<Mar 31, 2024 6:09:08,055 AM CST> <Notice> <JMX> <BEA-149512> <JMX Connector Server started at service:jmx:iiop://192.168.50.185:7001/jndi/weblogic.management.mbeanservers.domainruntime.>
<Mar 31, 2024 6:09:08,061 AM CST> <Notice> <JMX> <BEA-149512> <JMX Connector Server started at service:jmx:iiop://192.168.50.185:7001/jndi/weblogic.management.mbeanservers.edit.>
<Mar 31, 2024 6:09:10,044 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STANDBY.>
<Mar 31, 2024 6:09:10,044 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STARTING.>
<Mar 31, 2024 6:09:10,117 AM CST> <Notice> <Log Management> <BEA-170036> <The Logging monitoring service timer has started to check for logged message counts every 30 seconds.>
<Mar 31, 2024 6:09:10,434 AM CST> <Notice> <Log Management> <BEA-170027> <The server has successfully established a connection with the Domain level Diagnostic Service.>
<Mar 31, 2024 6:09:10,822 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to ADMIN.>
<Mar 31, 2024 6:09:10,875 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RESUMING.>
<Mar 31, 2024 6:09:11,057 AM CST> <Notice> <Security> <BEA-090171> <Loading the identity certificate and private key stored under the alias DemoIdentity from the jks keystore file /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/security/DemoIdentity.jks.>
<Mar 31, 2024 6:09:11,076 AM CST> <Notice> <Security> <BEA-090169> <Loading trusted certificates from the jks keystore file /home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/DemoTrust.jks.>
<Mar 31, 2024 6:09:11,078 AM CST> <Notice> <Security> <BEA-090169> <Loading trusted certificates from the jks keystore file /usr/java/jdk1.8.0/jre/lib/security/cacerts.>
<Mar 31, 2024 6:09:11,083 AM CST> <Notice> <WebLogicServer> <BEA-000331> <Started the WebLogic Server Administration Server "AdminServer" for domain "wls14cdomain" running in development mode.>
<Mar 31, 2024 6:09:11,092 AM CST> <Notice> <WebLogicServer> <BEA-000360> <The server started in RUNNING mode.>
<Mar 31, 2024 6:09:11,095 AM CST> <Notice> <Server> <BEA-002613> <Channel "DefaultSecure" is now listening on 192.168.50.185:7002 for protocols iiops, t3s, ldaps, https.>
<Mar 31, 2024 6:09:11,096 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default" is now listening on 192.168.50.185:7001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:09:11,096 AM CST> <Notice> <Server> <BEA-002613> <Channel "DefaultSecure" is now listening on 192.168.50.185:7002 for protocols iiops, t3s, ldaps, https.>
<Mar 31, 2024 6:09:11,096 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default" is now listening on 192.168.50.185:7001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:09:11,099 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RUNNING.>
^C

[amdpr1@localhost bin]$ ./startManagedWebLogic.sh ms1 t3://192.168.50.185:7001 &
.
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
/usr/java/jdk1.8.0/bin/java -server   -Xms256m -Xmx512m -XX:CompileThreshold=8000 -cp /home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/weblogic-launcher.jar -Dlaunch.use.env.classpath=true -Dweblogic.Name=ms1 -Djava.security.policy=/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/weblogic.policy  -Djava.system.class.loader=com.oracle.classloader.weblogic.LaunchClassLoader  -javaagent:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/debugpatch-agent.jar -da -Dwls.home=/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server -Dweblogic.home=/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server   -Dweblogic.management.server=t3://192.168.50.185:7001  -Djava.endorsed.dirs=/usr/java/jdk1.8.0/jre/lib/endorsed:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/../oracle_common/modules/endorsed:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/modules/endorsed  weblogic.Server
<Mar 31, 2024 6:14:02 AM CST> <Info> <Security> <BEA-090905> <Disabling the CryptoJ JCE Provider self-integrity check for better startup performance. To enable this check, specify -Dweblogic.security.allowCryptoJDefaultJCEVerification=true.>
<Mar 31, 2024 6:14:03 AM CST> <Info> <Security> <BEA-090906> <Changing the default Random Number Generator in RSA CryptoJ from ECDRBG128 to HMACDRBG. To disable this change, specify -Dweblogic.security.allowCryptoJDefaultPRNG=true.>
<Mar 31, 2024 6:14:04 AM CST> <Info> <WebLogicServer> <BEA-000377> <Starting WebLogic Server with Java HotSpot(TM) 64-Bit Server VM Version 25.202-b08 from Oracle Corporation.>
<Mar 31, 2024 6:14:04 AM CST> <Info> <Security> <BEA-090065> <Getting boot identity from user.>
Enter username to boot WebLogic server:weblogic
Enter password to boot WebLogic server:
<Mar 31, 2024 6:16:19 AM CST> <Info> <Management> <BEA-141107> <Version: WebLogic Server 14.1.1.0.0  Thu Mar 26 03:15:09 GMT 2020 2000885>
<Mar 31, 2024 6:16:20 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STARTING.>
<Mar 31, 2024 6:16:20 AM CST> <Info> <WorkManager> <BEA-002900> <Initializing self-tuning thread pool.>
<Mar 31, 2024 6:16:21,364 AM CST> <Notice> <Log Management> <BEA-170019> <The server log file weblogic.logging.FileStreamHandler instance=1536686990
Current log file=/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/ms1/logs/ms1.log
Rotation dir=/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/ms1/logs
 is opened. All server side log events will be written to this file.>
<Mar 31, 2024 6:16:35,220 AM CST> <Notice> <Security> <BEA-090946> <Security pre-initializing using security realm: myrealm>
<Mar 31, 2024 6:16:35,891 AM CST> <Notice> <Security> <BEA-090947> <Security post-initializing using security realm: myrealm>
<Mar 31, 2024 6:16:41,260 AM CST> <Notice> <Security> <BEA-090082> <Security initialized using administrative security realm: myrealm>
<Mar 31, 2024 6:16:41,736 AM CST> <Notice> <JMX> <BEA-149512> <JMX Connector Server started at service:jmx:iiop://127.0.0.1:8001/jndi/weblogic.management.mbeanservers.runtime.>
<Mar 31, 2024 6:16:44,740 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STANDBY.>
<Mar 31, 2024 6:16:44,741 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STARTING.>
<Mar 31, 2024 6:16:44,881 AM CST> <Notice> <Log Management> <BEA-170036> <The Logging monitoring service timer has started to check for logged message counts every 30 seconds.>
<Mar 31, 2024 6:16:45,797 AM CST> <Notice> <Log Management> <BEA-170027> <The server has successfully established a connection with the Domain level Diagnostic Service.>
<Mar 31, 2024 6:16:46,234 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to ADMIN.>
<Mar 31, 2024 6:16:46,314 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RESUMING.>
<Mar 31, 2024 6:16:46,371 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[3]" is now listening on 192.168.50.185:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:16:46,381 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[1]" is now listening on 172.17.0.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:16:46,390 AM CST> <Warning> <Server> <BEA-002611> <The hostname "localhost", maps to multiple IP addresses: 127.0.0.1, 0:0:0:0:0:0:0:1.>
<Mar 31, 2024 6:16:46,391 AM CST> <Notice> <WebLogicServer> <BEA-000332> <Started the WebLogic Server Managed Server "ms1" for domain "wls14cdomain" running in development mode.>
<Mar 31, 2024 6:16:46,392 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[2]" is now listening on 192.168.122.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:16:46,393 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default" is now listening on 127.0.0.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:16:46,393 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[4]" is now listening on 0:0:0:0:0:0:0:1%lo:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:16:46,393 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[3]" is now listening on 192.168.50.185:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:16:46,393 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[1]" is now listening on 172.17.0.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:16:46,394 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[2]" is now listening on 192.168.122.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:16:46,394 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default" is now listening on 127.0.0.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:16:46,394 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[4]" is now listening on 0:0:0:0:0:0:0:1%lo:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:16:46,452 AM CST> <Notice> <WebLogicServer> <BEA-000360> <The server started in RUNNING mode.>
<Mar 31, 2024 6:16:46,494 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RUNNING.>

# setup boot.properties
# only in development mode
# <Mar 31, 2024 6:44:44,995 AM CST> <Notice> <Security> <BEA-090083> <Storing boot identity in the file: /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/ms1/security/boot.properties.>
[amdpr1@localhost bin]$ cd /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/ms1/
[amdpr1@localhost ms1]$ mkdir security
[amdpr1@localhost ms1]$ cd security/
[amdpr1@localhost security]$ vi boot.properties
password=weblogic
username=weblogic456

[amdpr1@localhost security]$ cd /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/bin

[amdpr1@localhost bin]$ ./startManagedWebLogic.sh ms1 t3://192.168.50.185:7001 &
[2] 80572
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
/usr/java/jdk1.8.0/bin/java -server   -Xms256m -Xmx512m -XX:CompileThreshold=8000 -cp /home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/weblogic-launcher.jar -Dlaunch.use.env.classpath=true -Dweblogic.Name=ms1 -Djava.security.policy=/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/weblogic.policy  -Djava.system.class.loader=com.oracle.classloader.weblogic.LaunchClassLoader  -javaagent:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server/lib/debugpatch-agent.jar -da -Dwls.home=/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server -Dweblogic.home=/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/server   -Dweblogic.management.server=t3://192.168.50.185:7001  -Djava.endorsed.dirs=/usr/java/jdk1.8.0/jre/lib/endorsed:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/../oracle_common/modules/endorsed:/home/amdpr1/Desktop/weblogic_poc/silent/Oracle/Middleware/Oracle_Home/wlserver/modules/endorsed  weblogic.Server
<Mar 31, 2024 6:50:40 AM CST> <Info> <Security> <BEA-090905> <Disabling the CryptoJ JCE Provider self-integrity check for better startup performance. To enable this check, specify -Dweblogic.security.allowCryptoJDefaultJCEVerification=true.>
<Mar 31, 2024 6:50:41 AM CST> <Info> <Security> <BEA-090906> <Changing the default Random Number Generator in RSA CryptoJ from ECDRBG128 to HMACDRBG. To disable this change, specify -Dweblogic.security.allowCryptoJDefaultPRNG=true.>
<Mar 31, 2024 6:50:42 AM CST> <Info> <WebLogicServer> <BEA-000377> <Starting WebLogic Server with Java HotSpot(TM) 64-Bit Server VM Version 25.202-b08 from Oracle Corporation.>
<Mar 31, 2024 6:50:45 AM CST> <Info> <Management> <BEA-141107> <Version: WebLogic Server 14.1.1.0.0  Thu Mar 26 03:15:09 GMT 2020 2000885>
<Mar 31, 2024 6:50:45 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STARTING.>
<Mar 31, 2024 6:50:45 AM CST> <Info> <WorkManager> <BEA-002900> <Initializing self-tuning thread pool.>
<Mar 31, 2024 6:50:46,384 AM CST> <Notice> <LoggingService> <BEA-320400> <The log file /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/ms1/logs/ms1.log will be rotated. Reopen the log file if tailing has stopped. This can happen on some platforms, such as Windows.>
<Mar 31, 2024 6:50:46,385 AM CST> <Notice> <LoggingService> <BEA-320401> <The log file has been rotated to /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/ms1/logs/ms1.log00002. Log messages will continue to be logged in /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/ms1/logs/ms1.log.>
<Mar 31, 2024 6:50:46,445 AM CST> <Notice> <Log Management> <BEA-170019> <The server log file weblogic.logging.FileStreamHandler instance=1333182627
Current log file=/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/ms1/logs/ms1.log
Rotation dir=/home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/ms1/logs
 is opened. All server side log events will be written to this file.>
<Mar 31, 2024 6:50:47,622 AM CST> <Notice> <Security> <BEA-090946> <Security pre-initializing using security realm: myrealm>
<Mar 31, 2024 6:50:48,197 AM CST> <Notice> <Security> <BEA-090947> <Security post-initializing using security realm: myrealm>
<Mar 31, 2024 6:50:51,032 AM CST> <Notice> <Security> <BEA-090082> <Security initialized using administrative security realm: myrealm>
<Mar 31, 2024 6:50:51,589 AM CST> <Notice> <JMX> <BEA-149512> <JMX Connector Server started at service:jmx:iiop://127.0.0.1:8001/jndi/weblogic.management.mbeanservers.runtime.>
<Mar 31, 2024 6:50:55,291 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STANDBY.>
<Mar 31, 2024 6:50:55,291 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to STARTING.>
<Mar 31, 2024 6:50:55,434 AM CST> <Notice> <Log Management> <BEA-170036> <The Logging monitoring service timer has started to check for logged message counts every 30 seconds.>
<Mar 31, 2024 6:50:55,993 AM CST> <Notice> <Log Management> <BEA-170027> <The server has successfully established a connection with the Domain level Diagnostic Service.>
<Mar 31, 2024 6:50:56,321 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to ADMIN.>
<Mar 31, 2024 6:50:56,391 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RESUMING.>
<Mar 31, 2024 6:50:56,396 AM CST> <Notice> <JMX> <BEA-149535> <JMX Resiliency Activity Server=All Servers : Resolving connection list DomainRuntimeServiceMBean>
<Mar 31, 2024 6:50:56,453 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[3]" is now listening on 192.168.50.185:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:50:56,463 AM CST> <Notice> <JMX> <BEA-149535> <JMX Resiliency Activity Server=ms1 :
Received a CONNECT EVENT
>
<Mar 31, 2024 6:50:56,463 AM CST> <Notice> <JMX> <BEA-149535> <JMX Resiliency Activity Server=ms1 : Starting JMX connection. forceReconnect value: false>
<Mar 31, 2024 6:50:56,481 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[1]" is now listening on 172.17.0.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:50:56,484 AM CST> <Warning> <Server> <BEA-002611> <The hostname "localhost", maps to multiple IP addresses: 127.0.0.1, 0:0:0:0:0:0:0:1.>
<Mar 31, 2024 6:50:56,484 AM CST> <Notice> <WebLogicServer> <BEA-000332> <Started the WebLogic Server Managed Server "ms1" for domain "wls14cdomain" running in development mode.>
<Mar 31, 2024 6:50:56,494 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[2]" is now listening on 192.168.122.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:50:56,494 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default" is now listening on 127.0.0.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:50:56,495 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[4]" is now listening on 0:0:0:0:0:0:0:1%lo:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:50:56,495 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[3]" is now listening on 192.168.50.185:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:50:56,495 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[1]" is now listening on 172.17.0.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:50:56,495 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[2]" is now listening on 192.168.122.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:50:56,496 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default" is now listening on 127.0.0.1:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:50:56,496 AM CST> <Notice> <Server> <BEA-002613> <Channel "Default[4]" is now listening on 0:0:0:0:0:0:0:1%lo:8001 for protocols iiop, t3, ldap, snmp, http.>
<Mar 31, 2024 6:50:56,530 AM CST> <Notice> <WebLogicServer> <BEA-000360> <The server started in RUNNING mode.>
<Mar 31, 2024 6:50:56,572 AM CST> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RUNNING.>
<Mar 31, 2024 6:50:57,974 AM CST> <Notice> <JMX> <BEA-149535> <JMX Resiliency Activity Server=ms1 : Registering call backs for server>
<Mar 31, 2024 6:50:57,974 AM CST> <Notice> <JMX> <BEA-149535> <JMX Resiliency Activity Server=ms1 : Initializing callbacks>
<Mar 31, 2024 6:50:58,015 AM CST> <Notice> <JMX> <BEA-149535> <JMX Resiliency Activity Server=ms1 : Added MBeanServerConnection in DomainRuntimeServiceMBean >
<Mar 31, 2024 6:50:58,024 AM CST> <Notice> <JMX> <BEA-149535> <JMX Resiliency Activity Server=ms1 : Callback is done>
<Mar 31, 2024 6:50:58,025 AM CST> <Warning> <JMX> <BEA-149506> <Established JMX Connectivity with ms1 at the JMX Service URL of service:jmx:t3://127.0.0.1:8001/jndi/weblogic.management.mbeanservers.runtime.>
<Mar 31, 2024 6:50:58,045 AM CST> <Notice> <JMX> <BEA-149535> <JMX Resiliency Activity Server=ms1 : Server is reachable, after a single attempt. Will return from the retry.>
^C

[amdpr1@localhost bin]$ cd /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/servers/ms1/security/
[amdpr1@localhost security]$ more boot.properties
#Sun Mar 31 06:44:45 CST 2024
password={AES256}h8SXXq34+uiw1PfpqqmIKNOfubR26s0VQ3L/AfVXq5c\=
username={AES256}pDQmrWi/OMOt6XcIjpl/k9Zk6UtxOMCCGareM+X2phQ\=

[amdpr1@localhost security]$ cd /home/amdpr1/Desktop/weblogic_poc/domains/wls14cdomain/security
[amdpr1@localhost security]$ ls
DefaultAuthenticatorInit.ldift  DefaultRoleMapperInit.ldift  DemoIdentity.jks  SerializedSystemIni.dat  XACMLRoleMapperInit.ldift
