import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String? userId;
  final String? userName;
  final String? userEmail;
  final String? userPassword;
  final String? userRole;

  const User({
    this.userId,
    this.userName,
    this.userEmail,
    this.userPassword,
    this.userRole,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json['user_id'] as String?,
        userName: json['user_name'] as String?,
        userEmail: json['user_email'] as String?,
        userPassword: json['user_password'] as String?,
        userRole: json['user_role'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'user_id': userId,
        'user_name': userName,
        'user_email': userEmail,
        'user_password': userPassword,
        'user_role': userRole,
      };

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      userId,
      userName,
      userEmail,
      userPassword,
      userRole,
    ];
  }
}
