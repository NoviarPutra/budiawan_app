class AuthRegisterResponseInterface {
  String? status;
  String? message;
  UserRegistered? data;

  AuthRegisterResponseInterface({
    this.status,
    this.message,
    this.data,
  });

  AuthRegisterResponseInterface.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? UserRegistered.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class UserRegistered {
  String? name;
  String? email;
  String? role;
  String? id;
  String? createdAt;
  String? updatedAt;

  UserRegistered({
    this.name,
    this.email,
    this.role,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  UserRegistered.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
    id = json['id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['role'] = role;
    data['id'] = id;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
