import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/constants/serverless_collections.dart';
import 'package:skycast/providers/auth_provider/models/auth_user.dart';
import 'package:skycast/services/serverless_data_manager_service/protocols/i_serverless_data_manager_service.dart';

@Injectable(as: IServerlessDataManagerService)
class ServerlessDataManagerService implements IServerlessDataManagerService {
  @override
  Future<Either<bool, String>> saveUserData(AuthUser user) async {
    // check if the user was already registered
    final theUserExists = await getUserDocumentUID(user);
    final docUser = FirebaseFirestore.instance.collection(ServerlessCollections.userCollection);
    if (theUserExists == null) {
      final result = await docUser.add(user.toJson());
      user = user.copyWith(docId: result.id);
      await docUser.doc(result.id).update(user.toJson());
      return Right(result.id);
    }
    // check if the user data has been updated
    if (theUserExists.name != user.name ||
        theUserExists.uid != user.uid ||
        theUserExists.email != user.email ||
        theUserExists.phoneNumber != user.phoneNumber ||
        theUserExists.profilePicture != user.profilePicture) {
      await docUser.doc(theUserExists.docId).update(user.toJson());
      return const Left(true);
    }
    return const Left(false);
  }

  @override
  Future<AuthUser?> getUserDocumentUID(AuthUser user) async {
    final docUser = await FirebaseFirestore.instance
        .collection(ServerlessCollections.userCollection)
        .where("uid", isEqualTo: user.uid)
        .get();
    if (docUser.docs.isNotEmpty) {
      final authUser = AuthUser.fromJson(docUser.docs.first.data());
      return authUser.copyWith(docId: docUser.docs.first.id);
    }
    return null;
  }

  @override
  saveWeatherData() {
    throw UnimplementedError();
  }
}
