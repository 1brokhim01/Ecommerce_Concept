class ProductDetailsModel {
  ProductDetailsModel({
    this.cpu,
    this.camera,
    this.capacity,
    this.color,
    this.id,
    this.images,
    this.isFavorites,
    this.price,
    this.rating,
    this.sd,
    this.ssd,
    this.title,
  });

  String? cpu;
  String? camera;
  List<String>? capacity;
  List<String>? color;
  String? id;
  List<String>? images;
  bool? isFavorites;
  int? price;
  double? rating;
  String? sd;
  String? ssd;
  String? title;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailsModel(
        cpu: json["CPU"],
        camera: json["camera"],
        capacity: List<String>.from(json["capacity"].map((x) => x)),
        color: List<String>.from(json["color"].map((x) => x)),
        id: json["id"],
        images: List<String>.from(json["images"].map((x) => x)),
        isFavorites: json["isFavorites"],
        price: json["price"],
        rating: json["rating"].toDouble(),
        sd: json["sd"],
        ssd: json["ssd"],
        title: json["title"],
      );
}
