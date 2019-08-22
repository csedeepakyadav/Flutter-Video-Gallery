import 'package:flutter/material.dart';
import 'vidplay.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class Data {
  String id;
  String url;

  Data(this.id, this.url);
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Data> vids = [
    Data('1',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('2',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('3',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('4',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('5',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('6',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('7',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('8',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('9',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('10',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('11',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('12',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('13',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('14',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('15',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('16',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('17',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('18',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
    Data('19',
        'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_30mb.mp4'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vid gallery'),
      ),
      body: Container(
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: vids.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          VideosPlay(vids[index].id, vids[index].url),
                    ),
                  );
                },
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    'https://placeimg.com/640/480/any',
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                ),
              );
            }),
      ),
    );
  }
}
