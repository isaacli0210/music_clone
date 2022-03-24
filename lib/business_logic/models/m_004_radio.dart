class M004Radio {
  late String radioTitle;
  late String radioDescription;
  late String imageURL;

  M004Radio({
  required this.radioTitle,
  required this.radioDescription,
  required this.imageURL,
  });

  M004Radio.fromJson(Map<String, dynamic> json) {
    radioTitle = json['radioTitle'] ?? 'No radio title';
    radioDescription = json['radioDescription'] ?? 'No radio description';
    imageURL = json['imageURL'] ?? 'recently-added-01.jpg';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    
    data['radioTitle'] = radioTitle;
    data['radioDescription'] = radioDescription;
    data['imageURL'] = imageURL;

    return data;
  }
}