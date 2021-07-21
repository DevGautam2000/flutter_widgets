import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biz card"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [_getCard(), _getAvatar()],
        ),
      ),
    );
  }

  TextStyle _getStyle(Color color) {
    return TextStyle(color: color);
  }

  Container _getCard() {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(35.0),
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(4.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Gautam Chandra Saha",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500),
          ),
          Text(
            "devgautam1231@gmail.com",
            style: _getStyle(Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
              Text(
                "T: ping me for projects",
                style: _getStyle(Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: Colors.white, width: 1.2),
        image: DecorationImage(
            image: NetworkImage(
                'https://media-exp1.licdn.com/dms/image/C4E03AQGc7MwtoCV1Ww/prof'
                'ile-displayphoto-shrink_400_400/0/1615207417141?e=1632355200&v=beta&'
                't=Dzb_y3VZ3fXwFTbHH53RfmbN_WkRSU93Nzcttv1hp8I'),
            fit: BoxFit.contain),
      ),
    );
  }
}
