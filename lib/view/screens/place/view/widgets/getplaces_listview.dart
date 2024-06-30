import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/view/screens/place/data/models/getplace.dart';

class GetPlacesListView extends StatelessWidget {
  const GetPlacesListView({super.key, this.placesModels});

  final List<Places>? placesModels;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:    ListView.separated(
                      separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.transparent),
        itemCount: placesModels!.length,
        itemBuilder: (context, index) {
          
          return ListViewItem(placesItem: placesModels![index],);
        },),
    );
  }
}

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key, required this.placesItem,
  });
  final Places? placesItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: black,width: 1),
          borderRadius: BorderRadius.circular(16),
          color: white,
        ),
        child: Text(placesItem?.placeName ?? 'name'),
      ),
    
    );
  }
}