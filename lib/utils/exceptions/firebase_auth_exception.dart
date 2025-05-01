class TFirebaseAuthException implements Exception {
  final String code;

  TFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'entered email is already register please enter different email address';
      case 'invalid-email':
        return 'The email address is provide is invalid please enter valid address';
      case 'weak-password':
        return 'The password is too weak plaese enter strong password';
      case 'user-disabled':
        return 'This user account is disabled plase contect support for assistance';
      case 'user-not-found':
        return 'Invalid login details.user not found';
      case 'wrong-password':
        return 'Incorrect password.please check your password and try again';
      case 'invalid-verification-code':
        return 'Invalid verification code.please enter valid code';
      case 'invalid-verification-id':
        return 'Invalid verification id please request new verification code';
      case 'quota-exceeded':
        return 'Quota exceeded.plase try again later';
      case 'email-already-exists':
        return 'The email address is already exist. plese eneter different email adderess';
      case 'provide-already-linked':
        return 'The account is already linked with another provider';

      default:
        return 'A Firebase error occurred. Please try again.';
    }
  }
}
