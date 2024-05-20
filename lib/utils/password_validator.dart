String? validatePassword(String? value) {
  const pattern = r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$';

  final regex = RegExp(pattern);

  return !regex.hasMatch(value!)
      ? 'Invalid password. Your password must be 8-64 characters long, include at least 1 capital letter, include at least 1 digit.'
      : null;
}
