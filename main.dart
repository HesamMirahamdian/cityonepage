import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '';

void main() => runApp(MyApp());


Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom:8),
              child: Text('سی و سه پل',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'ایران،اصفهان',
              style: TextStyle(
                color:Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      Icon(Icons.star,color: Colors.red[500],),
      Text('41'),
    ],
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.notifications), onPressed: (){}),
          title: Text('فلاتر اپ'),
        ),
        body: ListView(
          children: <Widget>[
            
            Image.network('http://uupload.ir/files/fej_si-o-se-pol.jpg',
            width: 700,
            height: 250,
            fit: BoxFit.cover,),
            titleSection,
            buttonSection,
            textSection,
            Card(
              child: ListTile(
                leading: FlutterLogo(size:40.0),
                title: Text('لورم ایپسوم'),
                subtitle: Text('این یک زیر متن است'),
                trailing: Icon(Icons.more_vert),
                onTap: (){},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.motorcycle,size: 40.0),
                title: Text('لورم ایپسوم'),
                subtitle: Text('این یک زیر متن است'),
                trailing: Icon(Icons.more_vert),
                onTap: (){},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.my_location,size: 40.0),
                title: Text('لورم ایپسوم'),
                subtitle: Text('این یک زیر متن است'),
                trailing: Icon(Icons.more_vert),
                onTap: (){
                },
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}



Column _buildButtonColumn(Color color, IconData icon,String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(icon,color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color:color,
          )
        ),
      ),
    ],
  );
}

Color color = Colors.blue;
Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.call, 'تماس'),
      _buildButtonColumn(color, Icons.near_me, 'مسیریابی'),
      _buildButtonColumn(color, Icons.share, 'اشتراک گذاری'),
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  alignment: Alignment.center,
  child: Text(
    'سی و سه پل اصفهان از بناهای قدیمی و زیبا این شهر است که'
    'سالانه تعداد گردشگران زیادی رو به خود جذب کرده است از تعداد'
    'بناهای موجود در اصفهان مانند نقش جهان هم میتوان اشاره نمود',
    textAlign: TextAlign.center,
    softWrap: true,
    
  ),
);

