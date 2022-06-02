import 'package:flutter/material.dart';
import 'package:master_package/models/doctor/doc_model.dart';

class DocTile extends StatelessWidget {
  const DocTile({
    Key? key,
    this.id,
    this.name,
    this.image,
    this.designation,
    this.chamber,
    this.v,
    this.doctorModel,
  }) : super(key: key);

  final String? id;
  final String? image;
  final String? name;
  final String? designation;
  final String? chamber;
  final int? v;
  final DoctorModel? doctorModel;
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
                    doctorModel!.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Name : ' + doctorModel!.name,
              maxLines: 2,
              style: TextStyle(
                  fontFamily: 'avenir',
                  fontWeight: FontWeight.w800,
                  fontSize: 15),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 5),
            Text(
              'Designation : ' + doctorModel!.designation,
              maxLines: 2,
              style: TextStyle(
                  fontFamily: 'avenir',
                  fontWeight: FontWeight.w600,
                  fontSize: 12),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
