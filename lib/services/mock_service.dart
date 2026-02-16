import '../models/user.dart';

class MockUserService {
  Future<List<User>> fetchUsers({bool shouldFail = false}) async {
    await Future.delayed(const Duration(seconds: 1));

    if (shouldFail) {
      throw Exception("Failed to fetch users");
    }

    return [
      User(
        id: '1',
        email: 'notryanbabe@gmail.com',
        displayName: null,
        age: 19,
        isActive: false,
      ),
      User(
        id: '2',
        email: 'achrian@outlook.com',
        displayName: 'Muhammad Fachrian',
        age: 18,
        isActive: true,
      ),
      User(
        id: '3',
        email: 'carlostampubolon@gmail.com',
        displayName: 'Carlos Ridwan Tampubolon',
        age: 20,
        isActive: false,
      ),
    ];
  }
}