import 'package:circleandboxscreen/backend/backend.dart';
import 'package:circleandboxscreen/screens/box_screen.dart';
import 'package:flutter/material.dart';
import 'package:circleandboxscreen/widgets/widgets.dart';
import 'package:provider/provider.dart';

class CircleScreen extends StatelessWidget {
  //const CircleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //goi Provider de lam thay doi trang thai cua noi dung ben trong
    //va k can sd setstate trong onPress.
    Backend backend = Provider.of<Backend>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // man hinh chia lam 2 hang.
            //hang 1 chua 2 hinh tron va hang 2 co 1 hinh tron.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleButton(
                  color: backend.leftColor,
                  onPressed: () {
                    backend.changeRightColor();
                  },
                ),
                const SizedBox(width: 50),
                CircleButton(
                  color: backend.rightColor,
                  onPressed: () {
                    backend.changeLeftColor();
                  },
                ),
              ],
            ),
            CircleButton(
              //khi an vao hinh tron nay se chuyen sang man hinh tiep theo la BoxScreen.
              color: Colors.deepOrange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BoxScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
