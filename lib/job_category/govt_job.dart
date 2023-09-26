import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:photo_view/photo_view.dart';

class GovtJob extends StatefulWidget {
  const GovtJob({super.key});

  @override
  State<GovtJob> createState() => _GovtJobState();
}

class _GovtJobState extends State<GovtJob> {

  List<dynamic>Posts=[];
  Future<void>dataFetch()async{
    final Api="https://raw.githubusercontent.com/riadrayhan/Job_Circular_BD/main/govt_jobs";
    final response=await http.get(Uri.parse(Api));
    if(response.statusCode==200){
      setState(() {
        Posts=json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataFetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Job Castegory",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xe409052d),
        leading: Icon(Icons.post_add,color: Colors.white,),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children:List.generate(Posts.length, (index) {
              return Card(
                child: ExpansionTile(
                  title: Text("Govement Jobs",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Find your dream job",style: TextStyle(fontSize: 12),),
                  leading: Icon(Icons.screen_search_desktop_outlined,color: Colors.blueAccent,),
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 700,
                      color: Colors.teal,
                      child: PhotoView(imageProvider: NetworkImage(Posts[index]['imageurl']),)
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: Text(Posts[index]['deadline'],
                        style: TextStyle(color: Colors.red),textAlign: TextAlign.center),
                    )
                  ],
                ),
              );
            })
        ),
      ),
    );
  }
}
