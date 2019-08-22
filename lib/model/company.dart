import 'package:flutter/material.dart';

class Company {
  Company(
      {@required this.name,
      @required this.location,
      @required this.logo,
      @required this.backdropPhoto,
      @required this.about,
      @required this.events});

  final String name;
  final String location;
  final String logo;
  final String backdropPhoto;
  final String about;
  final List<Event> events;
}

class Event {
  Event({@required this.title, @required this.thumbnail, @required this.url});

  final String title;
  final String thumbnail;
  final String url;
}
