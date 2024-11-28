import 'dart:io';

void main() {
  int i, j;

  for (i = 1; i <= 5; i++) {
    
    for (j = 1; j <= 5; j++) {
      String k = String.fromCharCode(64 + j);
      stdout.write('${k}');
    }
    print('');
  }
}
