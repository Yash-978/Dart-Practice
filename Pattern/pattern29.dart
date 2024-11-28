import 'dart:io';

void main() {
  int i, j;

  for (i = 1; i <= 5; i++) {
    
    for (j = 5; j >= 1; j--) {
      String k = String.fromCharCode(64 + j);
      stdout.write('${k}');
    }
    print('');
  }
}
