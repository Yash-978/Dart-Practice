import 'dart:io';

void main() {
  int i, j, k;

  for (i = 1; i <= 5; i++) {
    k = 5 - i + 1;
    for (j = 1; j <= 5; j++) {
      stdout.write(k);
      k = k + 5;
    }
    print('');
  }
}
