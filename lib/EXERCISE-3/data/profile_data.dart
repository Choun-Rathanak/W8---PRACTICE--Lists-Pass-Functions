import 'package:flutter/material.dart';

import '../model/profile_tile_model.dart';

ProfileData ronanProfile = ProfileData(
  name: "Ronan",
  position: "Flutter Developer",
  avatarUrl: 'assets/w5-s2/tommy.png',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+123 456 7890"),
    TileData(icon: Icons.location_on, title: "Address", value: "123 Cambodia"),
    TileData(icon: Icons.email, title: "Mail", value: "ronan.ogogr@cadt.edu"),
  ]);
  ProfileData nakProfile  = ProfileData(
  name: "Rathanak",
  position: "Software Engineer",
  avatarUrl: 'assets/w5-s2/tommy.png',
  tiles: [
    TileData(icon: Icons.phone, title: "Phone Number", value: "+855 12 345 678"),
    TileData(icon: Icons.location_on, title: "Address", value: "Chom Chao, Phnom Penh"),
    TileData(icon: Icons.email, title: "Mail", value: "rathanak.software@gmail.com"),
    
],);

