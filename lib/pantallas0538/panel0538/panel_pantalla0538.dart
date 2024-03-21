import 'package:flutter/material.dart';
import 'package:rivera_uii_act1_0538/pantallas0538/panel0538/widgets0538/item_gorras0538.dart';

class PanelPantalla0538 extends StatelessWidget {
  const PanelPantalla0538({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb1bacc),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/REriveradelgadillo/img_FlutterFlow_IOS_6J/main/Act12NavBar_FlutterFlow/usuario.jpg")),
          )
        ],
        title: Text(
          'Rivera Gorras0538',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xffb1bacc),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 5),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 5)
              ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Que quieres ver",
                hintStyle:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ),
        ),
        Container(
          height: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://raw.githubusercontent.com/REriveradelgadillo/img_FlutterFlow_IOS_6J/main/Act12NavBar_FlutterFlow/Local.jpg"))),
        ),
        ListTile(
          title: Text("Top Locales de gorras"),
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
          trailing: Icon(Icons.filter_list_outlined),
        ),
        Expanded(
            child: GridView.count(
          padding: EdgeInsets.all(15),
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          children: [for (int i = 1; i <= 10; i++) Itemgorras()],
        ))
      ]),
    );
  }
}
