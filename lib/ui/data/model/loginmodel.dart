class LoginModel {
  bool? status;
  String? msg;
  DATA? dATA;
  String? token;

  LoginModel({this.status, this.msg, this.dATA, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    dATA = json['DATA'] != null ? new DATA.fromJson(json['DATA']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.dATA != null) {
      data['DATA'] = this.dATA!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class DATA {
  String? sId;
  String? role;
  int? usertype;
  bool? isAssigned;
  int? phone;
  bool? phoneVerified;
  bool? emailVerified;
  bool? ispasswordChanged;
  bool? isprofileUpdated;
  int? profileCompletionLevel;
  String? status;
  String? cartType;
  int? level;
  String? remarks;
  List<Null>? address;
  String? createDate;
  String? updateDate;
  int? iV;

  DATA(
      {this.sId,
        this.role,
        this.usertype,
        this.isAssigned,
        this.phone,
        this.phoneVerified,
        this.emailVerified,
        this.ispasswordChanged,
        this.isprofileUpdated,
        this.profileCompletionLevel,
        this.status,
        this.cartType,
        this.level,
        this.remarks,
        this.address,
        this.createDate,
        this.updateDate,
        this.iV});

  DATA.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    role = json['role'];
    usertype = json['usertype'];
    isAssigned = json['isAssigned'];
    phone = json['phone'];
    phoneVerified = json['phoneVerified'];
    emailVerified = json['emailVerified'];
    ispasswordChanged = json['ispasswordChanged'];
    isprofileUpdated = json['isprofileUpdated'];
    profileCompletionLevel = json['profileCompletionLevel'];
    status = json['status'];
    cartType = json['cartType'];
    level = json['level'];
    remarks = json['remarks'];
    if (json['address'] != null) {
      address = <Null>[];
      json['address'].forEach((v) {
         //address!.add(new Null.fromJson(v));
      });
    }
    createDate = json['create_date'];
    updateDate = json['update_date'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['role'] = this.role;
    data['usertype'] = this.usertype;
    data['isAssigned'] = this.isAssigned;
    data['phone'] = this.phone;
    data['phoneVerified'] = this.phoneVerified;
    data['emailVerified'] = this.emailVerified;
    data['ispasswordChanged'] = this.ispasswordChanged;
    data['isprofileUpdated'] = this.isprofileUpdated;
    data['profileCompletionLevel'] = this.profileCompletionLevel;
    data['status'] = this.status;
    data['cartType'] = this.cartType;
    data['level'] = this.level;
    data['remarks'] = this.remarks;
    if (this.address != null) {
      // data['address'] = this.address!.map((v) => v?.toJson()).toList();
    }
    data['create_date'] = this.createDate;
    data['update_date'] = this.updateDate;
    data['__v'] = this.iV;
    return data;
  }
}