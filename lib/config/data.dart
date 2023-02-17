import 'package:tv_series_streaming_app/model/categorie_model.dart';
import 'package:tv_series_streaming_app/model/movie_model.dart';

List<Movie> seriesList = [
  Movie(
    name: "Wednesday",
    categorie: "Adventure",
    rating: 8.5,
    image: "st1.jpg",
  ),
  Movie(
    name: "The Witcher",
    image: "st2.jpg",
    categorie: "Thriller",
    rating: 8.7,
  ),
  Movie(
    name: "Emily in the Paris",
    image: "st3.jpg",
    categorie: "Romantic",
    rating: 7.4,
  ),
  Movie(
    name: "Treason",
    image: "st4.jpg",
    categorie: "Scientific",
    rating: 7.8,
  ),
  Movie(
    name: "The White Lotus",
    image: "st5.jpg",
    categorie: "Drama",
    rating: 8.9,
  ),
];

List<Categorie> categories = [
  Categorie(
    name: "Romantic",
    image: "ct0.jpg",
  ),
  Categorie(
    name: "Adventure",
    image: "ct1.jpg",
  ),
  Categorie(
    name: "Scientific",
    image: "ct2.jpg",
  ),
  Categorie(
    name: "Drama",
    image: "ct3.jpg",
  ),
  Categorie(
    name: "Thriller",
    image: "ct4.jpg",
  ),
  Categorie(
    name: "Horror",
    image: "ct5.jpg",
  ),
  Categorie(
    name: "Comedy",
    image: "ct6.jpg",
  ),
  Categorie(
    name: "Fiction",
    image: "ct7.jpg",
  ),
];
