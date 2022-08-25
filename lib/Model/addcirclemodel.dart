class MyConnectionModel {
  List<Customer>? customer;
  PagerModel? pagerModel;
  String? searchName;
  String? searchEmail;
  String? searchPhoneNumber;

  MyConnectionModel(
      {this.customer,
      this.pagerModel,
      this.searchName,
      this.searchEmail,
      this.searchPhoneNumber});

  MyConnectionModel.fromJson(Map<String, dynamic> json) {
    if (json['customer'] != null) {
      customer = <Customer>[];
      json['customer'].forEach((v) {
        customer!.add(new Customer.fromJson(v));
      });
    }
    pagerModel = json['PagerModel'] != null
        ? new PagerModel.fromJson(json['PagerModel'])
        : null;
    searchName = json['SearchName'];
    searchEmail = json['SearchEmail'];
    searchPhoneNumber = json['SearchPhoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.customer != null) {
      data['customer'] = this.customer!.map((v) => v.toJson()).toList();
    }
    if (this.pagerModel != null) {
      data['PagerModel'] = this.pagerModel!.toJson();
    }
    data['SearchName'] = this.searchName;
    data['SearchEmail'] = this.searchEmail;
    data['SearchPhoneNumber'] = this.searchPhoneNumber;
    return data;
  }
}

class Customer {
  List<ContactInCircleList>? contactInCircleList;
  String? firstName;
  String? lastName;
  String? gender;
  String? email;
  String? phoneNumber;
  String? dateOfBirth;
  String? photoUrl;
  String? country;
  int? id;

  Customer({
    this.contactInCircleList,
    this.firstName,
    this.lastName,
    this.gender,
    this.email,
    this.phoneNumber,
    this.dateOfBirth,
    this.photoUrl,
    this.country,
    this.id,
  });

  Customer.fromJson(Map<String, dynamic> json) {
    if (json['ContactInCircleList'] != null) {
      contactInCircleList = <ContactInCircleList>[];
      json['ContactInCircleList'].forEach((v) {
        contactInCircleList!.add(new ContactInCircleList.fromJson(v));
      });
    }
    firstName = json['FirstName'];
    lastName = json['LastName'];
    gender = json['Gender'];
    email = json['Email'];
    phoneNumber = json['PhoneNumber'];
    dateOfBirth = json['DateOfBirth'];
    photoUrl = json['PhotoUrl'];
    country = json['Country'];
    id = json['Id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.contactInCircleList != null) {
      data['ContactInCircleList'] =
          this.contactInCircleList!.map((v) => v.toJson()).toList();
    }
    data['FirstName'] = this.firstName;
    data['LastName'] = this.lastName;
    data['Gender'] = this.gender;
    data['Email'] = this.email;
    data['PhoneNumber'] = this.phoneNumber;
    data['DateOfBirth'] = this.dateOfBirth;
    data['PhotoUrl'] = this.photoUrl;
    data['Country'] = this.country;
    data['Id'] = this.id;

    return data;
  }
}

class ContactInCircleList {
  String? name;
  String? customerId;
  int? pictureId;
  String? pictureURL;
  CircleRoleSearchModel? circleRoleSearchModel;
  CircleRoleModel? circleRoleModel;
  CircleSearchModel? circleSearchModel;
  int? id;

  ContactInCircleList({
    this.name,
    this.customerId,
    this.pictureId,
    this.pictureURL,
    this.circleRoleSearchModel,
    this.circleRoleModel,
    this.circleSearchModel,
    this.id,
  });

  ContactInCircleList.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    customerId = json['CustomerId'];
    pictureId = json['PictureId'];
    pictureURL = json['PictureURL'];
    circleRoleSearchModel = json['CircleRoleSearchModel'] != null
        ? new CircleRoleSearchModel.fromJson(json['CircleRoleSearchModel'])
        : null;
    circleRoleModel = json['CircleRoleModel'] != null
        ? new CircleRoleModel.fromJson(json['CircleRoleModel'])
        : null;
    circleSearchModel = json['CircleSearchModel'] != null
        ? new CircleSearchModel.fromJson(json['CircleSearchModel'])
        : null;
    id = json['Id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['CustomerId'] = this.customerId;
    data['PictureId'] = this.pictureId;
    data['PictureURL'] = this.pictureURL;
    if (this.circleRoleSearchModel != null) {
      data['CircleRoleSearchModel'] = this.circleRoleSearchModel!.toJson();
    }
    if (this.circleRoleModel != null) {
      data['CircleRoleModel'] = this.circleRoleModel!.toJson();
    }
    if (this.circleSearchModel != null) {
      data['CircleSearchModel'] = this.circleSearchModel!.toJson();
    }
    data['Id'] = this.id;

    return data;
  }
}

class CircleRoleSearchModel {
  int? parentCircleId;
  int? page;
  int? pageSize;
  String? availablePageSizes;
  String? draw;
  int? start;
  int? length;

  CircleRoleSearchModel({
    this.parentCircleId,
    this.page,
    this.pageSize,
    this.availablePageSizes,
    this.draw,
    this.start,
    this.length,
  });

  CircleRoleSearchModel.fromJson(Map<String, dynamic> json) {
    parentCircleId = json['ParentCircleId'];
    page = json['Page'];
    pageSize = json['PageSize'];
    availablePageSizes = json['AvailablePageSizes'];
    draw = json['Draw'];
    start = json['Start'];
    length = json['Length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ParentCircleId'] = this.parentCircleId;
    data['Page'] = this.page;
    data['PageSize'] = this.pageSize;
    data['AvailablePageSizes'] = this.availablePageSizes;
    data['Draw'] = this.draw;
    data['Start'] = this.start;
    data['Length'] = this.length;

    return data;
  }
}

class CircleRoleModel {
  String? name;
  int? id;

  CircleRoleModel({this.name, this.id});

  CircleRoleModel.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    id = json['Id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Id'] = this.id;

    return data;
  }
}

class CircleSearchModel {
  String? name;
  int? page;
  int? pageSize;
  String? availablePageSizes;
  String? draw;
  int? start;
  int? length;

  CircleSearchModel({
    this.name,
    this.page,
    this.pageSize,
    this.availablePageSizes,
    this.draw,
    this.start,
    this.length,
  });

  CircleSearchModel.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    page = json['Page'];
    pageSize = json['PageSize'];
    availablePageSizes = json['AvailablePageSizes'];
    draw = json['Draw'];
    start = json['Start'];
    length = json['Length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Page'] = this.page;
    data['PageSize'] = this.pageSize;
    data['AvailablePageSizes'] = this.availablePageSizes;
    data['Draw'] = this.draw;
    data['Start'] = this.start;
    data['Length'] = this.length;

    return data;
  }
}

class PagerModel {
  int? currentPage;
  int? individualPagesDisplayedCount;
  int? pageIndex;
  int? pageSize;
  bool? showFirst;
  bool? showIndividualPages;
  bool? showLast;
  bool? showNext;
  bool? showPagerItems;
  bool? showPrevious;
  bool? showTotalSummary;
  int? totalPages;
  int? totalRecords;
  String? routeActionName;
  bool? useRouteLinks;
  RouteValues? routeValues;

  PagerModel(
      {this.currentPage,
      this.individualPagesDisplayedCount,
      this.pageIndex,
      this.pageSize,
      this.showFirst,
      this.showIndividualPages,
      this.showLast,
      this.showNext,
      this.showPagerItems,
      this.showPrevious,
      this.showTotalSummary,
      this.totalPages,
      this.totalRecords,
      this.routeActionName,
      this.useRouteLinks,
      this.routeValues});

  PagerModel.fromJson(Map<String, dynamic> json) {
    currentPage = json['CurrentPage'];
    individualPagesDisplayedCount = json['IndividualPagesDisplayedCount'];
    pageIndex = json['PageIndex'];
    pageSize = json['PageSize'];
    showFirst = json['ShowFirst'];
    showIndividualPages = json['ShowIndividualPages'];
    showLast = json['ShowLast'];
    showNext = json['ShowNext'];
    showPagerItems = json['ShowPagerItems'];
    showPrevious = json['ShowPrevious'];
    showTotalSummary = json['ShowTotalSummary'];
    totalPages = json['TotalPages'];
    totalRecords = json['TotalRecords'];
    routeActionName = json['RouteActionName'];
    useRouteLinks = json['UseRouteLinks'];
    routeValues = json['RouteValues'] != null
        ? new RouteValues.fromJson(json['RouteValues'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CurrentPage'] = this.currentPage;
    data['IndividualPagesDisplayedCount'] = this.individualPagesDisplayedCount;
    data['PageIndex'] = this.pageIndex;
    data['PageSize'] = this.pageSize;
    data['ShowFirst'] = this.showFirst;
    data['ShowIndividualPages'] = this.showIndividualPages;
    data['ShowLast'] = this.showLast;
    data['ShowNext'] = this.showNext;
    data['ShowPagerItems'] = this.showPagerItems;
    data['ShowPrevious'] = this.showPrevious;
    data['ShowTotalSummary'] = this.showTotalSummary;
    data['TotalPages'] = this.totalPages;
    data['TotalRecords'] = this.totalRecords;
    data['RouteActionName'] = this.routeActionName;
    data['UseRouteLinks'] = this.useRouteLinks;
    if (this.routeValues != null) {
      data['RouteValues'] = this.routeValues!.toJson();
    }
    return data;
  }
}

class RouteValues {
  int? pageNumber;
  String? q;
  String? keyword;

  RouteValues({this.pageNumber, this.q, this.keyword});

  RouteValues.fromJson(Map<String, dynamic> json) {
    pageNumber = json['pageNumber'];
    q = json['q'];
    keyword = json['keyword'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pageNumber'] = this.pageNumber;
    data['q'] = this.q;
    data['keyword'] = this.keyword;
    return data;
  }
}
