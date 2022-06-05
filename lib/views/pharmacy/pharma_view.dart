import 'package:flutter/material.dart';

import '../../models/pharmacy/pharma_model.dart';

class PharmaTile extends StatelessWidget {
  const PharmaTile({
    Key? key,
    this.id,
    this.name,
    this.image,
    this.location,
    this.v,
    required this.pharmacyModel,
  }) : super(key: key);

  final String? id;
  final String? image;
  final String? name;
  final String? location;
  final PharmacyModel pharmacyModel;
  final int? v;

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
                    "${pharmacyModel.image}",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Name : ' + '${pharmacyModel.name}',
              maxLines: 2,
              style: TextStyle(
                  fontFamily: 'avenir',
                  fontWeight: FontWeight.w800,
                  fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 5),
            Text(
              'Location : ' + '${pharmacyModel.location}',
              maxLines: 2,
              style: TextStyle(
                  fontFamily: 'avenir',
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
