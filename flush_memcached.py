#!/usr/bin/python2
import socket
import sys

if len(sys.argv) < 2:
    print "Usage: %s <serverip>" % sys.argv[0]
    exit()

server = sys.argv[1]
port = 11211

s = socket.socket()
s.connect((server, port))
s.send("flush_all\r\n")
print s.recv(1024)
s.send("quit\r\n")
print s.recv(1024)
print "flush_all sent to %s" % server
