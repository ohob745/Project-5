class Movie {
  Movie({
    required this.isShow,
    required this.filmId,
    required this.filmName,
    required this.image,
    required this.imagePoster,
    required this.story,
    required this.primeLanguage,
    required this.releaseDates,
    required this.ageRating,
    required this.durationMins,
    required this.trailer,
    required this.genres,
    required this.cast,
    required this.showDates,
    required this.subtitles,
    required this.location,
    required this.showTimes,
  });
  late final int isShow;
  late final int filmId;
  late final String filmName;
  late final String image;
  late final String imagePoster;
  late final String story;
  late final String primeLanguage;
  late final String releaseDates;
  late final String ageRating;
  late final int durationMins;
  late final String trailer;
  late final String genres;
  late final String cast;
  late final List<String> showDates;
  late final List<String> subtitles;
  late final List<String> location;
  late final List<String> showTimes;

  Movie.fromJson(Map<String, dynamic> json) {
    filmId = json['filmId'];
    isShow = json['isShow'];
    filmName = json['filmName'];
    image = json['image'];
    imagePoster = json['imagePoster'];
    story = json['story'];
    primeLanguage = json['primeLanguage'];
    releaseDates = json['releaseDates'];
    ageRating = json['ageRating'];
    durationMins = json['durationMins'];
    trailer = json['trailer'];
    genres = json['genres'];
    cast = json['cast'];
    showDates = List.castFrom<dynamic, String>(json['showDates']);
    subtitles = List.castFrom<dynamic, String>(json['subtitles']);
    location =  List.castFrom<dynamic, String>(json['location']);
    showTimes = List.castFrom<dynamic, String>(json['showTimes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['filmId'] = filmId;
    _data['filmName'] = filmName;
    _data['isShow'] = isShow;
    _data['image'] = image;
    _data['imagePoster'] = imagePoster;
    _data['story'] = story;
    _data['primeLanguage'] = primeLanguage;
    _data['releaseDates'] = releaseDates;
    _data['ageRating'] = ageRating;
    _data['durationMins'] = durationMins;
    _data['trailer'] = trailer;
    _data['genres'] = genres;
    _data['cast'] = cast;
    _data['showDates'] = showDates;
    _data['subtitles'] = subtitles;
    _data['location'] = location;
    _data['showTimes'] = showTimes;
    return _data;
  }
}
class Locations {
  Locations({
    required this.title,
    required this.subtitle,
    required this.googleMapLink,
    required this.isFavorite,
  });
  late final String title;
  late final String subtitle;
  late final String googleMapLink;
  late bool isFavorite=false;
  
  Locations.fromJson(Map<String, dynamic> json){
    title = json['title'];
    subtitle = json['subtitle'];
    googleMapLink = json['googleMapLink'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['subtitle'] = subtitle;
    _data['googleMapLink'] = googleMapLink;
    return _data;
  }
}