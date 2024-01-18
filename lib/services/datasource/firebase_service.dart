import 'package:cloud_firestore/cloud_firestore.dart';

class FService {
  var db = FirebaseFirestore.instance;

  Future sendAlert(String cause, String detail) async {
    // var position = await determinePosition();
    await db.collection("alerts").add({
      "cause": cause,
      "detail": detail,
      "position": [-1.94708, 29.876376],
      "date": DateTime.now().millisecondsSinceEpoch
    });
  }
}
