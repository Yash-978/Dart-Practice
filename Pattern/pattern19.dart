import 'dart:io';

void main() {
  int i, j;

  for (i = 1; i <= 5; i++) {
    for (j = 0; j < 5; j++) {
      stdout.write('${(i+j)%2}');
    }
    print('');
  }
}
