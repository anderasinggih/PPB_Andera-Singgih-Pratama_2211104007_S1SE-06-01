import 'dart:math';
import 'dart:io'; // Importing dart:io for stdout

void generateMatrix(int A, int B) {
  List<List<int>> matrix =
      List.generate(A, (_) => List.generate(B, (_) => Random().nextInt(10)));

  print('Matriks $A x $B:');
  for (var row in matrix) {
    print(row.join(' '));
  }

  print('\nHasil transpose:');
  for (int i = 0; i < B; i++) {
    for (int j = 0; j < A; j++) {
      // Print each element followed by a space
      stdout.write('${matrix[j][i]} ');
    }
    print(''); // Move to the next line after each row
  }
}

void main() {
  generateMatrix(3, 2); // Example call
}
