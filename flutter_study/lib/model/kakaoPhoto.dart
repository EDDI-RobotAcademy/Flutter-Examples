class Model {
  Model({
    required this.collection,
    required this.datetime,
    required this.displaySitename,
    required this.docUrl,
    required this.height,
    required this.imageUrl,
    required this.thumbnailUrl,
    required this.width,
  });
  late final String collection;
  late final String datetime;
  late final String displaySitename;
  late final String docUrl;
  late final int height;
  late final String imageUrl;
  late final String thumbnailUrl;
  late final int width;

  Model.fromJson(Map<String, dynamic> json){
    collection = json['collection'];
    datetime = json['datetime'];
    displaySitename = json['display_sitename'];
    docUrl = json['doc_url'];
    height = json['height'];
    imageUrl = json['image_url'];
    thumbnailUrl = json['thumbnail_url'];
    width = json['width'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['collection'] = collection;
    _data['datetime'] = datetime;
    _data['display_sitename'] = displaySitename;
    _data['doc_url'] = docUrl;
    _data['height'] = height;
    _data['image_url'] = imageUrl;
    _data['thumbnail_url'] = thumbnailUrl;
    _data['width'] = width;
    return _data;
  }
}