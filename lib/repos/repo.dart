
import 'package:company_profile/model/company.dart';

class RepoData {
  static final Company gdgDamanhour = Company(
      name: "GDG Damanhour",
      location: "Damanhour, Egypt",
      logo: "assets/logo.png",
      backdropPhoto: "assets/tarek.jpg",
      about: "GDG Damanhour [Google Developer Group - Damanhour] is one of technical communities in EG, we have some interesting conferences, competitions, and many other creative activities. It\'s a technical user group for people who are interested in Google\'s developer technology",
      events: <Event> [
        Event(
            title: "CYT: Choose Your Tech",
            url: "https://www.meetup.com/GDG-Damanhour/events/262125779/",
            thumbnail: "assets/cyt.jpeg"
        ),
        Event(
            title: "Meet GDG Damanhour | Freelancing Mode",
            url: "https://www.meetup.com/GDG-Damanhour/events/262708039/",
            thumbnail: "assets/meet.jpg"
        ),
        Event(
            title: "I/O Extended 2019 Damanhour",
            url: "https://www.meetup.com/GDG-Damanhour/events/262717609/",
            thumbnail: "assets/io.jpg"
        ),
        Event(
            title: "Kotlin Study Jam",
            url: "https://www.meetup.com/GDG-Damanhour/events/263891945/",
            thumbnail: "assets/kotlin.jpeg"
        ),
        Event(
            title: "Google Cloud Study Jam",
            url: "https://www.meetup.com/GDG-Damanhour/events/263891963/",
            thumbnail: "assets/gcloud.jpeg"
        ),
      ]);
}