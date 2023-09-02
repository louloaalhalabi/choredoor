import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final Function()? onTap;
  const Button({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell( 
      onTap: onTap,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(horizontal:10 ),
          width: 300,
            decoration: BoxDecoration(
            color: Color.fromRGBO(21, 55, 98, 1),
            borderRadius: BorderRadius.circular(8),
           ),

          child: const Center(
            child: Text(
              "Login",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,),
            ),
          ),
        ),
      ),
    );
  }
}
