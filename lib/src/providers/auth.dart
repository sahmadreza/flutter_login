import 'package:flutter/material.dart';

import '../models/login_data.dart';

enum AuthMode { Signup, Login }

/// The result is an error message, callback successes if message is null
typedef AuthCallback = Future<String> Function(LoginData);

/// The result is an error message, callback successes if message is null
typedef RecoverCallback = Future<String> Function(String);

/// The result is an error message, callback successes if message is null
typedef OtpVerifyCallback = Future<String> Function(String, String, String);

/// The result is an error message, callback successes if message is null
typedef OtpLoginCallback = Future<String> Function(String);

class Auth with ChangeNotifier {
  Auth({
    this.onLogin,
    this.onSignup,
    this.onRecoverPassword,
    this.onOtpLogin,
    this.onOtpVerify,
    String email = '',
    String otpCode = '',
    String password = '',
    String confirmPassword = '',
    String refCode = '',
  })  : this._email = email,
        this._otpCode = otpCode,
        this._password = password,
        this._confirmPassword = confirmPassword,
        this._refCode = refCode;

  final AuthCallback onLogin;
  final AuthCallback onSignup;
  final RecoverCallback onRecoverPassword;
  final OtpLoginCallback onOtpLogin;
  final OtpVerifyCallback onOtpVerify;

  AuthMode _mode = AuthMode.Login;

  AuthMode get mode => _mode;
  set mode(AuthMode value) {
    _mode = value;
    notifyListeners();
  }

  bool get isLogin => _mode == AuthMode.Login;
  bool get isSignup => _mode == AuthMode.Signup;
  bool isRecover = false;
  bool isOtpLogin = false;

  AuthMode opposite() {
    return _mode == AuthMode.Login ? AuthMode.Signup : AuthMode.Login;
  }

  AuthMode switchAuth() {
    if (mode == AuthMode.Login) {
      mode = AuthMode.Signup;
    } else if (mode == AuthMode.Signup) {
      mode = AuthMode.Login;
    }
    return mode;
  }

  String _otpCode = '';
  get otpCode => _otpCode;
  set otpCode(String otpCode) {
    _otpCode = otpCode;
    notifyListeners();
  }

  String _email = '';
  get email => _email;
  set email(String email) {
    _email = email;
    notifyListeners();
  }

  String _password = '';
  get password => _password;
  set password(String password) {
    _password = password;
    notifyListeners();
  }

  String _confirmPassword = '';
  get confirmPassword => _confirmPassword;
  set confirmPassword(String confirmPassword) {
    _confirmPassword = confirmPassword;
    notifyListeners();
  }

  String _refCode = '';
  get refCode => _refCode;
  set refCode(String refCode) {
    _refCode = refCode;
    notifyListeners();
  }
}
