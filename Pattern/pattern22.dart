import 'dart:io';

void main() {
  int i, j;

  for (i = 0; i < 5; i++) {
    for (j = 1; j <= 5; j++) {
      stdout.write('${(i%2)}');
    }
    print('');
  }
}