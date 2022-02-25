import 'dart:convert';

class Minutely {
	int? dt;
	int? precipitation;

	Minutely({this.dt, this.precipitation});

	factory Minutely.fromMap(Map<String, dynamic> data) => Minutely(
				dt: data['dt'] as int?,
				precipitation: data['precipitation'] as int?,
			);

	Map<String, dynamic> toMap() => {
				'dt': dt,
				'precipitation': precipitation,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Minutely].
	factory Minutely.fromJson(String data) {
		return Minutely.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Minutely] to a JSON string.
	String toJson() => json.encode(toMap());
}
