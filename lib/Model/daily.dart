import 'dart:convert';

import 'feels_like.dart';
import 'temp.dart';
import 'weather.dart';

class Daily {
	int? dt;
	int? sunrise;
	int? sunset;
	int? moonrise;
	int? moonset;
	double? moonPhase;
	Temp? temp;
	FeelsLike? feelsLike;
	int? pressure;
	int? humidity;
	double? dewPoint;
	double? windSpeed;
	int? windDeg;
	double? windGust;
	List<Weather>? weather;
	int? clouds;
	double? pop;
	double? uvi;
	double? rain;

	Daily({
		this.dt, 
		this.sunrise, 
		this.sunset, 
		this.moonrise, 
		this.moonset, 
		this.moonPhase, 
		this.temp, 
		this.feelsLike, 
		this.pressure, 
		this.humidity, 
		this.dewPoint, 
		this.windSpeed, 
		this.windDeg, 
		this.windGust, 
		this.weather, 
		this.clouds, 
		this.pop, 
		this.uvi, 
		this.rain, 
	});

	factory Daily.fromMap(Map<String, dynamic> data) => Daily(
				dt: data['dt'] as int?,
				sunrise: data['sunrise'] as int?,
				sunset: data['sunset'] as int?,
				moonrise: data['moonrise'] as int?,
				moonset: data['moonset'] as int?,
				moonPhase: (data['moon_phase'] as num?)?.toDouble(),
				temp: data['temp'] == null
						? null
						: Temp.fromMap(data['temp'] as Map<String, dynamic>),
				feelsLike: data['feels_like'] == null
						? null
						: FeelsLike.fromMap(data['feels_like'] as Map<String, dynamic>),
				pressure: data['pressure'] as int?,
				humidity: data['humidity'] as int?,
				dewPoint: (data['dew_point'] as num?)?.toDouble(),
				windSpeed: (data['wind_speed'] as num?)?.toDouble(),
				windDeg: data['wind_deg'] as int?,
				windGust: (data['wind_gust'] as num?)?.toDouble(),
				weather: (data['weather'] as List<dynamic>?)
						?.map((e) => Weather.fromMap(e as Map<String, dynamic>))
						.toList(),
				clouds: data['clouds'] as int?,
				pop: (data['pop'] as num?)?.toDouble(),
				uvi: (data['uvi'] as num?)?.toDouble(),
				rain: (data['rain'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toMap() => {
				'dt': dt,
				'sunrise': sunrise,
				'sunset': sunset,
				'moonrise': moonrise,
				'moonset': moonset,
				'moon_phase': moonPhase,
				'temp': temp?.toMap(),
				'feels_like': feelsLike?.toMap(),
				'pressure': pressure,
				'humidity': humidity,
				'dew_point': dewPoint,
				'wind_speed': windSpeed,
				'wind_deg': windDeg,
				'wind_gust': windGust,
				'weather': weather?.map((e) => e.toMap()).toList(),
				'clouds': clouds,
				'pop': pop,
				'uvi': uvi,
				'rain': rain,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Daily].
	factory Daily.fromJson(String data) {
		return Daily.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Daily] to a JSON string.
	String toJson() => json.encode(toMap());
}
