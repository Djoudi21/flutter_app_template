import 'tokens_data.dart';
import 'user_data.dart';

// Define a class to represent the structure of the response data
class RegisterResponseData {
  UserData userData;
  TokensData tokens;
  int status;
  RegisterResponseData(this.userData, this.tokens, this.status);

  // Factory method to create an instance of LoginResponse from JSON
  factory RegisterResponseData.fromJson(Map<String, dynamic> json) {
    return RegisterResponseData(
      UserData.fromJson(json['data']['user']),
      TokensData.fromJson(json['tokens']),
      json['data']['status'],
    );
  }
}
