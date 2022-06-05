import 'package:flutter/material.dart';
import 'package:master_package/models/medicine/med_model.dart';

import '../../models/medicine/med_model.dart';

class DrugTile extends StatelessWidget {
  const DrugTile({
    Key? key,
    this.id,
    this.name,
    this.image,
    this.description,
    this.price,
    this.medModel,
  }) : super(key: key);

  final int? id;
  final String? name;
  final String? image;
  final String? description;
  final int? price;
  final MedModel? medModel;

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
                    medModel!.image.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Name: ' + "${medModel!.name}",
              maxLines: 2,
              style: TextStyle(
                  fontFamily: 'avenir',
                  fontWeight: FontWeight.w800,
                  fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
