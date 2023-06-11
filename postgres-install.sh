#!/bin/bash

# Aktualizacja systemu
apt-get update
apt-get upgrade -y

# Instalacja PostgreSQL na maszynie
apt-get install -y postgresql postgresql-contrib
systemctl enable postgresql.service
systemctl start postgresql.service

# Ustawienie hasła dla użytkownika postgres
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'agh_lab';"

systemctl stop postgresql.service
# Ustawienie hasła użytkownika systemowego postgres
echo "postgres:agh_lab" | sudo chpasswd

# Ustawienie katalogu domowego użytkownika postgres na /home/postgres
sudo usermod --home /home/postgres postgres

# Dodanie użytkownika postgres do grupy sudo
sudo usermod -aG sudo postgres

# Konfiguracja SSH dla użytkownika postgres
sudo sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd.service

# Konfiguracja PostgreSQL
# Zezwolenie w pliku pg_hba na to że dowolny użytkownik z dowolnego adresu IP może łączyć się z bazą danych
echo "host all all 0.0.0.0/0 md5" >> /etc/postgresql/11/main/pg_hba.conf
# Zezwolenie na nasłuchiwanie połączeń na wszystkich adresach IP
echo "listen_addresses='*'" >> /etc/postgresql/11/main/postgresql.conf
# Restart po zmianach
systemctl restart postgresql.service
