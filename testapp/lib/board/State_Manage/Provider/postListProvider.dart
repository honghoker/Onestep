import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:testapp/board/declareData/postData.dart';

class PostListProvider with ChangeNotifier {
  final _productsSnapshot = <DocumentSnapshot>[];
  String _errorMessage = "Board Provider RuntimeError";
  int documentLimit = 15;
  bool _hasNext = true;
  bool _isFetchingUsers = false;

  String get errorMessage => _errorMessage;
  bool get hasNext => _hasNext;

  List<BoardData> get boards => _productsSnapshot.map((snap) {
        return BoardData.fromFireStore(snap);
      }).toList();

  fetchNextProducts(String boardName) async {
    if (_isFetchingUsers) return;
    _isFetchingUsers = true;

    try {
      final snap = await getBoard(
        documentLimit,
        boardName,
        startAfter:
            _productsSnapshot.isNotEmpty ? _productsSnapshot.last : null,
      );
      _productsSnapshot.addAll(snap.docs);

      if (snap.docs.length < documentLimit) _hasNext = false;
      notifyListeners();
    } catch (error) {
      _errorMessage = error.toString();
      notifyListeners();
    }

    _isFetchingUsers = false;
  }

  Future<QuerySnapshot> getBoard(
    // Get Board List
    int limit,
    String boardName, {
    DocumentSnapshot startAfter,
  }) async {
    var refProducts;

    refProducts = FirebaseFirestore.instance
        .collection('Board')
        .doc(boardName)
        .collection(boardName)
        .orderBy("createDate", descending: true)
        .get();
    // .limit(limit);

    if (startAfter == null) {
      return refProducts.get();
    } else {
      return refProducts.startAfterDocument(startAfter).get();
    }
  }

  static Future<QuerySnapshot> getBoardCategory(
      // Get Board Category List
      ) async {
    return FirebaseFirestore.instance.collection('Board').get();
  }
}

// class PostListProvider with ChangeNotifier {
//   final _productsSnapshot = <DocumentSnapshot>[];
//   // List<BoardData> get boards => getBoard.map((snap) {
//   //       return BoardData.fromFireStore(snap);
//   //     }).toList();

//   getBoard(
//     // Get Board List
//     String boardName,
//   ) async {
//     return FirebaseFirestore.instance
//         .collection('Board')
//         .doc(boardName)
//         .collection(boardName)
//         .orderBy("createDate", descending: true)
//         .get();
//   }
// }
