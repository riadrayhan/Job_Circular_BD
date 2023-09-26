import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String company_name,post,description;
  const DetailsPage({super.key, required this.company_name, required this.post,required this.description});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Job Details Activity",style: TextStyle(color: Colors.black),),
        backgroundColor: Color(0xfdea9ac1),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    width: MediaQuery.of(context).size.width/2,
                    child: Text(widget.company_name,style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(3),
                    width: MediaQuery.of(context).size.width/2,
                    child: Text(widget.post,style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.description),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
