class Movie {
  String title;
  String studio;
  String rating;
  Movie(this.title, this.studio, {this.rating = 'PG'});
  static List<Movie> getPG(List<Movie> movies) {
    List<Movie> res = [];
    for (int i = 0; i < movies.length; i++) {
      if (movies[i].rating.contains('PG')) {
        res.add(movies[i]);
      }
    }
    return res;
  }
}

void main() {
  Movie movie1 = Movie('Casino Royal', 'Eon Productions', rating: 'r');
  Movie movie2 = Movie('Casino Royal', 'Eon Productions', rating: 'PG13');
  Movie movie3 = Movie('Casino Royal', 'Eon Productions', rating: 'PG');
  List<Movie> movies = [movie1, movie2, movie3];
  List<Movie> res = Movie.getPG(movies);
  for (int i = 0; i < res.length; i++) {
    print(res[i].rating);
  }
}
