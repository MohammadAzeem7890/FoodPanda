class ProductModel {
  List<ItemDetails> _itemDetails;

  ProductModel({List<ItemDetails> itemDetails}) {
    this._itemDetails = itemDetails;
  }

  List<ItemDetails> get itemDetails => _itemDetails;
  set itemDetails(List<ItemDetails> itemDetails) => _itemDetails = itemDetails;

  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json['item_details'] != null) {
      _itemDetails = new List<ItemDetails>();
      json['item_details'].forEach((v) {
        _itemDetails.add(new ItemDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._itemDetails != null) {
      data['item_details'] = this._itemDetails.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ItemDetails {
  int _categoryId;
  String _shopId;
  String _categoryName;
  String _isActive;
  String _sort;
  String _createdAt;
  String _updatedAt;
  List<Products> _products;

  ItemDetails(
      {int categoryId,
        String shopId,
        String categoryName,
        String isActive,
        String sort,
        String createdAt,
        String updatedAt,
        List<Products> products}) {
    this._categoryId = categoryId;
    this._shopId = shopId;
    this._categoryName = categoryName;
    this._isActive = isActive;
    this._sort = sort;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._products = products;
  }

  int get categoryId => _categoryId;
  set categoryId(int categoryId) => _categoryId = categoryId;
  String get shopId => _shopId;
  set shopId(String shopId) => _shopId = shopId;
  String get categoryName => _categoryName;
  set categoryName(String categoryName) => _categoryName = categoryName;
  String get isActive => _isActive;
  set isActive(String isActive) => _isActive = isActive;
  String get sort => _sort;
  set sort(String sort) => _sort = sort;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
  List<Products> get products => _products;
  set products(List<Products> products) => _products = products;

  ItemDetails.fromJson(Map<String, dynamic> json) {
    _categoryId = json['category_id'];
    _shopId = json['shop_id'];
    _categoryName = json['category_name'];
    _isActive = json['is_active'];
    _sort = json['sort'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    if (json['products'] != null) {
      _products = new List<Products>();
      json['products'].forEach((v) {
        _products.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this._categoryId;
    data['shop_id'] = this._shopId;
    data['category_name'] = this._categoryName;
    data['is_active'] = this._isActive;
    data['sort'] = this._sort;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    if (this._products != null) {
      data['products'] = this._products.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int _itemId;
  String _shopId;
  String _categoryId;
  String _itemTitle;
  String _itemImagePath;
  String _itemImageName;
  String _itemDescription;
  String _price;
  String _oldPrice;
  String _isActive;
  Null _metaData;
  String _createdAt;
  String _updatedAt;

  Products(
      {int itemId,
        String shopId,
        String categoryId,
        String itemTitle,
        String itemImagePath,
        String itemImageName,
        String itemDescription,
        String price,
        String oldPrice,
        String isActive,
        Null metaData,
        String createdAt,
        String updatedAt}) {
    this._itemId = itemId;
    this._shopId = shopId;
    this._categoryId = categoryId;
    this._itemTitle = itemTitle;
    this._itemImagePath = itemImagePath;
    this._itemImageName = itemImageName;
    this._itemDescription = itemDescription;
    this._price = price;
    this._oldPrice = oldPrice;
    this._isActive = isActive;
    this._metaData = metaData;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get itemId => _itemId;
  set itemId(int itemId) => _itemId = itemId;
  String get shopId => _shopId;
  set shopId(String shopId) => _shopId = shopId;
  String get categoryId => _categoryId;
  set categoryId(String categoryId) => _categoryId = categoryId;
  String get itemTitle => _itemTitle;
  set itemTitle(String itemTitle) => _itemTitle = itemTitle;
  String get itemImagePath => _itemImagePath;
  set itemImagePath(String itemImagePath) => _itemImagePath = itemImagePath;
  String get itemImageName => _itemImageName;
  set itemImageName(String itemImageName) => _itemImageName = itemImageName;
  String get itemDescription => _itemDescription;
  set itemDescription(String itemDescription) =>
      _itemDescription = itemDescription;
  String get price => _price;
  set price(String price) => _price = price;
  String get oldPrice => _oldPrice;
  set oldPrice(String oldPrice) => _oldPrice = oldPrice;
  String get isActive => _isActive;
  set isActive(String isActive) => _isActive = isActive;
  Null get metaData => _metaData;
  set metaData(Null metaData) => _metaData = metaData;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;

  Products.fromJson(Map<String, dynamic> json) {
    _itemId = json['item_id'];
    _shopId = json['shop_id'];
    _categoryId = json['category_id'];
    _itemTitle = json['item_title'];
    _itemImagePath = json['item_image_path'];
    _itemImageName = json['item_image_name'];
    _itemDescription = json['item_description'];
    _price = json['price'];
    _oldPrice = json['old_price'];
    _isActive = json['is_active'];
    _metaData = json['meta_data'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_id'] = this._itemId;
    data['shop_id'] = this._shopId;
    data['category_id'] = this._categoryId;
    data['item_title'] = this._itemTitle;
    data['item_image_path'] = this._itemImagePath;
    data['item_image_name'] = this._itemImageName;
    data['item_description'] = this._itemDescription;
    data['price'] = this._price;
    data['old_price'] = this._oldPrice;
    data['is_active'] = this._isActive;
    data['meta_data'] = this._metaData;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}