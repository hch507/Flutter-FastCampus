class Result {

  String? createAt = null;
  String? like = null;
  Urls urls;
  User user;

  Result({
    this.createAt,
    this.like,
    this.urls,
    this.user
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      createAt: json['created_at'],
      like: json['likes'],

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
        username: json['thumb']
    );
  }
}