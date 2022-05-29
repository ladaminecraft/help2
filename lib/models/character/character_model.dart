class CharacterModel {
  final int id;
  final String name;
  final String img;

  CharacterModel({
    required this.id,
    required this.name,
    required this.img,
  });

  static CharacterModel fromJson(dynamic json) {
    return CharacterModel(
      id: json['id'],
      name: json['name'],
      img: json['img'],
    );
  }
}
