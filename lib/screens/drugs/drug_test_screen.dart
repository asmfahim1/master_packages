import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:master_package/controller/drugsController.dart';

import '../profile_screen.dart';
import 'med_tile.dart';

class MedScreen extends StatelessWidget {
  final DrugController drugController = Get.put(DrugController());

  MedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Center(child: Text("Drug List")),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => ProfileScreen());
            },
            icon: const Icon(
              Icons.add_shopping_cart_outlined,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    "Drugs",
                    style: TextStyle(
                      fontFamily: 'avenir',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.search_outlined,
                  size: 20,
                ),
                Icon(
                  Icons.search_outlined,
                  size: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              if (drugController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: drugController.medList.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return DrugTile(
                      medModel: drugController.medList[index],
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}

// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// import '../../models/medicine/med_model.dart';
//
// class MedScreen extends StatefulWidget {
//   const MedScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MedScreen> createState() => _MedScreenState();
// }
//
// class _MedScreenState extends State<MedScreen> {
//
//   Future<List<MedModel>>? futurePost;
//
//   Future<List<MedModel>> fetchPost() async {
//     var response = await http.get(Uri.parse(
//         'https://medicine-api-doc.herokuapp.com/api/v1/get/medicine'));
//
//     if (response.statusCode == 200) {
//       final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//
//       return parsed.map<MedModel>((json) => MedModel.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//
//     // submitData();
//     futurePost = fetchPost();
//
//     fetchPost().whenComplete(() => futurePost);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       child: Container(
//         padding: EdgeInsets.all(20),
//         child: FutureBuilder<List<MedModel>>(
//           future: futurePost,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (_, index) => Container(
//                   child: Column(
//                     children: [
//                       // Icon(Icons.notifications_active_outlined),
//                       // SizedBox(
//                       //   width: 100,
//                       // ),
//
//                       Card(
//                         child: Padding(
//                           padding: EdgeInsets.only(
//                               top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
//                           child: ExpansionTile(
//                             title: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 Column(
//                                   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Text(
//                                       " ${snapshot.data![index].name}",
//                                       style: TextStyle(
//                                         fontSize: 18,
//                                         //color: Color(0xff074974),
//                                       ),
//                                     ),
//                                     //Text(" ${snapshot.data![index].status}")
//                                   ],
//                                 ),
//                                 //Text(" ${snapshot.data![index].status}")
//                               ],
//                             ),
//                             children: <Widget>[
//                               // Text("From Date : "+(DateFormat("dd-MM-yyyy").format(DateTime.parse((snapshot.data![index].fromDate.date).toString()))).toString(),
//                               //   style: TextStyle(
//                               //       fontSize: 15,
//                               //       fontWeight: FontWeight.bold
//                               //   ),
//                               // ),
//                               // Text("To Date : "+(DateFormat("dd-MM-yyyy").format(DateTime.parse((snapshot.data![index].toDate.date).toString()))).toString(),
//                               //   style: TextStyle(
//                               //       fontSize: 15,
//                               //       fontWeight: FontWeight.bold
//                               //   ),
//                               // ),
//                               // Text(
//                               //   "Shift: " +
//                               //       "${snapshot.data![index].xshift.toString()}",
//                               //   style: GoogleFonts.bakbakOne(
//                               //     fontSize: 18,
//                               //     //color: Color(0xff074974),
//                               //   ),
//                               // ),
//                               // Text(
//                               //   "Status : " +
//                               //       "${snapshot.data![index].xstatus.toString()}",
//                               //   style: GoogleFonts.bakbakOne(
//                               //     fontSize: 18,
//                               //     //color: Color(0xff074974),
//                               //   ),
//                               // ),
//                               //
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             } else {
//               return Center(
//                 child: Image(image: AssetImage("images/loading.gif")),
//               );
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
