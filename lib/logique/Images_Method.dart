//
//to return background Images
// ignore_for_file: non_constant_identifier_names

String GetBackgroundPicture(int idWeather, String daytimemain) {
  if (daytimemain == 'Morning') {
    //for morning
    if (idWeather >= 200 && idWeather <= 531) {
      //rain
      return 'assets/images/rain_morning.jpg';
    } else if (idWeather >= 600 && idWeather <= 622) {
      //snow
      return 'assets/images/snow_morning.jpg';
    } else {
      //clear
      return 'assets/images/clear_morning.jpg';
    }
  } else if (daytimemain == 'Evening') {
    //for evening
    if (idWeather >= 200 && idWeather <= 531) {
      //rain
      return 'assets/images/rain_evening.jpeg';
    } else if (idWeather >= 600 && idWeather <= 622) {
      //snow
      return 'assets/images/snow_evening.jpg';
    } else {
      //clear
      return 'assets/images/clear_evening.jpg';
    }
  } else {
    //for night
    if (idWeather >= 200 && idWeather <= 531) {
      //rain
      return 'assets/images/rain_night.jpg';
    } else if (idWeather >= 600 && idWeather <= 622) {
      //snow
      return 'assets/images/snow_night.jpg';
    } else {
      //clear
      return 'assets/images/clear_night.jpg';
    }
  }
}

//
//to return background Images
String GetBackgroundAnimation(int idWeather, String isMorning) {
  if (idWeather >= 200 && idWeather <= 232) {
    return 'assets/animation/WeatherBackground/RainBackground.json';
  } else if (idWeather >= 300 && idWeather <= 321) {
    return 'assets/animation/WeatherBackground/littleRainBackground.json';
  } else if (idWeather >= 500 && idWeather <= 531) {
    return 'assets/animation/WeatherBackground/RainBackground.json';
  } else if (idWeather >= 600 && idWeather <= 622) {
    return 'assets/animation/WeatherBackground/SnowBackground.json';
  } else if (idWeather >= 701 && idWeather <= 781) {
    return 'assets/animation/WeatherBackground/darkclodyBackground.json';
  } else if (idWeather == 800) {
    return isMorning == 'Night'
        ? 'assets/animation/WeatherBackground/StaryBackground.json'
        : 'assets/animation/WeatherBackground/SunBackground.json';
  } else if (idWeather >= 801 && idWeather <= 804) {
    return 'assets/animation/WeatherBackground/darkclodyBackground.json';
  } else {
    return 'assets/animation/WeatherBackground/darkclodyBackground.json';
  }
}

//
//to return background Images
String GetWeatherlottie(int idWeather, String isMorning) {
  if (idWeather >= 200 && idWeather <= 232) {
    //Thunderstorm
    return 'assets/animation/WeatherIcon/thunderstorm.json';
  } else if (idWeather >= 300 && idWeather <= 321) {
    //Drizzle
    return 'assets/animation/WeatherIcon/rain.json';
  } else if (idWeather >= 500 && idWeather <= 531) {
    //Rain
    return 'assets/animation/WeatherIcon/showerrain.json';
  } else if (idWeather >= 600 && idWeather <= 622) {
    //Snow
    return 'assets/animation/WeatherIcon/snow.json';
  } else if (idWeather >= 701 && idWeather <= 781) {
    //Atmosphere
    return 'assets/animation/WeatherIcon/mist.json';
  } else if (idWeather == 800) {
    //Clear
    return isMorning == 'Night'
        ? 'assets/animation/WeatherIcon/moon.json'
        : 'assets/animation/WeatherIcon/clearsky.json';
  } else if (idWeather == 801) {
    //fewClouds
    return 'assets/animation/WeatherIcon/fewClouds.json';
  } else if (idWeather == 802) {
    //scatteredclouds
    return 'assets/animation/WeatherIcon/scatteredclouds.json';
  } else if (idWeather == 803) {
    //brokenclouds
    return 'assets/animation/WeatherIcon/brokenclouds.json';
  } else {
    //fewClouds
    return 'assets/animation/WeatherIcon/fewClouds.json';
  }
}

//
//to return background Images
String GetWeatherMain(int idWeather) {
  return '';
}

//
//to return background Images
String GetWeatherTemp(double wthMain) {
  return '';
}
