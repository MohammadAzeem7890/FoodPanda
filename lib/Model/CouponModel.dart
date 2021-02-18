class CouponModel {
  Null _coupon;

  CouponModel({Null coupon}) {
    this._coupon = coupon;
  }

  Null get coupon => _coupon;
  set coupon(Null coupon) => _coupon = coupon;

  CouponModel.fromJson(Map<String, dynamic> json) {
    _coupon = json['coupon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coupon'] = this._coupon;
    return data;
  }
}