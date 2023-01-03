#!/bin/bash

# Membuat Docker Image dari Dockerfile
docker build -t karsajobs:latest .

# Mengubah Nama Image Agar Sesuai Dengan Format GitHub Packages
docker tag karsajobs:latest ghcr.io/naufalhanif14/karsajobs:latest

# Mengekspor Github Token pada Variabel CR_PAT
export CR_PAT=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

# Mencetak nilai dari Variabel CR_PAT Kemudian Outputnya Diteruskan ke Perintah Docker login Menggunakan Simbol Pipeline
echo $CR_PAT | docker login ghcr.io -u naufalhanif14 --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/naufalhanif14/karsajobs:latest
