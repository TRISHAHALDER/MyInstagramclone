import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String uid;
  final likes;
  final String postId;
  final String username;
  final  datePublished;
  final String postUrl;
  final String profileImage;

  const Post(
      {required this.description,
      required this.uid,
      required this.likes,
      required this.postId,
      required this.username,
      required this.datePublished,
      required this.postUrl,
      required this.profileImage
      });
  Map<String, dynamic> toJson() => {
        'username': username,
        'uid': uid,
        'description': description,
        'photoUrl': postUrl,
        'postId': postId,
        'profileImage': profileImage,
        'datePublished': datePublished,
        'likes':likes,
      };
  static Post fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Post(
      username: snapshot['username'],
      uid: snapshot['uid'],
      description: snapshot['description'],
      postId: snapshot['postId'],
      datePublished: snapshot['datePublished'],
      postUrl: snapshot['postUrl'],
      profileImage: snapshot['profileImage'],
       likes: snapshot['likes']
    );
  }
}
