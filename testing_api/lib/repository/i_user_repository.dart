abstract class IUserRepository {
  Future<list<UserModel>> findAllUsers();
}
