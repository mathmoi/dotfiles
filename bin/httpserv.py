import http.server, ssl

class MyHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_my_headers()

        http.server.SimpleHTTPRequestHandler.end_headers(self)

    def send_my_headers(self):
        self.send_header("Cross-Origin-Opener-Policy", "same-origin")
        self.send_header("Cross-Origin-Embedder-Policy", "require-corp")

if __name__ == '__main__':
    server_address = ('192.168.2.36', 4443)
    httpd = http.server.HTTPServer(server_address, MyHTTPRequestHandler)
    httpd.socket = ssl.wrap_socket(httpd.socket,
                                server_side=True,
                                certfile='/home/mathmoi/localhost.pem',
                                ssl_version=ssl.PROTOCOL_TLS)
    httpd.serve_forever()