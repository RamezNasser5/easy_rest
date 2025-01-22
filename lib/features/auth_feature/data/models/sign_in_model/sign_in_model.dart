class SignInModel {
  String? email;
  String? password;

  SignInModel({this.email, this.password});

  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      email: json['email'],
      password: json['password'],
    );
  }
}
