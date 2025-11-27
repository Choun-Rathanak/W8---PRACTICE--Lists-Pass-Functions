import 'package:flutter/material.dart';

import 'ui/screens/profile.dart';
import 'data/profile_data.dart'; 

// import 'package:w8_practice_list_pass_fuction/EXERCISE-3/ui/screens/profile.dart';
// import 'package:w8_practice_list_pass_fuction/EXERCISE-3/data/profile_data.dart'; 

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(profile: nakProfile), 
  ));
}