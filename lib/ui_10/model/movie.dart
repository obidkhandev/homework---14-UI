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
    plot: "The writing style of a film summary is not a trivial task. One must take the time to consider what key elements make up the narrative and how they function within the movie, as well as how the director has set up the story. If you’re wondering how to write a film summary, here are some helpful tips on how to do it effectivel",
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
    ],
  ),
  Movie(
    poster: 'assets/ui_10/images/poster_2.jpg',
    id: 2,
    year: 2020,
    numOfRating: 1502,
    critingReview: 70,
    rating: 7.7,
    genra: ['Action', 'Comedy'],
    title: 'Ford v Ferrari',
    backdrop: 'assets/ui_10/images/backdrop_2.jpg',
    plot: "Film summaries are short, written descriptions of favorite movies that help people decide if they want to watch them or not. They can be found on websites like IMDB and Rotten Tomatoes, and are often used by moviegoers to make decisions about which films to see.",
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
    ],
  ),
  Movie(
    poster: 'assets/ui_10/images/poster_3.jpg',
    id: 3,
    year: 2022,
    numOfRating: 180945,
    critingReview: 90,
    rating: 8.2,
    genra: ['Multi', 'Comedy'],
    title: 'Onward',
    backdrop: 'assets/ui_10/images/backdrop_3.jpg',
    plot: "There are a few steps that you need to take in order to write a movie summary. The first step is to read the entire movie and take notes on what you liked and didn’t like. After you have watched the movie, start thinking about what the main character themes and ideas of the movie are.",
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
    ],
  ),
];
