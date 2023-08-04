
import 'package:e_commerce/models/models.dart';

abstract class BaseDataRepository {
  Stream<User>getUser();
  Future<void> updateUserPictures(String imageName);
}