import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/Services/firebase_helper/fire_store_helper.dart';
import 'package:shoply/core/Services/firebase_helper/fire_store_ref_key.dart';
import 'package:shoply/features/auth/data/models/auth_user_response.dart';
import 'package:shoply/features/customer/profile/data/data_sources/contract/user_profile_data_source.dart';

@Injectable(as: UserProfileDataSource)
class UserProfileDataSourceImpl implements UserProfileDataSource {
  UserProfileDataSourceImpl(this._firestore);
  final FireStoreService _firestore;

  CollectionReference<Map<String, dynamic>> get _usersCollection =>
      _firestore.fireStore.collection(FireStoreRefKey.users);

  @override
  Future<void> updateUserProfile(AuthUserResponse profile) async {
    debugPrint('updateUserProfile: $profile');
    await _usersCollection
        .doc(profile.uid)
        .set(profile.toJson(), SetOptions(merge: true));
  }

  @override
  Future<AuthUserResponse?> getProfile(String uid) async {
    final snap = await _usersCollection.doc(uid).get();
    if (!snap.exists) return null;
    return AuthUserResponse.fromJson(snap.data()!);
  }
}
