io.write ("Setting Up SSH configuration.")
print ("Adduser if no user available")
os.execute("adduser")
os.execute("service sshd onestart")
os.execute("echo 'sshd_enable='YES'' >> /etc/rc.conf")
os.execute("echo 'Port 22' >> /etc/ssh/sshd_config")

os.execute("echo 'Protocol 2' >> /etc/ssh/sshd_config")

os.execute("echo 'LoginGraceTime 60' >> /etc/ssh/sshd_config")

os.execute("echo 'PermitRootLogin no' >> /etc/ssh/sshd_config")
os.execute("echo 'PasswordsAuthentication yes' >> /etc/ssh/sshd_config")

os.execute("echo 'PermitEmptyPassword no' >> /etc/ssh/sshd_config")

os.execute("echo 'UseDNS no' >> /etc/ssh/sshd_config")

os.execute("ssh-keygen -t rsa")
print ("Restarting SSH Service")
os.execute ("service sshd restart")
print ("SSH server configuration complete")
