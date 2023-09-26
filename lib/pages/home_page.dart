import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text("Job Circular BD",style: TextStyle(color: Color(0xda0a2362),
                fontWeight: FontWeight.bold,fontSize: 25,fontStyle: FontStyle.italic),
            ),
          SizedBox(height: 30,),
          Container(
            width: MediaQuery.of(context).size.width/1.1,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: 'Search your job',
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Perform the search here
                  },
                ),
              ),
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Jobs",style: TextStyle(color: Colors.blueAccent[700],
                  fontWeight: FontWeight.bold,fontSize: 17)),
                  Text("See All",style: TextStyle(color: Colors.blue[400],
                      fontWeight: FontWeight.normal,fontSize: 14)),
                ],
              ),
            ),
            //==================//
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
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
                              Text("W3 Engineers.Ltd",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),),
                              SizedBox(width: 7,),
                              Text("📍 MohammadPur",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple),),
                            ],
                          ),
                        ),
                        // ============ //
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Jr. Software Engineer  |  "),
                              Text("BDT 300k-320K"),
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
                  //===============popular job 1st end==============//
                  Card(
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
                              Text("Digicon.Ltd",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),),
                              SizedBox(width: 7,),
                              Text("📍 Uttara,Dhaka",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple),),
                            ],
                          ),
                        ),
                        // ============ //
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Jr. Flutter Developer  |  "),
                              Text("BDT 20-30K"),
                            ],
                          ),
                        ),
                        // ============ //
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text("DeadLine : 03-10-2023",style: TextStyle(color:Colors.red),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //===========popular sector end=======//
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Newest Jobs",style: TextStyle(color: Colors.blueAccent[700],
                      fontWeight: FontWeight.bold,fontSize: 17)),
                  Text(" "),
                ],
              ),
            ),
            Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xb8e0829f),
                    )
                  ),
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
                            Text("🏚️ Pondit IT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                            Text("📍 Azimpur,Dhaka",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                          ],
                        ),
                      ),
                      // ============ //
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Web Developer "),
                            Text("BDT 300k-320K"),
                            Text("Post : 7")
                          ],
                        ),
                      ),
                      // ============ //
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text("DeadLine : 14-07-2023",style: TextStyle(color:Colors.red),),
                      ),
                    ],
                  ),
                ),
                //==========newest 1st end======//

                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xb8e0829f),
                      )
                  ),
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
                            Text("🏚️ Creative Engineers.Ltd",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                            Text("📍 Badda",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey),),
                          ],
                        ),
                      ),
                      // ============ //
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Python Developer"),
                            Text("BDT 200k-210K"),
                            Text("Post : 1")
                          ],
                        ),
                      ),
                      // ============ //
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text("DeadLine : 26-11-2023",style: TextStyle(color:Colors.red),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
