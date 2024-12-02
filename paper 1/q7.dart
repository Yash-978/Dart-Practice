import 'dart:io';

class Movie {
  String? title, genre;
  int? releasedYear;

  Movie(this.title, this.genre, this.releasedYear);

  void getDetail() {
    print('Title: $title');
    print('Genre: $genre');
    print('Released Year: $releasedYear');
  }
}

void main() {
  int n;
  stdout.write('Enter number of movies: ');
  n = int.parse(stdin.readLineSync()!);

  List<Movie> movies = [];
  for (int i = 0; i < n; i++) {
    stdout.write("Enter title: ");
    String? title = stdin.readLineSync();
    stdout.write("Enter genre: ");
    String? genre = stdin.readLineSync();
    stdout.write("Enter released year: ");
    int? releasedYear = int.parse(stdin.readLineSync()!);
    movies.add(Movie(title, genre, releasedYear));
  }

  for (int i = 0; i < n; i++) {
    print("Details of Movie ${i + 1}:");
    movies[i].getDetail();
  }
}

