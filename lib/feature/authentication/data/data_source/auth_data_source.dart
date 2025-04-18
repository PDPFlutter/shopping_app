import 'package:shopping_app/core/domain/models/response.dart';

abstract class AuthDataSource {
  Future<Response> signIn(Map<String, Object?> data);
  Future<Response> signUp(Map<String, Object?> data);
  Future<Response> forgotPassword(Map<String, Object?> data);
  Future<Response> resetPassword(Map<String, Object?> data);
  Future<Response> isRegistered();
}

class AuthDataSourceImpl implements AuthDataSource {
  static Map<String, Object?> dataSource = {
    '1': {
      'id': 1,
      'name': "Nasibali",
      'email': 'pdp@email.com',
      'password': 'Root1234'
    }
  };
  static String? currentUserId; 

  @override
  Future<Response> signUp(Map<String, Object?> data) async {
    if (dataSource.containsKey(data['id'])) {
      return const Response(
        success: false,
        errors: [Error(key: 'id', message: "Bu foydalanuvchi tizimda mavjud!")],
      );
    } else {
      final id = (dataSource.keys.length + 1).toString();
      final response = Map<String, Object?>.from(data);
      response['id'] = id;
      dataSource.addAll({id: response});
      return const Response(success: true, message: "Muvaffaqiyatli ro'yxatdan o'tdingiz!");
    }
  }

  @override
  Future<Response> signIn(Map<String, Object?> data) async {
    final email = data['email'] as String?;
    final password = data['password'] as String?;
    Map<String, Object?>? response;
    dataSource.forEach((key, value) {
      final user = Map<String, Object?>.from(value as Map);
      if(user['email'] == email && user['password'] == password) {
        response = user;
        return;
      }
    });

    if(response != null) {
      currentUserId = response!['id'].toString();
      return const Response(success: true);
    } else {
      return const Response(success: false, errors: [
        Error(key: 'id', message: "Iltimos ma'lumotlarni to'gri kiriting!")
      ]);
    }
  }

  @override
  Future<Response> forgotPassword(Map<String, Object?> data) async {
    final email = data['email'] as String?;
    Map<String, Object?>? response;
    dataSource.forEach((key, value) {
      final user = Map<String, Object?>.from(value as Map);
      if(user['email'] == email) {
        response = user;
        return;
      }
    });

    if(response != null) {
      return const Response(success: true);
    } else {
      return const Response(success: false, errors: [
        Error(key: 'email', message: "Bu emaildagi foydalanuvchi topilmadi!")
      ]);
    }
  }

  @override
  Future<Response> resetPassword(Map<String, Object?> data) async {
    final email = data['email'] as String?;
    final password = data['password'] as String?;
    Map<String, Object?>? response;
    dataSource.forEach((key, value) {
      final user = Map<String, Object?>.from(value as Map);
      if(user['email'] == email) {
        response = user;
        return;
      }
    });

    if(response != null) {
      final datas = Map<String, Object?>.from(data);
      final id = response!['id'] as int;
      response!['password'] = password;
      datas[id.toString()] = response!;
      dataSource = datas;
      return const Response(success: true);
    } else {
      return const Response(success: false, errors: [
        Error(key: 'id', message: "Iltimos ma'lumotlarni to'gri kiriting!")
      ]);
    }
  }

  @override
  Future<Response> isRegistered() async {
    if(dataSource.isEmpty) {
      return const Response(success: false);
    }
    currentUserId = dataSource.keys.first;
    return const Response(success: true);
  }
}

// Response
final responseList = {
  "success": true,
  "error": [
    {
      "key": "String",
      "value": "Object",
      "message": "String",
    },
  ],
  "data": [{}],
  "message": ""
};

// Response
final responseObject = {
  "success": true,
  "error": [
    {
      "key": "String",
      "value": "Object",
      "message": "String",
    },
  ],
  "data": {},
  "message": ""
};
