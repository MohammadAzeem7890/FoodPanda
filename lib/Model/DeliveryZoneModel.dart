class DeliveryZoneModel {
  List<DeliveryZones> _deliveryZones;

  DeliveryZoneModel({List<DeliveryZones> deliveryZones}) {
    this._deliveryZones = deliveryZones;
  }

  List<DeliveryZones> get deliveryZones => _deliveryZones;
  set deliveryZones(List<DeliveryZones> deliveryZones) =>
      _deliveryZones = deliveryZones;

  DeliveryZoneModel.fromJson(Map<String, dynamic> json) {
    if (json['delivery_zones'] != null) {
      _deliveryZones = new List<DeliveryZones>();
      json['delivery_zones'].forEach((v) {
        _deliveryZones.add(new DeliveryZones.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._deliveryZones != null) {
      data['delivery_zones'] =
          this._deliveryZones.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DeliveryZones {
  int _deliveryZoneId;
  String _shopId;
  String _areaName;
  String _minimumOrder;
  String _deliveryCharges;
  String _createdAt;
  String _updatedAt;

  DeliveryZones(
      {int deliveryZoneId,
        String shopId,
        String areaName,
        String minimumOrder,
        String deliveryCharges,
        String createdAt,
        String updatedAt}) {
    this._deliveryZoneId = deliveryZoneId;
    this._shopId = shopId;
    this._areaName = areaName;
    this._minimumOrder = minimumOrder;
    this._deliveryCharges = deliveryCharges;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get deliveryZoneId => _deliveryZoneId;
  set deliveryZoneId(int deliveryZoneId) => _deliveryZoneId = deliveryZoneId;
  String get shopId => _shopId;
  set shopId(String shopId) => _shopId = shopId;
  String get areaName => _areaName;
  set areaName(String areaName) => _areaName = areaName;
  String get minimumOrder => _minimumOrder;
  set minimumOrder(String minimumOrder) => _minimumOrder = minimumOrder;
  String get deliveryCharges => _deliveryCharges;
  set deliveryCharges(String deliveryCharges) =>
      _deliveryCharges = deliveryCharges;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;

  DeliveryZones.fromJson(Map<String, dynamic> json) {
    _deliveryZoneId = json['delivery_zone_id'];
    _shopId = json['shop_id'];
    _areaName = json['area_name'];
    _minimumOrder = json['minimum_order'];
    _deliveryCharges = json['delivery_charges'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['delivery_zone_id'] = this._deliveryZoneId;
    data['shop_id'] = this._shopId;
    data['area_name'] = this._areaName;
    data['minimum_order'] = this._minimumOrder;
    data['delivery_charges'] = this._deliveryCharges;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}