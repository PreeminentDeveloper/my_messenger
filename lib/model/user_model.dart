class User {
  final int id;
  final String firstName;
  final String lastName;
  final String imageUrl;
  final bool isOnline;
  final bool hasStory;

  User(
      {this.id,
      this.firstName,
      this.lastName,
      this.imageUrl,
      this.isOnline,
      this.hasStory});
}
