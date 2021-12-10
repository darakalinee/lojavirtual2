import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData {
  String category;
  String id;

  String title;
  String description;

  double status;

  List images;
  List sizes;

  ProductData.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    title = snapshot.data["title"];
    description = snapshot.data["description"];
    status = snapshot.data["status"] + 0.0;
    images = snapshot.data["images"];
    sizes = snapshot.data["size"];
  }

  Map<String, dynamic> toResumedMap() {
    return {"title": title, "description": description, "status": status};
  }
}
