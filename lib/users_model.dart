class Users {
  final String id;
  final String name;
  final String avatar;
  final int age;
  final String birthdate;
  final String city;

  Users({
    required this.id,
    required this.name,
    required this.avatar,
    required this.age,
    required this.birthdate,
    required this.city,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['id'],
      name: json['name'],
      avatar: json['avatar'],
      age: json['age'],
      birthdate: json['birthdate'],
      city: json['city'],
    );
  }
}
