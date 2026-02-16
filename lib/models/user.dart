class User {
  final String id;
  final String email;
  final String? displayName;
  final int age;
  final bool isActive;

  const User({
    required this.id,
    required this.email,
    this.displayName,
    required this.age,
    required this.isActive,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] ?? '',
        email: json['email'] ?? '',
        displayName: json['displayName'],
        age: json['age'] ?? 0,
        isActive: json['isActive'] ?? false,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'displayName': displayName,
        'age': age,
        'isActive': isActive,
      };

  User copyWith({
    String? id,
    String? email,
    String? displayName,
    int? age,
    bool? isActive,
  }) =>
      User(
        id: id ?? this.id,
        email: email ?? this.email,
        displayName: displayName ?? this.displayName,
        age: age ?? this.age,
        isActive: isActive ?? this.isActive,
      );

  @override
  String toString() =>
      'User(id: $id, email: $email, displayName: $displayName, age: $age, isActive: $isActive)';
}