class SharedNotInitializedException implements Exception {
  @override
  String toString() {
    return "Your preferences has not been initialized!";
  }
}
