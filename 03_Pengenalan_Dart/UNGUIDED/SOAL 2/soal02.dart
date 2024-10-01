import 'dart:io';

void main() {
  stdout.write("Masukkan tinggi piramida: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    int? tinggi = int.tryParse(input);

    if (tinggi != null && tinggi > 0) {
      for (int i = 1; i <= tinggi; i++) {
        // Mencetak spasi
        for (int j = 1; j <= tinggi - i; j++) {
          stdout.write(" ");
        }
        // Mencetak bintang
        for (int k = 1; k <= (2 * i - 1); k++) {
          stdout.write("*");
        }
        // Pindah ke baris berikutnya
        print("");
      }
    } else {
      print("Tinggi harus berupa angka positif.");
    }
  } else {
    print("Input tidak valid.");
  }
}
