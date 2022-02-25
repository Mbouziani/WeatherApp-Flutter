import 'dart:convert';

import 'rain.dart';
import 'weather.dart';

class Hourly {
	int? dt;
	double? temp;
	double? feelsLike;
	int? pressure;
	int? humidity;
	double? dewPoint;
	double? uvi;
	int? clouds;
	int? visibility;
	double? windSpeed;
	int? windDeg;
	double? windGust;
	List<Weather>? weather;
	double? pop;
	Rain? rain;

	Hourly({
		this.dt, 
		this.temp, 
		this.feelsLike, 
		this.pressure, 
		this.humidity, 
		this.dewPoint, 
		this.uvi, 
		this.clouds, 
		this.visibility, 
		this.windSpeed, 
		this.windDeg, 
		this.windGust, 
		this.weather, 
		this.pop, 
		this.rain, 
	});

	factory Hourly.fromMap(Map<String, dynamic> data) => Hourly(
				dt: data['dt'] as int?,
				temp: (data['temp'] as num?)?.toDouble(),
				feelsLike: (data['feels_like'] as num?)?.toDouble(),
				pressure: data['pressure'] as int?,
				humidity: data['humidity'] as int?,
				dewPoint: (data['dew_point'] as num?)?.toDouble(),
				uvi: (data['uvi'] as num?)?.toDouble(),
				clouds: data['clouds'] as int?,
				visibility: data['visibility'] as int?,
				windSpeed: (data['wind_speed'] as num?)?.toDouble(),
				windDeg: data['wind_deg'] as int?,
				windGust: (data['wind_gust'] as num?)?.toDouble(),
				weather: (data['weather'] as List<dynamic>?)
						?.map((e) => Weather.fromMap(e as Map<String, dynamic>))
						.toList(),
				pop: (data['pop'] as num?)?.toDouble(),
				rain: data['rain'] == null
						? null
						: Rain.fromMap(data['rain'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toMap() => {
				'dt': dt,
				'temp': temp,
				'feels_like': feelsLike,
				'pressure': pressure,
				'humidity': humidity,
				'dew_point': dewPoint,
				'uvi': uvi,
				'clouds': clouds,
				'visibility': visibility,
				'wind_speed': windSpeed,
				'wind_deg': windDeg,
				'wind_gust': windGust,
				'weather': weather?.map((e) => e.toMap()).toList(),
				'pop': pop,
				'rain': rain?.toMap(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Hourly].
	factory Hourly.fromJson(String data) {
		return Hourly.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Hourly] to a JSON string.
	String toJson() => json.encode(toMap());
}
