import '../models/user.dart';
import '../services/mock_service.dart';
import 'dart:convert';

void main() async {
  final service = MockUserService();

  print("---Cek method fetchUsers() dengan asyncronous---");

  // Demonstrasi async/await:
  try {
    final users = await service.fetchUsers();

    for (var user in users) {
      print(user);
    }
  } catch (e) {
    print("Error: $e");
  }

  // Demonstrasi JSON parsing:
  print("\n---Cek JSON parsing---");

  Map<String, dynamic> dummyJson = {
    "id": "67",
    "email": "gooner@goony.com",
    "displayName": "Cornball",
    "age": 45,
    "isActive": true
  };
  
  User user = User.fromJson(dummyJson);

  var encoder = const JsonEncoder.withIndent('  ');
  String UserFormatedJSON = encoder.convert(user);
  print(UserFormatedJSON); //biar bagus :D

  // Demonstrasi null safety:
  print("\n---Cek null safety---");

  String name = user.displayName ?? "No Name";
  print("displayName: $name");
  print("panjang displayName: ${user.displayName?.length}");

  // Demonstrasi copyWith():
  print("\n---Cek penggunaan copyWith()---");

  print("\nSebelum:");
  print(user);

  User updatedUser = user.copyWith(email: "corny@gmail.com");

  print("\nSesudah:");
  print(updatedUser);
}