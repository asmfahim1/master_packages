class DoctorListModel {
  int id;
  String name;
  // String brand;
  // String generic;
  // String location;

  DoctorListModel({required this.id, required this.name});

  static List<DoctorListModel> doctors = [
    DoctorListModel(
      id: 1,
      name: "Dr MD. Ahsan Haque Mridha",
    ),
    DoctorListModel(
      id: 2,
      name: "Dr Md. Farhan Nasif",
    ),
    DoctorListModel(
      id: 3,
      name: "Dr. Shamim Reza",
    ),
    DoctorListModel(
      id: 4,
      name: "Dr. Musanna Rahman",
    ),
    DoctorListModel(
      id: 5,
      name: "Dr. Nishat Sabah Nowshin",
    ),
    DoctorListModel(
      id: 6,
      name: "Dr. Fatema Afrin Nuha",
    ),
    DoctorListModel(
      id: 7,
      name: "Dr. Abdullah Al-Rafi",
    ),
    DoctorListModel(
      id: 8,
      name: "Dr. Achinta Paul",
    ),
    DoctorListModel(
      id: 9,
      name: "Dr. Ibn Sina",
    ),
    DoctorListModel(
      id: 10,
      name: "Dr. Jonathon Joy",
    ),
  ];
}
