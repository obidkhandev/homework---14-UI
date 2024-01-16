class Movie {
  final int id, year, numOfRating, critingReview, metascoreRating;
  final double rating;
  final List<String> genra;
  final String plot, title, poster, backdrop;
  final List<Map> cast;

  Movie({
    required this.poster,
    required this.id,
    required this.year,
    required this.numOfRating,
    required this.critingReview,
    required this.metascoreRating,
    required this.rating,
    required this.genra,
    required this.plot,
    required this.title,
    required this.backdrop,
    required this.cast,
  });
}

List<Movie> movies = [
  Movie(
      poster: 'assets/ui_10/images/poster_1.jpg',
      id: 1,
      year: 2020,
      numOfRating: 150212,
      critingReview: 50,
      rating: 7.3,
      genra: ['Action', 'Drama'],
      title: 'BloodShot',
      backdrop: 'assets/ui_10/images/backdrop_1.jpg',
      plot: 'plotText',
      metascoreRating: 76,
      cast: [
        {
          "originalName": "James Mongold",
          "movieName": "Director",
          "image": 'assets/ui_10/images/actor_1.png'
        },
        {
          "originalName": "Matt Damon",
          "movieName": "Carroll",
          "image": 'assets/ui_10/images/actor_2.png'
        },
        {
          "originalName": "Christian Damon",
          "movieName": "Ken Miles",
          "image": 'assets/ui_10/images/actor_3.png'
        },
        {
          "originalName": "Caitriona Balfe",
          "movieName": "Mollie",
          "image": 'assets/ui_10/images/actor_4.png'
        },
      ],)
];
