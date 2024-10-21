void main() {
  // Create the 2D list
  List<List<int>> matrix = createMatrix();

  // Display the list
  printMatrix(matrix);

  // Search for a number (you can change this to test with other values)
  int numberToSearch = 2; // Example number
  searchInMatrix(matrix, numberToSearch);

  numberToSearch = 5; // Another example number
  searchInMatrix(matrix, numberToSearch);
}

List<List<int>> createMatrix() {
  List<List<int>> matrix = [];

  // Row 1: 3 numbers that are multiples of 5 starting from 5
  matrix.add([for (int i = 1; i <= 3; i++) 5 * i]);

  // Row 2: 4 even numbers starting from 2
  matrix.add([for (int i = 1; i <= 4; i++) 2 * i]);

  // Row 3: 5 squares of natural numbers starting from 1
  matrix.add([for (int i = 1; i <= 5; i++) i * i]);

  // Row 4: 6 natural numbers starting from 3
  matrix.add([for (int i = 0; i < 6; i++) 3 + i]);

  return matrix;
}

void printMatrix(List<List<int>> matrix) {
  print('Isi List:');
  for (var row in matrix) {
    print(row.join(' '));
  }
}

void searchInMatrix(List<List<int>> matrix, int number) {
  print('\nBilangan yang dicari: $number');

  bool found = false;

  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == number) {
        found = true;
        print('$number berada di:');
        print('baris ${i + 1} kolom ${j + 1}'); // Using 1-based index
      }
    }
  }

  if (!found) {
    print('$number tidak ditemukan.');
  }
}
