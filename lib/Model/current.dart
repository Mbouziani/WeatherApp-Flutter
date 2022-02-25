import 'dart:convert';

import 'weather.dart';

class Current {
	int? dt;
	int? sunrise;
	int? sunset;
	double? temp;
	double? feelsLike;
	int? pressure;
	int? humidity;
	double? dewPoint;
	int? uvi;
	int? clouds;
	int? visibility;
	double? windSpeed;
	int? windDeg;
	List<Weather>? weather;

	Current({
		this.dt, 
		this.sunrise, 
		this.sunset, 
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
		this.weather, 
	});

	factory Current.fromMap(Map<String, dynamic> data) => Current(
				dt: data['dt'] as int?,
				sunrise: data['sunrise'] as int?,
				sunset: data['sunset'] as int?,
				temp: (data['temp'] as num?)?.toDouble(),
				feelsLike: (data['feels_like'] as num?)?.toDouble(),
				pressure: data['pressure'] as int?,
				humidity: data['humidity'] as int?,
				dewPoint: (data['dew_point'] as num?)?.toDouble(),
				uvi: data['uvi'] as int?,
				clouds: data['clouds'] as int?,
				visibility: data['visibility'] as int?,
				windSpeed: (data['wind_speed'] as num?)?.toDouble(),
				windDeg: data['wind_deg'] as int?,
				weather: (data['weather'] as List<dynamic>?)
						?.map((e) => Weather.fromMap(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toMap() => {
				'dt': dt,
				'sunrise': sunrise,
				'sunset': sunset,
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
				'weather': weather?.map((e) => e.toMap()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Current].
	factory Current.fromJson(String data) {
		return Current.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Current] to a JSON string.
	String toJson() => json.encode(toMap());
}
