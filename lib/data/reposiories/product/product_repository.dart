import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/features/shop/models/product_model.dart';
import 'package:demo/utils/exceptions/firebase_auth_exception.dart';
import 'package:demo/utils/exceptions/plateform.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProductRepository extends GetxController {
  static ProductRepository get instance => Get.find();

  //firebase instance for database interaction
  final _db = FirebaseFirestore.instance;

  //Get linimted featured products
  Future<List<ProductModel>> getFeaturedProducts() async {
    try {
      final snapshot = await _db
          .collection('Products')
          .where('IsFeatured', isEqualTo: true)
          .limit(2)
          .get();
      return snapshot.docs.map((e) => ProductModel.fromSnapshot(e)).toList();
    } on FirebaseException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong,Please try again';
    }
  }
}
