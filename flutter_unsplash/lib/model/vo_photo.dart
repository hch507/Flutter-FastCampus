class Result {
  String id;
  String createAt;
  String like;
  String thumbUrl;

  Result({
    required this.id,
    required this.createAt,
    required this.like,
    required this.thumbUrl,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      id: json['id']??' ',
      createAt: json['created_at']??' ',
      like: json['likes']?? ' ',
      thumbUrl: json['urls']?['thumb']??' ',
    );
  }
}