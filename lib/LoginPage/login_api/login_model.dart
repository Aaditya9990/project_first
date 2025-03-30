// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  bool success;
  LoginDetail loginDetail;

  LoginModel({
    required this.success,
    required this.loginDetail,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    success: json["success"],
    loginDetail: LoginDetail.fromJson(json["Login_detail"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "Login_detail": loginDetail.toJson(),
  };
}

class LoginDetail {
  String parentId;
  String parentUserId;
  String parentsPassword;
  String fatherName;
  String motherName;
  String workingStatus;
  dynamic motherMailId;
  String studentId;
  String studentName;
  String registrationNumber;
  DateTime dateOfAdmission;
  dynamic adharCardNo;
  String address;
  dynamic email;
  dynamic emergencyContactNo;
  String sessionId;
  String className;
  String sectionName;
  String sectionId;
  String classId;
  String studentStatus;
  DateTime dob;
  String gender;
  String bloodGroup;
  String companyId;
  String fatherMailId;
  String fatherMobileNo;
  String motherMobileNo;
  String companyName;
  String companyParentId;
  dynamic activeMobileNo;
  String rootparentcompanyid;
  String userType;
  String authToken;
  String loginmessage;

  LoginDetail({
    required this.parentId,
    required this.parentUserId,
    required this.parentsPassword,
    required this.fatherName,
    required this.motherName,
    required this.workingStatus,
    required this.motherMailId,
    required this.studentId,
    required this.studentName,
    required this.registrationNumber,
    required this.dateOfAdmission,
    required this.adharCardNo,
    required this.address,
    required this.email,
    required this.emergencyContactNo,
    required this.sessionId,
    required this.className,
    required this.sectionName,
    required this.sectionId,
    required this.classId,
    required this.studentStatus,
    required this.dob,
    required this.gender,
    required this.bloodGroup,
    required this.companyId,
    required this.fatherMailId,
    required this.fatherMobileNo,
    required this.motherMobileNo,
    required this.companyName,
    required this.companyParentId,
    required this.activeMobileNo,
    required this.rootparentcompanyid,
    required this.userType,
    required this.authToken,
    required this.loginmessage,
  });

  factory LoginDetail.fromJson(Map<String, dynamic> json) => LoginDetail(
    parentId: json["PARENT_ID"],
    parentUserId: json["PARENT_USER_ID"],
    parentsPassword: json["PARENTS_PASSWORD"],
    fatherName: json["FATHER_NAME"],
    motherName: json["MOTHER_NAME"],
    workingStatus: json["WORKING_STATUS"],
    motherMailId: json["MOTHER_MAIL_ID"],
    studentId: json["STUDENT_ID"],
    studentName: json["STUDENT_NAME"],
    registrationNumber: json["REGISTRATION_NUMBER"],
    dateOfAdmission: DateTime.parse(json["DATE_OF_ADMISSION"]),
    adharCardNo: json["ADHAR_CARD_NO"],
    address: json["ADDRESS"],
    email: json["EMAIL"],
    emergencyContactNo: json["EMERGENCY_CONTACT_NO"],
    sessionId: json["SESSION_ID"],
    className: json["CLASS_NAME"],
    sectionName: json["SECTION_NAME"],
    sectionId: json["SECTION_ID"],
    classId: json["CLASS_ID"],
    studentStatus: json["STUDENT_STATUS"],
    dob: DateTime.parse(json["DOB"]),
    gender: json["GENDER"],
    bloodGroup: json["BLOOD_GROUP"],
    companyId: json["COMPANY_ID"],
    fatherMailId: json["FATHER_MAIL_ID"],
    fatherMobileNo: json["FATHER_MOBILE_NO"],
    motherMobileNo: json["MOTHER_MOBILE_NO"],
    companyName: json["COMPANY_NAME"],
    companyParentId: json["COMPANY_PARENT_ID"],
    activeMobileNo: json["ACTIVE_MOBILE_NO"],
    rootparentcompanyid: json["ROOTPARENTCOMPANYID"],
    userType: json["UserType"],
    authToken: json["AUTH_TOKEN"],
    loginmessage: json["LOGINMESSAGE"],
  );

  Map<String, dynamic> toJson() => {
    "PARENT_ID": parentId,
    "PARENT_USER_ID": parentUserId,
    "PARENTS_PASSWORD": parentsPassword,
    "FATHER_NAME": fatherName,
    "MOTHER_NAME": motherName,
    "WORKING_STATUS": workingStatus,
    "MOTHER_MAIL_ID": motherMailId,
    "STUDENT_ID": studentId,
    "STUDENT_NAME": studentName,
    "REGISTRATION_NUMBER": registrationNumber,
    "DATE_OF_ADMISSION": "${dateOfAdmission.year.toString().padLeft(4, '0')}-${dateOfAdmission.month.toString().padLeft(2, '0')}-${dateOfAdmission.day.toString().padLeft(2, '0')}",
    "ADHAR_CARD_NO": adharCardNo,
    "ADDRESS": address,
    "EMAIL": email,
    "EMERGENCY_CONTACT_NO": emergencyContactNo,
    "SESSION_ID": sessionId,
    "CLASS_NAME": className,
    "SECTION_NAME": sectionName,
    "SECTION_ID": sectionId,
    "CLASS_ID": classId,
    "STUDENT_STATUS": studentStatus,
    "DOB": "${dob.year.toString().padLeft(4, '0')}-${dob.month.toString().padLeft(2, '0')}-${dob.day.toString().padLeft(2, '0')}",
    "GENDER": gender,
    "BLOOD_GROUP": bloodGroup,
    "COMPANY_ID": companyId,
    "FATHER_MAIL_ID": fatherMailId,
    "FATHER_MOBILE_NO": fatherMobileNo,
    "MOTHER_MOBILE_NO": motherMobileNo,
    "COMPANY_NAME": companyName,
    "COMPANY_PARENT_ID": companyParentId,
    "ACTIVE_MOBILE_NO": activeMobileNo,
    "ROOTPARENTCOMPANYID": rootparentcompanyid,
    "UserType": userType,
    "AUTH_TOKEN": authToken,
    "LOGINMESSAGE": loginmessage,
  };
}
