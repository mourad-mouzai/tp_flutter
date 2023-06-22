class User {
  String? name;
  String? email;
  String? password;

  User({
    this.name,
    this.email,
    this.password,
  });

  User.fromMap(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'email': email,
        'password': password,
      };
}
