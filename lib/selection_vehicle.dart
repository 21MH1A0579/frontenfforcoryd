import 'package:flutter/material.dart';
import 'package:frontenfforcoryd/vechicle_container.dart';
class SelectionVehicale extends StatefulWidget {
  SelectionVehicale(this.vechicleList, this.isSelected, {super.key});

  Function(int) vechicleList;
  Function(int) isSelected;
  @override
  State<SelectionVehicale> createState() => _SelectionVehicaleState();
}

class _SelectionVehicaleState extends State<SelectionVehicale> {
  final listofVechicles = [
    'motorcyclesvg.svg',
    'carsvg.svg',
    'autosvg.svg',
    'bussvg.svg'
  ];

  void _setRbuild() => setState(() {
    
  });

  @override
  Widget build(BuildContext context) {
    //print("Coming");
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: listofVechicles
            .asMap()
            .map((index, element) => MapEntry(
                  index,
                  VehicleContainer(element, index, widget.vechicleList, widget.isSelected, _setRbuild),
                ))
            .values
            .toList());
  }
}
