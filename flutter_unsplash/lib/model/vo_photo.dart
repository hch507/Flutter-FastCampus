class Result {

  String? createAt = null;
  int? like = null;
  Urls urls;
  User user;

  Result({
    this.createAt,
    this.like,
    required this.urls,
    required this.user
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      createAt: json['created_at'],
      like: json['likes'],
      urls: Urls.fromJson(json['urls']),
      user: User.fromJson(json['user']),

    );
  }
}

class Urls {
  String? thumb = null;

  Urls({
    this.thumb
  });

  factory Urls.fromJson(Map<String, dynamic> json){
    return Urls(
        thumb: json['thumb']
    );
  }
}

class User {
  String? username = null;

  User({
    this.username
  });

  factory User.fromJson(Map<String, dynamic> json){
    return User(
        username: json['username']
    );
  }
}

class Photo {

  final List<Result> result;

  Photo({
    required this.result
  });

  factory Photo.fromJson(Map<String, dynamic> json){

    if (json['results'] is List) {
      var resultList = json['results'] as List;
      var resultObjects = resultList.map((e) => Result.fromJson(e)).toList();
      return Photo(result: resultObjects);
    } else {
      return Photo(result: []);
    }
  }
}