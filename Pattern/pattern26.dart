import 'dart:io';

void main() {
  int i, j;

  for (i = 1; i <= 5; i++) {
    String k = String.fromCharCode(64 + i);
    for (j = 1; j <= 5; j++) {
      stdout.write('${k}');
    }
    print('');
  }
}