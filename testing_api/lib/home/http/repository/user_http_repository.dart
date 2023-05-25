import 'package:testing_api/model/user_model.dart';

import '../../../repository/i_user_repository.dart';

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() {
    
    throw UnimplementedError();
  }
  
}