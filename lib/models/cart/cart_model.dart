class CartModel {
  CartModel({this.basket, this.delivery, this.id, this.total});

  List<Basket>? basket;
  String? delivery;
  String? id;
  int? total;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      CartModel(
        basket:
            List<Basket>.from(json["basket"].map((x) => Basket.fromJson(x))),
        delivery: json["delivery"],
        id: json["id"],
        total: json["total"],
      );
}

class Basket {
  Basket({this.id, this.images, this.price, this.title});

  int? id;
  String? images;
  int? price;
  String? title;

  factory Basket.fromJson(Map<String, dynamic> json) => Basket(
        id: json["id"],
        images: json["images"],
        price: json["price"],
        title: json["title"],
      );
}
