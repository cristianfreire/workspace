class User {
  int id;
  String name;
  String username;
  String email;

  User(int id, String name, String username, String email) {
    this.id = id;
    this.name = name;
    this.username = username;
    this.email = email;
  }

  User.fromJson(Map json)
      : id = json['id'],
        name = json['name'],
        username = json['username'],
        email = json['email'];
}
