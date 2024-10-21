# Aplikasi e-Offices

Aplikasi e-Offices adalah sistem manajemen dokumen yang dibangun menggunakan PHP dan MariaDB. Aplikasi ini dirancang untuk mempermudah pengelolaan surat dan dokumen penting dalam organisasi.

## Daftar Isi
- [Prasyarat](#prasyarat)
- [Instalasi](#instalasi)
- [Docker-compose](#docker-compose)
- [Cara Menggunakan](#cara-menggunakan)
- [Cara Deploy](#cara-deploy)

## Prasyarat
Sebelum memulai, pastikan Anda telah menginstal:
- Docker

## Instalasi
1. Clone repository ini ke mesin lokal Anda:
   ```bash
   git clone https://github.com/MuamarAzdiansyah/amar.git
   cd amar

Siapkan file konfigurasi Docker:

## Docker-compose
Pastikan Anda memiliki file docker-compose.yml di dalam direktori aplikasi. Jika tidak ada, Anda bisa membuatnya dengan konfigurasi yang sesuai.

```yaml
version: "3"
services:
  app:
    build:
      context: .
      dockerfile: Dockerfile
    container_name: surat_app
    ports:
      - "8080:80"
    volumes:
      - ./src:/var/www/html
    networks:
      - surat_network
    environment:
      DB_HOST: db
      DB_USER: 
      DB_PASS: 
      DB_NAME: 

  db:
    image: mariadb:latest
    container_name: surat_db
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: 
      MYSQL_USER: 
      MYSQL_PASSWORD: 
    volumes:
      - ./database:/var/lib/mysql
    ports:
      - "3306:3306"
    networks:
      - surat_network

networks:
  surat_network:
    driver: bridge

## Cara Menggunakan
Setelah aplikasi berjalan, akses aplikasi melalui browser Anda di [http://localhost:8080](http://localhost:8080) (atau port yang Anda tentukan dalam file `docker-compose.yml`).

## Cara Deploy
Untuk membangun dan menjalankan aplikasi, gunakan perintah berikut:

```bash
docker-compose up -d
