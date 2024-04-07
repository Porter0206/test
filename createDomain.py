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
