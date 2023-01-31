import 'package:flutter/material.dart';

class MeView extends StatelessWidget {
  const MeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        title: const Text(
          'Onur Balkanli',
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 0, top: 10),
            child: const CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/me.png'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'balkanlionur',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Düzenle')),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: ListTile(
              title: Text(
                'onur.balkanli@hotmail.com',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              leading: const Icon(Icons.mail),
              dense: true,
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 8),
              child: ListTile(
                title: Text(
                  'https://onurbalkanli.blogspot.com.tr/',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                leading: const Icon(Icons.link),
                dense: true,
              )),
          /* Row(
            children: const [
              _bottomContainer(
                textt: 'Facebook',
              ),
              _bottomContainer(textt: 'İnstagram'),
              _bottomContainer(textt: 'Github'),
            ],
          ),*/
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.cancel_presentation_rounded), label: 'Cancel'),
        BottomNavigationBarItem(
            icon: Icon(Icons.more), label: 'Show more activity')
      ]),
    );
  }
}
/*
// ignore: camel_case_types
class _bottomContainer extends StatelessWidget {
  const _bottomContainer({
    Key? key,
    required this.textt,
  }) : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final String textt;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 190, right: 15, left: 15),
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(textt),
      ),
    );
  }
}*/
