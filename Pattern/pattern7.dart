import 'dart:io';
void main()
{
  int i,j;
  int k=1;
  for(i=1;i<=5;i++)
  {
    for(j=1;j<=5;j++)
    {
      stdout.write(' $k');
      k+=2;
    }
    print('');
  }

}