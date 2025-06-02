<div align="center">
<h1>TSP Solver</h1>
<h2>(Tugas Tambahan IF2211 Strategi Algoritma)</h2>
</div>

## Table of Contents
- [About](#about)
- [Get Started](#get-started)
- [How To Use It](#how-to-use-it)
- [Author](#author)

## About
TSP Solver adalah program penyelesai **Travelling Salesman Problem** (TSP), yaitu permasalahan pencarian rute minimum seorang salesman yang harus mengunjungi setiap kota satu kali dan kembali ke kota asal dengan total biaya seminimal mungkin.

Program ini menerima masukan berupa matriks biaya perjalanan antar kota dan menghitung jalur paling optimal dengan algoritma brute force (cocok untuk jumlah kota kecil).


## Get Started
- Pastikan Ruby telah terinstal pada sistem Anda.
  - Jika belum, install dari: https://www.ruby-lang.org/en/downloads/
- Clone repository ini:
  ```bash
  git clone https://github.com/username/tsp-solver.git
  cd tsp-solver
  ```

## How To Use It

### 1. Menjalankan Program
- Arahkan ke folder utama project
- Jalankan program dengan perintah berikut:
  ```bash
  ruby main.rb nama_file_input.txt
  ```
- Contoh:
  ```bash
  ruby main.rb sample.txt
  ```

> **Catatan:** File input (`sample.txt`) harus disimpan dalam folder `tests`

### 2. Format Input
File input merupakan file teks dengan format:
```
N
a_00 a_01 a_02 ... a_0(N-1)
a_10 a_11 a_12 ... a_1(N-1)
...
a_(N-1)0 ... a_(N-1)(N-1)
```

Keterangan:
- `N` adalah jumlah kota.
- Setiap `a_ij` adalah biaya perjalanan dari kota `i` ke kota `j`.
- Matriks bisa **simetris** (biaya ke sana dan balik sama) atau **asimetris**.

### 3. Output
Program akan mencetak:
- **Cost**: total biaya perjalanan minimum.
- **Tour**: urutan kunjungan kota (dimulai dan diakhiri di kota 0).

Contoh output:
```
Cost: 73
Tour: 0 3 1 2 0
```

## Author
Noumisyifa Nabila Nareswari  
13523058 - K01  
Teknik Informatika ITB
