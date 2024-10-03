// Mendefinisikan Fungsi
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

// Memanggil Fungsi
void main() {
  print(factorial(6)); // Output: 720

  // Memanggil sapaan
  String pesan = sapaan("Dart");
  print(pesan); // Output: Halo, Dart!

  // Memanggil greet
  greet('Alice', 25); // Output: Hello Alice, you are 25 years old.
}

// Mengembalikan Nilai
String sapaan(String nama) {
  return "Halo, $nama!";
}

// Menambahkan Parameter
void greet(String name, int age) {
  print('Hello $name, you are $age years old.');
}

