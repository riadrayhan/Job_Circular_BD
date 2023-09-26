import 'package:flutter/material.dart';

import '../job_category/engineering.dart';
import '../job_category/govt_job.dart';
import '../job_category/non_govt.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Job Category",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xe409052d),
        leading: Icon(Icons.post_add,color: Colors.white,),
      ),
      body: Column(
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height:50,
                  child: Text("Total Circular : 55",style: TextStyle(fontSize: 16,fontStyle: FontStyle.italic),),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height:50,
                  child: Text("Total Post : 1,364",style: TextStyle(fontSize: 16,fontStyle: FontStyle.italic)),
                ),
              ],
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Govement Job Circular"),
              leading: Icon(Icons.add),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => GovtJob(),)),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Non-Govement Job Circular"),
              leading: Icon(Icons.add),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Non_Govt(),)),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Engineering Job Circular"),
              leading: Icon(Icons.add),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Engineers(),)),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Civil Job Circular"),
              leading: Icon(Icons.add),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Bank Job Circular"),
              leading: Icon(Icons.add),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Contactual Job Circular"),
              leading: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
