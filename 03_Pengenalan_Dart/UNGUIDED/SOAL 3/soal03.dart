import 'dart:io';

// Fungsi untuk mengecek apakah bilangan prima atau tidak
bool cekBilanganPrima(int angka) {
  if (angka <= 1) {
    return false;
  }

  // Memeriksa apakah ada pembagi dari 2 hingga angka/2
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  // Meminta input dari user
  print('Masukkan bilangan bulat: ');
  int angka = int.parse(stdin.readLineSync()!);

  // Memeriksa apakah bilangan tersebut prima atau bukan
  if (cekBilanganPrima(angka)) {
    print('$angka merupakan bilangan prima');
  } else {
    print('$angka bukan bilangan prima');
  }
}
