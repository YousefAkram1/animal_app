abstract class ApiPath {
  static String search = 'images/search';
  static String getImagePathById({required String animalId}) =>
      'images/$animalId';
  static String favouritePath = "v1/favourites";
}
