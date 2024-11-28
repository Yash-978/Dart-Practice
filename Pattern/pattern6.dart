import 'dart:io';
void main()
{
   int i,j;
   int n=5,k=1;
    for(i=1;i<=5;i++)
    {
      for(j=1;j<=n;j++)
      {
        stdout.write(" $k ");
        k++;
      }
      print('');
    }
}