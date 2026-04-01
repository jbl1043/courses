command: grep "GET" log.txt | sed "s/500/SERVER_ERROR/" > README.md
replaces all "500" in any GET api call to "SERVER_ERROR"

192.168.1.10 - - [01/Apr/2026:09:15:22] "GET /index.html" 200 1024
192.168.1.15 - - [01/Apr/2026:09:15:25] "GET /api/users" SERVER_ERROR 312
192.168.1.10 - - [01/Apr/2026:09:16:01] "GET /dashboard" 200 4096
192.168.1.15 - - [01/Apr/2026:09:17:00] "GET /api/users" SERVER_ERROR 312
192.168.1.20 - - [01/Apr/2026:09:17:30] "GET /about" 404 128
