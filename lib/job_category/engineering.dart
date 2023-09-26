import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'details_page.dart';

class Engineers extends StatefulWidget {
  const Engineers({super.key});

  @override
  State<Engineers> createState() => _EngineersState();
}

class _EngineersState extends State<Engineers> {

  List<dynamic>Posts=[];
  Future<void>datafetch()async{
    final api="https://raw.githubusercontent.com/riadrayhan/Job_Circular_BD/main/engineers";
    final response=await get(Uri.parse(api));
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
    datafetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title: Text("Engineering Jobs",style: TextStyle(color: Colors.white),),
        actions: [Icon(Icons.book_outlined,color: Colors.white,)],
        backgroundColor: Color(0xfd0d1d5d),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(Posts.length, (index) {
            return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Color(0xb8e0829f),
                  )
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(
                    company_name:Posts[index]['company_name'],key: UniqueKey(),
                    post:Posts[index]['post'], description: Posts[index]['description'],
                  ),));
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage("https://scontent.fdac99-1.fna.fbcdn.net/v/t39.30808-6/233275558_4265812730146432_5832466842949296092_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeHBrL3ad49JCWOqYGUS6ucifKTxDNe1bGd8pPEM17VsZ8uE7unEpHwF5rjY9N0bykdmL1GSpJbczm4gzg2hqvaC&_nc_ohc=BFeehUcRFy4AX8Q756Y&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCsnfbxdQCRFOKpKKxqxcRXQ6BXDo-sZsJGi90uauFY7g&oe=6516F509"),
                          ),
                          Text("🏚️"+Posts[index]['company_name'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                          Text("📍"+Posts[index]['location'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                        ],
                      ),
                    ),
                    // ============ //
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(Posts[index]['post']),
                          Text(Posts[index]['salary']),
                          Text("Post : 3")
                        ],
                      ),
                    ),
                    // ============ //
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text("DeadLine : 24-09-2023",style: TextStyle(color:Colors.red),),
                    ),
                  ],
                ),
              ),
            );
          })
        ),
      ),
    );
  }
}
