import 'dart:convert';

import 'current.dart';
import 'daily.dart';
import 'hourly.dart';
import 'minutely.dart';

class WeatherAllData {
	double? lat;
	double? lon;
	String? timezone;
	int? timezoneOffset;
	Current? current;
	List<Minutely>? minutely;
	List<Hourly>? hourly;
	List<Daily>? daily;

	WeatherAllData({
		this.lat, 
		this.lon, 
		this.timezone, 
		this.timezoneOffset, 
		this.current, 
		this.minutely, 
		this.hourly, 
		this.daily, 
	});

	factory WeatherAllData.fromMap(Map<String, dynamic> data) {
		return WeatherAllData(
			lat: (data['lat'] as num?)?.toDouble(),
			lon: (data['lon'] as num?)?.toDouble(),
			timezone: data['timezone'] as String?,
			timezoneOffset: data['timezone_offset'] as int?,
			current: data['current'] == null
						? null
						: Current.fromMap(data['current'] as Map<String, dynamic>),
			minutely: (data['minutely'] as List<dynamic>?)
						?.map((e) => Minutely.fromMap(e as Map<String, dynamic>))
						.toList(),
			hourly: (data['hourly'] as List<dynamic>?)
						?.map((e) => Hourly.fromMap(e as Map<String, dynamic>))
						.toList(),
			daily: (data['daily'] as List<dynamic>?)
						?.map((e) => Daily.fromMap(e as Map<String, dynamic>))
						.toList(),
		);
	}



	Map<String, dynamic> toMap() => {
				'lat': lat,
				'lon': lon,
				'timezone': timezone,
				'timezone_offset': timezoneOffset,
				'current': current?.toMap(),
				'minutely': minutely?.map((e) => e.toMap()).toList(),
				'hourly': hourly?.map((e) => e.toMap()).toList(),
				'daily': daily?.map((e) => e.toMap()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [WeatherAllData].
	factory WeatherAllData.fromJson(String data) {
		return WeatherAllData.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [WeatherAllData] to a JSON string.
	String toJson() => json.encode(toMap());
}
