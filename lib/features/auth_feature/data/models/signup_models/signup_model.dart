class SignupModel {
	String? username;
	String? email;
	String? password;
	String? passwordConfirmation;

	SignupModel({
		this.username, 
		this.email, 
		this.password, 
		this.passwordConfirmation, 
	});

	factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
				username: json['username'] as String?,
				email: json['email'] as String?,
				password: json['password'] as String?,
				passwordConfirmation: json['password-confirmation'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'username': username,
				'email': email,
				'password': password,
				'password-confirmation': passwordConfirmation,
			};
}
