class Article {
  String? id;
  String? title;
  String? image;
  String? catId;
  String? catName;
  String? author;
  String? view;
  String? status;
  bool? isFavorite;
  String? createdAt;

  Article(
      {this.id,
      this.title,
      this.image,
      this.catId,
      this.catName,
      this.author,
      this.view,
      this.status,
      this.isFavorite,
      this.createdAt});

  Article.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    catId = json['cat_id'];
    catName = json['cat_name'];
    author = json['author'];
    view = json['view'];
    status = json['status'];
    isFavorite = json['isFavorite'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    data['cat_id'] = catId;
    data['cat_name'] = catName;
    data['author'] = author;
    data['view'] = view;
    data['status'] = status;
    data['isFavorite'] = isFavorite;
    data['created_at'] = createdAt;
    return data;
  }
}