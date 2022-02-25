import 'dart:convert';

class Rain {
  double? dt;

  Rain({this.dt});

  factory Rain.fromMap(Map<String, dynamic> data) => Rain(
        dt: (data['1h'] as num?)?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        '1h': dt,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Rain].
  factory Rain.fromJson(String data) {
    return Rain.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Rain] to a JSON string.
  String toJson() => json.encode(toMap());
}
