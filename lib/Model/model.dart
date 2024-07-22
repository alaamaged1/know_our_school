class SchoolModel {
  final String schoolName;
  final String schoolAddress;
  final String numberOfStudents;
  final String numberOfTeachers;

  SchoolModel({
    required this.schoolName,
    required this.schoolAddress,
    required this.numberOfStudents,
    required this.numberOfTeachers,
  });

  factory SchoolModel.fromJson(Map<String, dynamic> json) {
    return SchoolModel(
      schoolName: json['School Name'],
      schoolAddress: json['School Address'],
      numberOfStudents: json['Number of Students'],
      numberOfTeachers: json['Number of Teachers'],
    );
  }
}
