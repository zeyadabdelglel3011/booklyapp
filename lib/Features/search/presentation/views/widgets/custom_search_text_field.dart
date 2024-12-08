import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: "Search",
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        suffixIcon: IconButton(onPressed: (){},
            icon: const Opacity(
              opacity: .8,
              child: Icon(Icons.search,
                size: 25,),
            ),
        ),

      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.white,

        ),
        borderRadius: BorderRadius.circular(12),

      );
  }
}
