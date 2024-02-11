import 'package:flutter/material.dart';

import 'package:monopoly_flutter/models/property.dart';

class PropertyGroup {
  final Color color;
  final List<Property> properties;
  
  PropertyGroup({
    required this.color,
    required this.properties,
  });
}
