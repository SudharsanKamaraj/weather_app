class WeatherData {
  Timelines? timelines;
  Location? location;

  WeatherData({
     this.timelines,
     this.location,
  });

  WeatherData.fromJson(Map<String, dynamic> json){
    timelines = Timelines.fromJson(json['timelines']);
    location = Location.fromJson(json['location']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['timelines'] = timelines!.toJson();
    _data['location'] = location!.toJson();
    return _data;
  }
}

class Timelines {
  Timelines({
    required this.minutely,
    required this.hourly,
    required this.daily,
  });
  late final List<Minutely> minutely;
  late final List<Hourly> hourly;
  late final List<Daily> daily;

  Timelines.fromJson(Map<String, dynamic> json){
    minutely = List.from(json['minutely']).map((e)=>Minutely.fromJson(e)).toList();
    hourly = List.from(json['hourly']).map((e)=>Hourly.fromJson(e)).toList();
    daily = List.from(json['daily']).map((e)=>Daily.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['minutely'] = minutely.map((e)=>e.toJson()).toList();
    _data['hourly'] = hourly.map((e)=>e.toJson()).toList();
    _data['daily'] = daily.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Minutely {
  Minutely({
    required this.time,
    required this.values,
  });
  late final String time;
  late final Values values;

  Minutely.fromJson(Map<String, dynamic> json){
    time = json['time'];
    values = Values.fromJson(json['values']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['time'] = time;
    _data['values'] = values.toJson();
    return _data;
  }
}

class Values {
  Values({
    required this.cloudBase,
    this.cloudCeiling,
    required this.cloudCover,
    required this.dewPoint,
    required this.freezingRainIntensity,
    required this.humidity,
    required this.precipitationProbability,
    required this.pressureSurfaceLevel,
    required this.rainIntensity,
    required this.sleetIntensity,
    required this.snowIntensity,
    required this.temperature,
    required this.temperatureApparent,
    required this.uvHealthConcern,
    required this.uvIndex,
    required this.visibility,
    required this.weatherCode,
    required this.windDirection,
    required this.windGust,
    required this.windSpeed,
  });
  late final double cloudBase;
  late final Null cloudCeiling;
  late final int? cloudCover;
  late final double dewPoint;
  late final int freezingRainIntensity;
  late final int? humidity;
  late final int precipitationProbability;
  late final double? pressureSurfaceLevel;
  late final int rainIntensity;
  late final int sleetIntensity;
  late final int snowIntensity;
  late final double? temperature;
  late final double? temperatureApparent;
  late final int uvHealthConcern;
  late final int uvIndex;
  late final int? visibility;
  late final int weatherCode;
  late final double windDirection;
  late final double windGust;
  late final double windSpeed;

  Values.fromJson(Map<String, dynamic> json){
    cloudBase = json['cloudBase'];
    cloudCeiling = null;
    cloudCover = json['cloudCover'];
    dewPoint = json['dewPoint'];
    freezingRainIntensity = json['freezingRainIntensity'];
    humidity = json['humidity'];
    precipitationProbability = json['precipitationProbability'];
    pressureSurfaceLevel = json['pressureSurfaceLevel'];
    rainIntensity = json['rainIntensity'];
    sleetIntensity = json['sleetIntensity'];
    snowIntensity = json['snowIntensity'];
    temperature = json['temperature'];
    temperatureApparent = json['temperatureApparent'];
    uvHealthConcern = json['uvHealthConcern'];
    uvIndex = json['uvIndex'];
    visibility = json['visibility'];
    weatherCode = json['weatherCode'];
    windDirection = json['windDirection'];
    windGust = json['windGust'];
    windSpeed = json['windSpeed'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['cloudBase'] = cloudBase;
    _data['cloudCeiling'] = cloudCeiling;
    _data['cloudCover'] = cloudCover;
    _data['dewPoint'] = dewPoint;
    _data['freezingRainIntensity'] = freezingRainIntensity;
    _data['humidity'] = humidity;
    _data['precipitationProbability'] = precipitationProbability;
    _data['pressureSurfaceLevel'] = pressureSurfaceLevel;
    _data['rainIntensity'] = rainIntensity;
    _data['sleetIntensity'] = sleetIntensity;
    _data['snowIntensity'] = snowIntensity;
    _data['temperature'] = temperature;
    _data['temperatureApparent'] = temperatureApparent;
    _data['uvHealthConcern'] = uvHealthConcern;
    _data['uvIndex'] = uvIndex;
    _data['visibility'] = visibility;
    _data['weatherCode'] = weatherCode;
    _data['windDirection'] = windDirection;
    _data['windGust'] = windGust;
    _data['windSpeed'] = windSpeed;
    return _data;
  }
}

class Hourly {
  Hourly({
    required this.time,
    required this.values,
  });
  late final String time;
  late final Values values;

  Hourly.fromJson(Map<String, dynamic> json){
    time = json['time'];
    values = Values.fromJson(json['values']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['time'] = time;
    _data['values'] = values.toJson();
    return _data;
  }
}

class Daily {
  Daily({
    required this.time,
    required this.values,
  });
  late final String time;
  late final Values values;

  Daily.fromJson(Map<String, dynamic> json){
    time = json['time'];
    values = Values.fromJson(json['values']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['time'] = time;
    _data['values'] = values.toJson();
    return _data;
  }
}

class Location {
  Location({
    required this.lat,
    required this.lon,
  });
  late final double lat;
  late final double lon;

  Location.fromJson(Map<String, dynamic> json){
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['lat'] = lat;
    _data['lon'] = lon;
    return _data;
  }
}