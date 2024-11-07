class UserModel {
  List<dynamic> result;

  UserModel({required this.result});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> fullData = [];

    fullData = fullData.map(
          (user) {
        return {
          "name": user["name"]["last"] + " " + user["name"]["last"],
          "email": user["email"],
          "image": user["picture"]["thumbnail"],
        };
      },
    ).toList();

    return UserModel(result: fullData);
  }
}