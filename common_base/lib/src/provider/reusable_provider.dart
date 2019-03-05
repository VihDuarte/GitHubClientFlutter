class ReusableProvider {
  static final weakReferences = Expando<dynamic>();

  static T provideFor<T>(T Function() creator) {
    if (weakReferences[T] == null) {
      weakReferences[T] = creator();
    }
    return weakReferences[T];
  }
}
