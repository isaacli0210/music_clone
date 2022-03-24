class M002RecentlyAdded {
  late String title;
  late String subtitle;
  late String imageURL;

  M002RecentlyAdded({
    required this.title,
    required this.subtitle,
    required this.imageURL
  });

  factory M002RecentlyAdded.fromJson(Map<String, dynamic> json) {
    final title = json['title'] as String;
    final subtitle = json['subtitle'] as String;
    final imageURL = json['imageURL'] as String;

    return M002RecentlyAdded(title: title, subtitle: subtitle, imageURL: imageURL);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    
    data['title'] = title;
    data['subtitle'] = subtitle;
    data['imageURL'] = imageURL;

    return data;
  }
}