# Import modules
import subprocess
import ipaddress

# Prompt the user to input a network address

# Create the network

# Get all hosts on that network

# Configure subprocess to hide the console window
#info = subprocess.STARTUPINFO()
#info.dwFlags |= subprocess.STARTF_USESHOWWINDOW
#info.wShowWindow = subprocess.SW_HIDE

# For each IP address in the subnet, 
# run the ping command with subprocess.popen interface

ip_net = '192.168.222.50'

output = subprocess.Popen(['./is_alive.sh', ip_net], stdout=subprocess.PIPE,startupinfo=None).communicate()[0]

if "Offline" in output.decode('utf-8'):
    print(str(ip_net), "is Offline")
else:
    print(str(ip_net), "is Online")
