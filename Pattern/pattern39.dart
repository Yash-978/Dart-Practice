import 'dart:io';

void main() {
  int i, j;
  for (i = 5; i >= 1; i--) {
    for (j =i; j <= 5; j++) {
      stdout.write('$j ');
    }
    print(' ');
  }
}