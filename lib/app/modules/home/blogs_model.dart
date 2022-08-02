class Blogs {
  String? id;
  String? judul;
  String? imgUrl;
  String? category;
  String? author;
  String? createAt;

  Blogs(
      {this.id,
      this.judul,
      this.imgUrl,
      this.category,
      this.author,
      this.createAt});

  Blogs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    judul = json['judul'];
    imgUrl = json['imgUrl'];
    category = json['category'];
    author = json['author'];
    createAt = json['createAt'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['judul'] = judul;
    data['imgUrl'] = imgUrl;
    data['category'] = category;
    data['author'] = author;
    data['createAt'] = createAt;
    return data;
  }
}
