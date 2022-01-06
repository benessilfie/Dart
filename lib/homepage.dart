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
	},
  {
		"name": "Charlotte Hull",
		"phone": "757-3427",
		"email": "aliquam.tincidunt@google.com",
		"country": "United Kingdom",
		"region": "Munster"
	},
	{
		"name": "Kareem Trevino",
		"phone": "280-5828",
		"email": "orci.adipiscing@outlook.ca",
		"country": "United Kingdom",
		"region": "Borno"
	},
	{
		"name": "Gage Franks",
		"phone": "1-485-143-7068",
		"email": "feugiat.tellus.lorem@icloud.couk",
		"country": "Spain",
		"region": "Kaliningrad Oblast"
	},
	{
		"name": "Laura Ford",
		"phone": "1-410-885-4159",
		"email": "lobortis@outlook.couk",
		"country": "Costa Rica",
		"region": "Comunitat Valenciana"
	},
	{
		"name": "Hannah Blankenship",
		"phone": "279-7287",
		"email": "rutrum@protonmail.couk",
		"country": "Peru",
		"region": "Hessen"
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

      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          // padding: const EdgeInsets.all(15),
          children: [
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 16),
               child: Text('Recents', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, ),),
             ),
          
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
      
          const Padding(
             padding: EdgeInsets.symmetric(horizontal: 16),
             child: Text('Contacts', 
             style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black,),),
           ),
           
           GroupedListView<Map<String, String>, String>(
             shrinkWrap: true,
      
          elements: data,
      
          groupBy: (element) => element['name'].toString().substring(0,1),
          groupSeparatorBuilder: (String groupByValue) => 
          SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(groupByValue.substring(0,1), textAlign: TextAlign.right, 
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
        ),
          ),
          
          itemBuilder: (context, Map<String, String> element) => Column(
        children: [
           ListTile(
                   leading: const CircleAvatar(
                   radius: 22,
                   backgroundImage: AssetImage('assets/adom.jpg'),),
                   title: Text('${element['name']}', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                   subtitle: Text('${element['phone']}'),
                   trailing: const IconButton(onPressed: null, icon: Icon(Icons.more_horiz)),
                 ),
      
                const Divider(
               indent: 25,
               thickness: 1,
            )
        ],
          ),
      
          itemComparator: (item1, item2) => 
          item1['name']!.compareTo(item2['name']!), // optional
      
          useStickyGroupSeparators: true, // optional
          floatingHeader: true, // optional
          order: GroupedListOrder.ASC, // optional
        ),
          ],
        ),
      ),
    );
  }
}