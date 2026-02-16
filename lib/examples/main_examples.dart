import '../models/user.dart';
import '../services/mock_service.dart';

void main() async {
  final service = MockUserService();

  print("---Cek method fetchUsers() dengan asyncronous---");

  try {
    final users = await service.fetchUsers();

    for (var user in users) {
      print(user);
    }
  } catch (e) {
    print("Error: $e");
  }

  print("\n---Cek JSON parsing---");

  Map<String, dynamic> dummyJson = {
    "id": "67",
    "email": "gooner@goony.com",
    "displayName": "Cornball",
    "age": 45,
    "isActive": true
  };
  
  User user = User.fromJson(dummyJson);
  print(user);

  print("\n---Cek null safety---");

  String name = user.displayName ?? "No Name";
  print("displayName: $name");
  print("panjang displayName: ${user.displayName?.length}");

  print("\n---Cek penggunaan copyWith()---");

  User updatedUser = user.copyWith(email: "corny@gmail.com");
  print(updatedUser);
}