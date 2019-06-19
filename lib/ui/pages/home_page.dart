import 'package:flutter/material.dart';
import 'package:hackaton_app_user/ui/values/strings.dart' as strings;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child: _buildBody()),
      ),
    ));
  }

  Widget _buildBody() {
    final topIcon = Container(
      margin: EdgeInsets.only(top: 80, bottom: 60),
      child: Image.asset('assets/images/ic_rescue.png'),
    );
    final warningLabel = Text(
      strings.warning,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        letterSpacing: 5,
      ),
    );
    final line = Container(
      width: 50,
      height: 4,
      color: Colors.red,
      margin: EdgeInsets.only(top: 17, bottom: 40),
    );

    final desc = _description();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [topIcon, warningLabel, line, desc, _button()],
    );
  }

  Widget _description() {
    final desc1 = _tileDesc(strings.desc1);

    final desc2 = _tileDesc(strings.desc2);

    final desc3 = _tileDesc(strings.desc3);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [desc1, desc2, desc3],
      ),
    );
  }

  Widget _tileDesc(String label) {
    final bullet = Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
    );

    return ListTile(
      leading: bullet,
      title: Text(
        label,
        style: TextStyle(fontSize: 14),
      ),
    );
  }

  Widget _button() {
    final icon = Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Image.asset('assets/images/ic_ambulance.png'),
    );
    final label = Text(
      strings.requestAmbulance.toUpperCase(),
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    );

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 50),
        child: Row(
          children: [
            Expanded(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
                padding: EdgeInsets.all(16),
                color: Colors.red,
                onPressed: () {},
                child: Column(
                  children: [icon, label],
                ),
              ),
            )
          ],
        ));
  }
}
