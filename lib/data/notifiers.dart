import 'package:flutter/material.dart';

//value notifier diguanakan pengganti state pada statefull jadi bisa diguankan pake stateless widget
ValueNotifier<int> selectedPageNotifier = ValueNotifier<int>(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(false);
