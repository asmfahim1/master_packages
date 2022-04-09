class DrugsByIndication {
  final int id;
  final String drugName;
  final String drugDescription;
  final String dPrice;

  DrugsByIndication(
      {required this.id,
      required this.drugName,
      required this.drugDescription,
      required this.dPrice});

  static List<DrugsByIndication> drugs = [
    DrugsByIndication(
        id: 1,
        drugName: "Abaloparatide Injection(Tymlos)",
        drugDescription: "Description 1",
        dPrice: " \$100"),
    DrugsByIndication(
        id: 2,
        drugName: "Baclofen(Kemostro)",
        drugDescription: "Description 2",
        dPrice: " \$110"),
    DrugsByIndication(
        id: 3,
        drugName: "Cabergoline(Dostinex)",
        drugDescription: "Description 3",
        dPrice: " \$120"),
    DrugsByIndication(
        id: 4,
        drugName: "Daclizumab(Zenapax)",
        drugDescription: "Description 4",
        dPrice: " \$130"),
    DrugsByIndication(
        id: 5,
        drugName: "Econazole Nitrate(Spectazol)",
        drugDescription: "Description 5",
        dPrice: " \$140"),
    DrugsByIndication(
        id: 6,
        drugName: "Falmina(Levonorgestral and Ethinyl Estradiol Tablets)",
        drugDescription: "Description 6",
        dPrice: " \$150"),
    DrugsByIndication(
        id: 7,
        drugName: "Gabapentin Tablets(Gralise)",
        drugDescription: "Description 7",
        dPrice: " \$160"),
    DrugsByIndication(
        id: 8,
        drugName: "Haemophilus b conjugate Vaccine(ActHIB)",
        drugDescription: "Description 8",
        dPrice: " \$170"),
    DrugsByIndication(
        id: 9,
        drugName: "Ibsrela(Tenapenor Tablets)",
        drugDescription: "Description 9",
        dPrice: " \$180"),
    DrugsByIndication(
        id: 10,
        drugName: "Jadenu(Deferasirox Tablets)",
        drugDescription: "Description 10",
        dPrice: " \$190"),
    DrugsByIndication(
        id: 11,
        drugName: "K-LOR(Potassium Chloride)",
        drugDescription: "Description 11",
        dPrice: " \$200"),
    DrugsByIndication(
        id: 12,
        drugName: "Lenvatinib",
        drugDescription: "Description 12",
        dPrice: " \$210"),
    DrugsByIndication(
        id: 13,
        drugName: "Medroxyprogesterone",
        drugDescription: "Description 13",
        dPrice: " \$220"),
    DrugsByIndication(
        id: 14,
        drugName: "Naprosyn",
        drugDescription: "Description 14",
        dPrice: " \$230"),
    DrugsByIndication(
        id: 15,
        drugName: "Omeprazole",
        drugDescription: "Description 15",
        dPrice: " \$240"),
    DrugsByIndication(
        id: 16,
        drugName: "Paracetamol",
        drugDescription: "Description 16",
        dPrice: " \$250"),
    DrugsByIndication(
        id: 17,
        drugName: "Quazepam",
        drugDescription: "Description 17",
        dPrice: " \$260"),
    DrugsByIndication(
        id: 18,
        drugName: "Ranitidine",
        drugDescription: "Description 18",
        dPrice: " \$270"),
    DrugsByIndication(
        id: 19,
        drugName: "Selenium",
        drugDescription: "Description 19",
        dPrice: " \$280"),
    DrugsByIndication(
        id: 20,
        drugName: "Temovate",
        drugDescription: "Description 20",
        dPrice: " \$290"),
    DrugsByIndication(
        id: 21,
        drugName: "Ultravist",
        drugDescription: "Description 21",
        dPrice: " \$300"),
    DrugsByIndication(
        id: 22,
        drugName: "Vascepa",
        drugDescription: "Description 22",
        dPrice: " \$310"),
    DrugsByIndication(
        id: 23,
        drugName: "Welireg",
        drugDescription: "Description 23",
        dPrice: " \$320"),
    DrugsByIndication(
        id: 24,
        drugName: "Xeomin",
        drugDescription: "Description 24",
        dPrice: " \$330"),
    DrugsByIndication(
        id: 25,
        drugName: "Yarrow",
        drugDescription: "Description 25",
        dPrice: " \$340"),
    DrugsByIndication(
        id: 26,
        drugName: "Zarxio",
        drugDescription: "Description 26",
        dPrice: " \$350"),
  ];
}
