class User {
  final int id;
  final String name;
  final String email;
  final String password;
  final String? imageUrl;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    this.imageUrl,
  });

  @override
  int get hashCode => Object.hash(id, email);

  @override
  bool operator ==(Object other) {
    return other is User && identical(this, other) && id == other.id && email == other.email;
  }

  @override
  String toString() {
    return "User(name: $name, email: $email)";
  }

  User copyWith({int? id, String? name, String? email, String? password, String? imageUrl}) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, Object?> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'password': password,
        'imageUrl': imageUrl,
      };

  factory User.fromJson(Map<String, Object?> json) {
    return User(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      imageUrl: json['imageUrl'] as String?,
    );
  }
}
