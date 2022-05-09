class PharmacyListModel {
  int id;
  String name;
  // String brand;
  // String generic;
  // String location;

  PharmacyListModel({required this.id, required this.name});

  static List<PharmacyListModel> pharmacies = [
    PharmacyListModel(
      id: 1,
      name: "APC Pharma",
    ),
    PharmacyListModel(
      id: 2,
      name: "Beximco Pharma",
    ),
    PharmacyListModel(
      id: 3,
      name: "Centeon Pharma",
    ),
    PharmacyListModel(
      id: 4,
      name: "D16 Pharma & Biotec",
    ),
    PharmacyListModel(
      id: 5,
      name: "Euro Pharma",
    ),
    PharmacyListModel(
      id: 6,
      name: "FnF Pharmaceuticals",
    ),
    PharmacyListModel(
      id: 7,
      name: "Guardian Healthcare Pharma",
    ),
    PharmacyListModel(
      id: 8,
      name: "Hudson Pharma",
    ),
    PharmacyListModel(
      id: 9,
      name: "Ibn Sina Pharmaceuticals Ltd.",
    ),
    PharmacyListModel(
      id: 10,
      name: "Innova Pharma (Albion)",
    ),
  ];
}
