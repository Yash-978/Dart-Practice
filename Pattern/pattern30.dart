import 'dart:io';

void main() {
  int i, j,n=65;

  for (i = 1; i <= 5; i++) {
    
    for (j = 1; j <= 5; j++) {
      String k = String.fromCharCode(n++);
      stdout.write('${k}');
    }
    print('');
  }
}
