import 'package:cloud_firestore/cloud_firestore.dart';

class UserProfile {
  final String uid;
  final String? name;
  final String? email;
  final String? avatarUrl;
  final String role; // customer | merchant | admin

  const UserProfile({
    required this.uid,
    this.name,
    this.email,
    this.avatarUrl,
    required this.role,
  });

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'name': name,
    'email': email,
    'avatarUrl': avatarUrl,
    'role': role,
    'updatedAt': FieldValue.serverTimestamp(),
    'createdAt': FieldValue.serverTimestamp(),
  };

  static UserProfile fromJson(Map<String, dynamic> json) => UserProfile(
    uid: json['uid'],
    name: json['name'],
    email: json['email'],
    avatarUrl: json['avatarUrl'],
    role: (json['role'] ?? 'customer'),
  );
}
