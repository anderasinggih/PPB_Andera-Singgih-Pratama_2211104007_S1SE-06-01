import 'dart:io';

String evaluasiNilai(int nilai) {
  if (nilai > 70) {
    return "$nilai merupakan Nilai A";
  } else if (nilai > 40) {
    return "$nilai merupakan Nilai B";
  } else if (nilai > 0) {
    return "$nilai merupakan Nilai C";
  } else {
    return ""; // Teks kosong
  }
}

void main() {
  while (true) {
    stdout.write("Masukkan nilai (atau ketik 'exit' untuk keluar): ");
    String? input = stdin.readLineSync(); // Membaca input dari pengguna

    if (input != null) {
      if (input.toLowerCase() == 'exit') {
        print("Program dihentikan.");
        break; // Keluar dari loop jika pengguna mengetik 'exit'
      }

      int? nilai = int.tryParse(input); // Mengonversi input ke integer

      if (nilai != null) {
        print(evaluasiNilai(nilai)); // Menampilkan hasil evaluasi
      } else {
        print("Input tidak valid. Harap masukkan angka.");
      }
    } else {
      print("Tidak ada input yang diberikan."); // Menangani kasus input null
    }
  }
}
