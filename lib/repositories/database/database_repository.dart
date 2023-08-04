import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/models/user_model.dart';
import 'package:e_commerce/repositories/database/base_database_repository.dart';
import 'package:e_commerce/repositories/storage/storage_repository.dart';

class DatabaseRepository extends BaseDataRepository {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  @override
  Stream<User> getUser() {
    return _firebaseFirestore
        .collection('users')
        .doc('U2min1QHDKfWX7YBA2Gq')
        .snapshots()
        .map((snap) => User.fromSnapshot(snap));
  }

  @override
  Future<void> updateUserPictures(String imageName) async { 
    String downloadUrl = await StorageRepository().getDownloadURL(imageName);

    return _firebaseFirestore.collection('users').doc('U2min1QHDKfWX7YBA2Gq').update({'imageUrls': FieldValue.arrayUnion([downloadUrl]),});

  }
}
