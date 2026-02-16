import '../models/user.dart';

class MockUserService {
  Future<List<User>> fetchUsers({bool shouldFail = false}) async { //simulasi pemanggilan API secana asyncronous
    await Future.delayed(const Duration(seconds: 1)); //simulasi waktu tunggu ke server 1 detik 

    if (shouldFail) {
      throw Exception("Failed to fetch users");
    }

    return [ //3 data dummy
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