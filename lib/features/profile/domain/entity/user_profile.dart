class UserProfile {
  final String? uid;
  final String? name;
  final String? email;
  final String? avatarUrl;
  final String role; // customer | merchant | admin
  UserProfile({
    required this.uid,
    this.name,
    this.email,
    this.avatarUrl,
    required this.role,
  });
}
