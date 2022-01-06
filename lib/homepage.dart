import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();

  final List<Map<String,String>> data = [
	{
		"name": "Karly Pierce",
		"phone": "858-1437",
		"email": "suspendisse.aliquet@yahoo.ca",
		"country": "Vietnam",
		"region": "Gilgit Baltistan"
	},
	{
		"name": "Inga Benton",
		"phone": "1-566-178-7432",
		"email": "tincidunt.orci@aol.edu",
		"country": "Pakistan",
		"region": "Huádōng"
	},
	{
		"name": "Hadley Cunningham",
		"phone": "866-4079",
		"email": "nulla.eget@outlook.net",
		"country": "Chile",
		"region": "North Sulawesi"
	},
	{
		"name": "Chancellor Ashley",
		"phone": "1-247-351-0476",
		"email": "sociis.natoque.penatibus@hotmail.org",
		"country": "Ireland",
		"region": "Atacama"
	},
	{
		"name": "Ronan Bird",
		"phone": "998-0231",
		"email": "hendrerit.consectetuer.cursus@protonmail.net",
		"country": "Brazil",
		"region": "Lanarkshire"
	}
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My Contacts', 
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600,
        color: Colors.black),),

        actions: const [
          Padding(padding: EdgeInsets.only(right: 10),
          child: Center(
            child: CircleAvatar(radius: 25, 
            backgroundImage: AssetImage('assets/avatar.jpg'),),
           ),
          ),
        ],

        elevation: 0,
        backgroundColor: Colors.white,
        bottom:  PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
           child: TextField(
             decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(13)
              ),
              hintText: 'search by name or number',
              prefixIcon: const Icon(Icons.search),
            ),
          ),
        ),),
      ),

      body: ListView(
        controller: _scrollController,
        // padding: const EdgeInsets.all(15),
        children: [
           const Text('Recents', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, ),),
        
        ListView.separated(
          controller: _scrollController,
          shrinkWrap: true,
          itemBuilder: (context, index){

            return const ListTile(
             leading: CircleAvatar(
               radius: 22,
               backgroundImage: AssetImage('assets/adom.jpg'),),
             title: Text('Micheal Nyarko', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
             subtitle: Text('+233 56 342 8965'),
             trailing: IconButton(onPressed: null, icon: Icon(Icons.more_horiz)),
           );
        }, 

          separatorBuilder: (context, index){
            return const Divider(
             indent: 25,
             thickness: 1,
          );},
          itemCount: 3),

         const Text('Contacts', 
         style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black,),),
         
         GroupedListView<dynamic, String>(
           shrinkWrap: true,

    elements: data,

    groupBy: (element) => element['name'].toString().substring(0,1),
    groupSeparatorBuilder: (String groupByValue) => 
    SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Text(groupByValue.substring(0,1), textAlign: TextAlign.right, 
      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
    ),
    
    itemBuilder: (context, dynamic element) => Column(
      children: const [
         ListTile(
                 leading: CircleAvatar(
                 radius: 22,
                 backgroundImage: AssetImage('assets/adom.jpg'),),
                 title: Text('Micheal Nyarko', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                 subtitle: Text('+233 56 342 8965'),
                 trailing: IconButton(onPressed: null, icon: Icon(Icons.more_horiz)),
               ),

               Divider(
             indent: 25,
             thickness: 1,
          )
      ],
    ),

    itemComparator: (item1, item2) => 
    item1['name'].compareTo(item2['name']), // optional

    useStickyGroupSeparators: true, // optional
    floatingHeader: true, // optional
    order: GroupedListOrder.ASC, // optional
  ),
        ],
      ),
    );
  }
}