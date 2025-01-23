class SignInModel {
  String? email;
  String? password;

  SignInModel({this.email, this.password});

  // Convert a JSON map into a SignInModel instance
  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      email: json['email'],
      password: json['password'],
    );
  }

  // Convert a SignInModel instance into a JSON map
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}
