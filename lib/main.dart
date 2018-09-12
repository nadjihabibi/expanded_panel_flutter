import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Contoh Expansion Panel'),
      ),
      body: ExpandedPanel(),
    ),
  ));
}


class ExpandedPanel extends StatefulWidget{
  _ExpandedPanelState createState()=>  _ExpandedPanelState();
}

class _ExpandedPanelState extends State<ExpandedPanel> {
  @override
  Widget build(BuildContext context){
    return ListView(
      children:[
        ListItemMenu(
          judul: 'Pertama',
          subjudul: 'subjudul pertama',
          color: Colors.white,
        ),
        ListItemMenu(
          judul: 'kedua',
          subjudul: 'subjudul kedua',
          color: Colors.tealAccent,
        ),
      ],      
    );
  }
}

class ListItemMenu extends StatelessWidget {
   final String judul;
   final String subjudul;
   final Color color;

   ListItemMenu({
     this.judul,
     this.subjudul,
     this.color,
   });


  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0),
    child: Card(elevation: 8.0,
      color: color,
      child: ExpansionTile(
        title: Text(
          judul,
          style: TextStyle(
            fontFamily: 'Bold',
            fontSize: 20.0
          ),
        ),
        children: [
          Divider(
            color: Colors.black,indent: 8.8),
          AnimatedContainer(
            child: Text(subjudul),
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 500),
            height: 100.0,
          ),
        ]
        ),
      ),
    );
  }
}