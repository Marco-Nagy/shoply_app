import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:shoply/core/Services/firebase_helper/fire_store_helper.dart';
import 'package:shoply/core/Services/firebase_helper/fire_store_ref_key.dart';
import 'package:shoply/features/profile/data/data_sources/contract/user_profile_data_source.dart';
import 'package:shoply/features/profile/data/mappers/profile_mappers.dart';
import 'package:shoply/features/profile/data/models/user_profile_response.dart';
import 'package:shoply/features/profile/domain/entity/user_profile.dart';

@Injectable(as: UserProfileDataSource)
class UserProfileDataSourceImpl implements UserProfileDataSource {
  UserProfileDataSourceImpl(this._firestore);

  final FireStoreService _firestore;

  CollectionReference<Map<String, dynamic>> get _usersCollection =>
      _firestore.fireStore.collection(FireStoreRefKey.users);

  @override
  Future<void> createUserProfile(UserProfileResponse profile) async {
    debugPrint('createUserProfile: $profile');
    await _usersCollection
        .doc(profile.uid)
        .set(profile.toJson(), SetOptions(merge: true));
  }

  @override
  Future<UserProfileResponse?> getProfile(String uid) async {
    final snap = await _usersCollection.doc(uid).get();
    if (!snap.exists) return null;
    debugPrint('getProfile: ${snap.data()}');
    return UserProfileResponse.fromJson(snap.data()!);
  }

  @override
  Future<UserProfile> updateUserProfile(UserProfileResponse profile) async {
    debugPrint('updateUserProfile: $profile');
    await _usersCollection.doc(profile.uid).update(profile.toJson());
    return profile.toUserProfile();
  }
}
