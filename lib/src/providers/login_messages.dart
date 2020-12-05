import 'package:flutter/material.dart';

class LoginMessages with ChangeNotifier {
  LoginMessages({
    this.usernameHint: defaultUsernameHint,
    this.passwordHint: defaultPasswordHint,
    this.confirmPasswordHint: defaultConfirmPasswordHint,
    this.forgotPasswordButton: defaultForgotPasswordButton,
    this.otpLoginButton: defaultOtpLoginButton,
    this.otpLoginIntro: defaultOtpLoginIntro,
    this.otpLoginDescription: defaultOtpLoginDescription,
    this.loginButton: defaultLoginButton,
    this.signupButton: defaultSignupButton,
    this.recoverPasswordButton: defaultRecoverPasswordButton,
    this.recoverPasswordIntro: defaultRecoverPasswordIntro,
    this.recoverPasswordDescription: defaultRecoverPasswordDescription,
    this.goBackButton: defaultGoBackButton,
    this.confirmPasswordError: defaultConfirmPasswordError,
    this.recoverPasswordSuccess: defaultRecoverPasswordSuccess,
    this.flushbarTitleSuccess: defaultFlushbarTitleSuccess,
    this.flushbarTitleError: defaultFlushbarTitleError,
    this.refCodeHint: defaultRefCodeHint,
    this.refCode: defaultRefCode,
  });

  static const defaultUsernameHint = 'Email';
  static const defaultPasswordHint = 'Password';
  static const defaultConfirmPasswordHint = 'Confirm Password';
  static const defaultForgotPasswordButton = 'Forgot Password?';
  static const defaultOtpLoginButton = "Otp Login";
  static const defaultLoginButton = 'LOGIN';
  static const defaultSignupButton = 'SIGNUP';
  static const defaultRecoverPasswordButton = 'RECOVER';
  static const defaultRecoverPasswordIntro = 'Reset your password here';
  static const defaultRecoverPasswordDescription =
      'We will send your plain-text password to this email account.';
  static const defaultOtpLoginIntro = 'Login with otp code!';
  static const defaultOtpLoginDescription =
      'We will send to your phone otp code';
  static const defaultGoBackButton = 'BACK';
  static const defaultConfirmPasswordError = 'Password do not match!';
  static const defaultRecoverPasswordSuccess = 'An email has been sent';
  static const defaultFlushbarTitleSuccess = 'Success';
  static const defaultFlushbarTitleError = 'Erorr';
  static const defaultRefCodeHint = 'Referrer code (Optional)';
  static const defaultRefCode = '';

  /// Hint text of the user name [TextField]
  final String usernameHint;

  /// Hint text of the password [TextField]
  final String passwordHint;

  /// Hint text of the confirm password [TextField]
  final String confirmPasswordHint;

  /// Hint text of the referrer code [TextField]
  final String refCodeHint;

  /// Default text of the referrer code [TextField]
  final String refCode;

  /// Forgot password button's label
  final String forgotPasswordButton;

  /// Otp login button's label
  final String otpLoginButton;

  /// Intro in password recovery form
  final String otpLoginIntro;

  /// Description in password recovery form
  final String otpLoginDescription;

  /// Login button's label
  final String loginButton;

  /// Signup button's label
  final String signupButton;

  /// Recover password button's label
  final String recoverPasswordButton;

  /// Intro in password recovery form
  final String recoverPasswordIntro;

  /// Description in password recovery form
  final String recoverPasswordDescription;

  /// Go back button's label. Go back button is used to go back to to
  /// login/signup form from the recover password form
  final String goBackButton;

  /// The error message to show when the confirm password not match with the
  /// original password
  final String confirmPasswordError;

  /// The success message to show after submitting recover password
  final String recoverPasswordSuccess;

  /// The success title to show in flushbar
  final String flushbarTitleSuccess;

  /// The success title to show in flushbar
  final String flushbarTitleError;
}
