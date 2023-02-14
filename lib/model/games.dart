class Games {
//   id:540
// title:"Overwatch 2"
// thumbnail:"https://www.freetogame.com/g/540/thumbnail.jpg"
// short_description:"A hero-focused first-person team shooter from Blizzard Entertainment."
// game_url:"https://www.freetogame.com/open/overwatch-2"
// genre:"Shooter"
// platform:"PC (Windows)"
// publisher:"Activision Blizzard"
// developer:"Blizzard Entertainment"
// release_date:"2022-10-04"
// freetogame_profile_url:"https://www.freetogame.com/overwatch-2"

  final int id;
  final String title;
  final String thumbnail;
  final String short_description;
  final String game_url;
  final String genre;
  final String platform;
  final String publisher;
  final String developer;
  final String release_date;
  final String freetogame_profile_url;

  Games(
      {required this.id,
      required this.title,
      required this.thumbnail,
      required this.short_description,
      required this.game_url,
      required this.genre,
      required this.platform,
      required this.publisher,
      required this.developer,
      required this.release_date,
      required this.freetogame_profile_url});

  factory Games.fromJson(Map json) {
    return Games(
        id: json['id'],
        title: json['title'],
        thumbnail: json['thumbnail'],
        short_description: json['short_description'],
        game_url: json['game_url'],
        genre: json['genre'],
        platform: json['platform'],
        publisher: json['publisher'],
        developer: json['developer'],
        release_date: json['release_date'],
        freetogame_profile_url: json['freetogame_profile_url']);
  }
}
