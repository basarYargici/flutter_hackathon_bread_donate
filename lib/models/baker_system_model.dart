// To parse this JSON data, do
//
//     final baker = bakerFromJson(jsonString);

import 'dart:convert';

Baker bakerFromJson(String str) => Baker.fromJson(json.decode(str));

String bakerToJson(Baker data) => json.encode(data.toJson());

class Baker {
  Baker({
    this.freeBread,
    this.givenBread,
  });

  Bread freeBread;
  Bread givenBread;

  factory Baker.fromJson(Map<String, dynamic> json) => Baker(
        freeBread: Bread.fromJson(json['free_bread']),
        givenBread: Bread.fromJson(json['given_bread']),
      );

  Map<String, dynamic> toJson() => {
        'free_bread': freeBread.toJson(),
        'given_bread': givenBread.toJson(),
      };
}

class Bread {
  Bread({
    this.count,
  });

  int count;

  factory Bread.fromJson(Map<String, dynamic> json) => Bread(
        count: json['count'],
      );

  Map<String, dynamic> toJson() => {
        'count': count,
      };
}
