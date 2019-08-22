import 'package:company_profile/model/company.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseCard extends StatelessWidget {
  CourseCard(this.event);

  final Event event;

  BoxDecoration _createShadowRoundCorners() {
    return BoxDecoration(
      color: Colors.white.withOpacity(0.4),
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: <BoxShadow>[
        BoxShadow(color: Colors.black26, spreadRadius: 2.0, blurRadius: 10.0),
      ],
    );
  }

  Widget _createThumbnail() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Stack(
        children: <Widget>[
          Image.asset(event.thumbnail),
          Positioned(bottom: 12.0, right: 12.0, child: _createLinkButton())
        ],
      ),
    );
  }

  Widget _createLinkButton() {
    return Material(
      color: Colors.white24,
      type: MaterialType.circle,
      child: IconButton(
          icon: Icon(Icons.link),
          onPressed: () async {
            if (await canLaunch(event.url)) {
              await launch(event.url);
            }
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: _createShadowRoundCorners(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 3, child: _createThumbnail()),
          Flexible(flex: 2, child: _createEventInfo()),
        ],
      ),
    );
  }

  Widget _createEventInfo() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, right: 4.0, left: 4.0),
      child: Text(
        event.title,
        style: TextStyle(
          color: Colors.white.withOpacity(.85),
          fontSize: 17
        ),
      ),
    );
  }
}
