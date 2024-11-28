import 'dart:io';

void main() {
  int x = 1;
  for (int i = 1; i <= 4; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('${x} ');
      x++;
    }
    print(' ');
  }
}
