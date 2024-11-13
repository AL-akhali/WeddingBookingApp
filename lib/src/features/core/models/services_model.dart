class ServicesModel {
  String? image;
  String? categort;
  int? dicount;

  ServicesModel({this.image, this.categort, this.dicount});

  ServicesModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    categort = json['categort'];
    dicount = json['dicount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['categort'] = this.categort;
    data['dicount'] = this.dicount;
    return data;
  }
}