import 'package:circleandboxscreen/backend/backend.dart';
import 'package:circleandboxscreen/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BoxScreen extends StatelessWidget {
  //const BoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Backend backend = Provider.of<Backend>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Box Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Man hinh co 2 hang. hang1 chua 1 box. hang 2 co 2 boxes.

            BoxButton(
              //khi an vao box nay thi tro ve han hinh trc do.
              color: Colors.green,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // khi an vao box nay se lam cho box ben canh doi mau.
                BoxButton(
                  color: backend.leftColor,
                  onPressed: () {
                    backend.changeRightColor();
                  },
                ),
                const SizedBox(width: 50),
                BoxButton(
                  color: backend.rightColor,
                  onPressed: () {
                    backend.changeLeftColor();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
