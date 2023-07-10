import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
        fillColor: Colors.grey,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(width: 0.8),

        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(width: 0.8,color: Colors.white)
          
          ),
          hintText: 'Search',
          prefixIcon: const Padding(padding: EdgeInsets.only(top: 10.0, left: 15.0),
          child: FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            size: 17.0,
            color: Colors.grey,
          ),
          
          
          ),
          suffixIcon: IconButton(
             icon: const FaIcon(
            FontAwesomeIcons.sliders,
            size: 15.0,
          ),
           onPressed: () {},
          )
      ),
    );
  }
}