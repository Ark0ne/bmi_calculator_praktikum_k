import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            //ini widget untuk jenis kelamin
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Colors.yellow,
                    tinggi: 200.0,
                    lebar : 179.0,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Colors.blueGrey,
                    tinggi: 200.0,
                    lebar : 179.0,
                  ),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                //ini widget untuk tinggi
                Expanded(
                  child: ReusableCard(
                    colour: Colors.yellow,
                    tinggi: 200.0,
                    lebar : 179.0,
                  ),
                )
              ],
            )),
            Expanded(
                child: Row(
              children: [
                //ini widget untuk mengatur berat dan umur
                Expanded(
                  child: ReusableCard(
                    colour: Colors.black54,
                    tinggi: 200.0,
                    lebar : 179.0,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Colors.blueGrey,
                    tinggi: 200.0,
                    lebar : 179.0,
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                //ini widget untuk mengatur tombol hitung
                Expanded(
                  child: ReusableCard(colour: Colors.blueAccent,
                    tinggi: 200.0,
                    lebar : 179.0,
                    ),
                )
              ],
            ))
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(
  {required this.colour, required this.tinggi, required this.lebar});

  Color colour;
  double tinggi, lebar;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: tinggi,
      width: lebar,
    );
  }
}
