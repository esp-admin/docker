docker exec mosquitto chown root /mosquitto/config/password_file.txt
docker exec mosquitto mosquitto_passwd -c -b /mosquitto/config/password_file.txt user pass1234
pause