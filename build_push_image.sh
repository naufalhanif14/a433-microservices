#!/bin/bash

# Membuat Docker Image dari Dockerfile
docker build -t item-app:v1 .

# Melihat Daftar Image di Lokal
docker images

# Mengubah Nama Image Agar Sesuai Dengan Format Docker Hub
docker tag item-app:v1 ghcr.io/naufalhanif14/item-app:v2

# Mengekspor Github Token pada Variabel CR_PAT
export CR_PAT=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

# Mencetak nilai dari Variabel CR_PAT Kemudian Outputnya Diteruskan ke Perintah Docker login Menggunakan Simbol Pipeline
echo $CR_PAT | docker login ghcr.io -u naufalhanif14 --password-stdin

# Mengunggah image ke Docker Hub
docker push ghcr.io/naufalhanif14/item-app:v2
