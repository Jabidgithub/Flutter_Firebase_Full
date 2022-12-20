class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occurred."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'weak-password':
        return SignUpWithEmailAndPasswordFailure(
            'Please enter a strong password');

      case 'invalid-password':
        return SignUpWithEmailAndPasswordFailure(
            'Email is not a valid or badly formatted');

      case 'email-already-in-use':
        return SignUpWithEmailAndPasswordFailure(
            'An account already exists for this email');

      case 'operation-not-allowed':
        return SignUpWithEmailAndPasswordFailure(
            'Operation not allowed, Please contact support');

      case 'user-disabled':
        return SignUpWithEmailAndPasswordFailure(
            'This user has been disabled, Please contact support for help');

      default:
        return SignUpWithEmailAndPasswordFailure();
    }
  }
}
