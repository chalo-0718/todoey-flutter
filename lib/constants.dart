import 'package:flutter/material.dart';

final kRoundedRectangleBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(30.0),
);

const kFloatingIcon = Icon(
  Icons.add,
  color: Colors.white,
);

const kCircleAvatar = CircleAvatar(
  radius: 30,
  backgroundColor: Colors.white,
  child: Icon(
    Icons.list,
    color: Colors.blue,
    size: 30,
  ),
);
