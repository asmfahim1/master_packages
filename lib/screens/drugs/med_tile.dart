import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:master_package/models/medicine/med_model.dart';

import '../../models/medicine/med_model.dart';

class DrugTile extends StatelessWidget {
  final MedModel medModel;
  const DrugTile(this.medModel);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Image.network(
                    medModel.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Obx(() => CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          icon: medModel.isFavorite.value
                              ? Icon(Icons.favorite_rounded)
                              : Icon(Icons.favorite_border),
                          onPressed: () {
                            medModel.isFavorite.toggle();
                          },
                        ),
                      )),
                )
              ],
            ),
            SizedBox(height: 8),
            Text(
              medModel.name,
              maxLines: 2,
              style:
                  TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text(
              medModel.description,
              maxLines: 2,
              style:
                  TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            // if (medModel.rating != null)
            //   Container(
            //     decoration: BoxDecoration(
            //       color: Colors.green,
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //     padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            //     child: Row(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         Text(
            //           medModel.rating.toString(),
            //           style: TextStyle(color: Colors.white),
            //         ),
            //         Icon(
            //           Icons.star,
            //           size: 16,
            //           color: Colors.white,
            //         ),
            //       ],
            //     ),
            //   ),
            SizedBox(height: 8),
            Text('\$${medModel.price}',
                style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
          ],
        ),
      ),
    );
  }
}
