class ModelRegister {
  final String userName;
  final String email;
  final String passWord;

  final String uid;
  final String image;
  final String pio;

  ModelRegister({
    required this.userName,
    required this.email,
    required this.passWord,
    required this.uid,
    required this.image,
    required this.pio,
  });

  factory ModelRegister.fromJson(Map<String, dynamic> json) {
    return ModelRegister(
        image: json['image'],
        pio: json['pie'],
        userName: json['userName'],
        email: json['email'],
        passWord: json['password'],
        uid: json["uid"]);
  }

  Map<String, dynamic> toMap() {
    return {
      'userName': userName,
      'password': passWord,
      'email': email,
      'uid': uid,
      'pio': pio,
      'image': image
    };
  }
}
