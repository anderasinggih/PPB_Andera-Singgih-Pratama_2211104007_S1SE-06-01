void main() {
  int num1 = 12; // Example number 1
  int num2 = 8; // Example number 2

  print('Bilangan 1: $num1');
  print('Bilangan 2: $num2');

  int lcm = calculateLCM(num1, num2);
  print('KPK $num1 dan $num2 = $lcm');
}

int calculateGCD(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

int calculateLCM(int a, int b) {
  return (a * b) ~/ calculateGCD(a, b); // LCM = (a * b) / GCD(a, b)
}
