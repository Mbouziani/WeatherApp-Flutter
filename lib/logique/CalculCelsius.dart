String GetCelciusMain(double temp) {
  double Celcius = 0.0;
  Celcius = temp - 273.15;
  return Celcius.toStringAsFixed(0);
}

String GetOnlyNum(double Value) {
  return Value.toStringAsFixed(0);
}
