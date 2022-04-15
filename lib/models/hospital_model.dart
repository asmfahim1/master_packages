class HospitalListModel {
  int id;
  String name;
  // String brand;
  // String generic;
  // String location;

  HospitalListModel({required this.id, required this.name});

  static List<HospitalListModel> hospitals = [
    HospitalListModel(
      id: 1,
      name: "Aichi Hospital, Dhaka",
    ),
    HospitalListModel(
      id: 2,
      name: "Bangladesh Medical College Hospital, Dhaka",
    ),
    HospitalListModel(
      id: 3,
      name: "Catharsis Medical Centre Limited, Gazipur",
    ),
    HospitalListModel(
      id: 4,
      name: "Dhaka National Medical College And Hospital Institute",
    ),
    HospitalListModel(
      id: 5,
      name: "Eastern Hospital & Medical Research Centre",
    ),
    HospitalListModel(
      id: 6,
      name: "Farazy Hospital Ltd, Dhaka",
    ),
    HospitalListModel(
      id: 7,
      name: "Government Homeopathic Medical College Hospital",
    ),
    HospitalListModel(
      id: 8,
      name: "United Hospital Ltd. Dhaka",
    ),
    HospitalListModel(
      id: 9,
      name: "Ibn Sina Hospitals, Dhaka.",
    ),
    HospitalListModel(
      id: 10,
      name: "Labaid Cardiac Hospital, Dhaka",
    ),
  ];
}
