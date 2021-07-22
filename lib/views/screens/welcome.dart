import 'package:bonappetit/views/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Welcome extends StatelessWidget {
  const Welcome({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height *.5,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
      child: BackgroundBlur(
        child: Container(
           child: Column(
             children: [
               RichText(
                 text: TextSpan(
                     text: 'Bonjour',
                     style: TextStyle(
                         color: Colors.black, fontSize: 18),
                     children: <TextSpan>[
                       TextSpan(text: ' Sign up',
                           style: TextStyle(
                               color: Colors.blueAccent, fontSize: 18),

                       )
                     ]
                 ),
               )
             ],
           ),),
      ),
      ),
    );
  }
}
