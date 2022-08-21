class HomeModel {
  HomeModel({this.homeStore, this.bestSeller});

  List<HomeStore>? homeStore;
  List<BestSeller>? bestSeller;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        homeStore: List<HomeStore>.from(
            json["home_store"].map((x) => HomeStore.fromJson(x))),
        bestSeller: List<BestSeller>.from(
            json["best_seller"].map((x) => BestSeller.fromJson(x))),
      );
}

class BestSeller {
  BestSeller({
    this.id,
    this.isFavorites,
    this.title,
    this.priceWithoutDiscount,
    this.discountPrice,
    this.picture,
  });

  int? id;
  bool? isFavorites;
  String? title;
  int? priceWithoutDiscount;
  int? discountPrice;
  String? picture;

  factory BestSeller.fromJson(Map<String, dynamic> json) => BestSeller(
        id: json["id"],
        isFavorites: json["is_favorites"],
        title: json["title"],
        priceWithoutDiscount: json["price_without_discount"],
        discountPrice: json["discount_price"],
        picture: json["picture"],
      );
}

class HomeStore {
  HomeStore({
    this.id,
    this.isNew,
    this.title,
    this.subtitle,
    this.picture,
    this.isBuy,
  });

  int? id;
  bool? isNew;
  String? title;
  String? subtitle;
  String? picture;
  bool? isBuy;

  factory HomeStore.fromJson(Map<String, dynamic> json) => HomeStore(
        id: json["id"],
        isNew: json["is_new"],
        title: json["title"],
        subtitle: json["subtitle"],
        picture: json["picture"],
        isBuy: json["is_buy"],
      );
}
