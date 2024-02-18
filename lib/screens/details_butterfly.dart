import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../model/model_butterfly.dart';

class ButterflyDetailPage extends StatelessWidget {
  final Butterfly butterfly;

  const ButterflyDetailPage(
    this.butterfly, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal.shade50,
        appBar: AppBar(
            backgroundColor: Colors.blue.shade600,
            title: Text(
              butterfly.name,
              style: const TextStyle(fontFamily: 'Pattaya'),
            ),
            centerTitle: true),
        body: ButterflyDetailView(butterfly));
  }
}

class ButterflyDetailView extends StatelessWidget {
  final Butterfly butterfly;

  const ButterflyDetailView(
    this.butterfly, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(50.px),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                  image: Image.network(butterfly.imageUrl).image,
                  fit: BoxFit.cover),
            ),
            SizedBox(height: 5.h),
            Text(
              butterfly.description,
              //style:  descriptionStyle,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16.sp, fontFamily: 'Pattaya', color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
