class PostItem {
  String? name;
  String? profileImage;
  String? postImage;
  String? caption;
  String? timeAgo;
  int? likes;
  int? comments;
  int? shares;

  PostItem(
      {this.name,
      this.profileImage,
      this.postImage,
      this.caption,
      this.timeAgo,
      this.likes,
      this.comments,
      this.shares});
}