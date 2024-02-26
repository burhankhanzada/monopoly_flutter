import 'package:flutter/material.dart';

import 'package:monopoly_flutter/models/property.dart';

class PropertySetModel {
  final int id;
  final Color color;
  final List<PropertyModel> properties;
  
  PropertySetModel({
    required this.id,
    required this.color,
    required this.properties,
  });
}
