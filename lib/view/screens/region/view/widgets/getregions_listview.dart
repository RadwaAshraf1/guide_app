import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/view/screens/region/data/models/getregion.dart';

class GetRegionListView extends StatelessWidget {
  const GetRegionListView({super.key, required this.getRegion});

 final List<Regions?> getRegion;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        
        itemCount: getRegion.length,
        itemBuilder: (context, index) {
          
          return GetRegionListViewItem(regionItem: getRegion[index],);
        },),
    );
  }
}

class GetRegionListViewItem extends StatelessWidget {
  const GetRegionListViewItem({
    super.key, required this.regionItem,
  });
  final Regions? regionItem;

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
        child: Text(regionItem?.regionName ?? 'name'),
      ),
    
    );
  }
}