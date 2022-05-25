import 'package:flutter/material.dart';
import 'package:master_package/models/medicine/med_model.dart';

import '../../models/medicine/med_model.dart';

class DrugTile extends StatelessWidget {
  const DrugTile({
    Key? key,
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
    this.medModel,
  }) : super(key: key);

  final int? id;
  final int? albumId;
  final String? title;
  final String? url;
  final String? thumbnailUrl;
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
                    medModel!.url.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Text(
              'Id: ' "${medModel!.id.toString()}",
              maxLines: 2,
              style:
                  TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 5),
            Text(
              'Title: ' "${medModel!.title}",
              maxLines: 2,
              style:
                  TextStyle(fontFamily: 'avenir', fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 5),
            // Text('Thumbnail: ' '${medModel!.thumbnailUrl}',
            //     style: TextStyle(fontSize: 10, fontFamily: 'avenir')),
          ],
        ),
      ),
    );
  }
}
