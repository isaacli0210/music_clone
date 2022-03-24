class M003HighlightRadio {
  late String header;
  late String subheader;
  late String startTime;
  late String endTime;
  late String radioTitle;
  late String radioDescription;
  late String imageURL;

  M003HighlightRadio({
  required this.header,
  required this.subheader,
  required this.startTime,
  required this.endTime,
  required this.radioTitle,
  required this.radioDescription,
  required this.imageURL,
  });

  M003HighlightRadio.fromJson(Map<String, dynamic> json) {
    header = json['header'] ?? 'No title';
    subheader = json['subheader'] ?? 'No subheader';
    startTime = json['startTime'] ?? '09:00';
    endTime = json['endTime'] ?? '10:00';
    radioTitle = json['radioTitle'] ?? 'No radio title';
    radioDescription = json['radioDescription'] ?? 'No radio description';
    imageURL = json['imageURL'] ?? 'recently-added-01.jpg';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    
    data['header'] = header;
    data['subheader'] = subheader;
    data['startTime'] = startTime;
    data['endTime'] = endTime;
    data['radioTitle'] = radioTitle;
    data['radioDescription'] = radioDescription;
    data['imageURL'] = imageURL;

    return data;
  }
}