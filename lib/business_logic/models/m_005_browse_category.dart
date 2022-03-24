class M005BrowseCategory {
  late String imageURL;
  late String title;

  M005BrowseCategory({
  required this.imageURL,
  required this.title
  });

  M005BrowseCategory.fromJson(Map<String, dynamic> json) {
    imageURL = json['imageURL'] ?? 'recently-added-01.jpg';
    title = json['title'] ?? 'No title';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    
    data['imageURL'] = imageURL;
    data['title'] = title;

    return data;
  }
}