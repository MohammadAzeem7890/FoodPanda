class AddOrdersModel {
  int deliveryZoneId;
  int couponId;
  String firstName;
  String lastName;
  String email;
  String address;
  String contactNumber;
  String orderInstructions;
  String grandTotal;
  String couponDiscount;
  int deliveryCharges;
  String orderStatus;
  String metaData;
  int shopId;

  AddOrdersModel(
      {this.deliveryZoneId,
      this.couponId,
      this.firstName,
      this.lastName,
      this.email,
      this.address,
      this.contactNumber,
      this.orderInstructions,
      this.grandTotal,
      this.couponDiscount,
      this.deliveryCharges,
      this.orderStatus,
      this.metaData,
      this.shopId});

  AddOrdersModel.fromJson(Map<String, dynamic> json) {
    this.deliveryZoneId = json['delivery_zone_id'];
    this.couponId = json['coupon_id'];
    this.firstName = json['first_name'];
    this.lastName = json['last_name'];
    this.email = json['email'];
    this.address = json['address'];
    this.contactNumber = json['contact_number'];
    this.orderInstructions = json['order_instruction'];
    this.grandTotal = json['grand_total'];
    this.couponDiscount = json['coupon_discount'];
    this.deliveryCharges = json['delivery_charges'];
    this.orderStatus = json['order_status'];
    this.metaData = json['meta_data'];
    this.shopId = json['shop_id'];
  }
}
