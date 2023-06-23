import socket

HOST = '0.0.0.0'  # Replace with the IP address of the target program
PORT = 2222  # Use the same port number as the server

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.connect((HOST, PORT))
    while True:
        cmd = input('Enter command: ')
        s.sendall(cmd.encode('utf-8'))