import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VehicleContainer extends StatefulWidget {
  VehicleContainer(this.vehicle_name, this.index, this.vechicleList,
      this.isSelected, this._setRbuild,
      {super.key});

  String vehicle_name;
  Function(int) vechicleList;
  Function(int) isSelected;
  Function _setRbuild;
  final index;

  @override
  State<VehicleContainer> createState() => _VehicleContainerState();
}

class _VehicleContainerState extends State<VehicleContainer> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = widget.isSelected(widget.index);

    return GestureDetector(
      onTap: () {
        widget.vechicleList(widget.index);
        print('Container ${widget.index} tapped');
        widget._setRbuild();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: isSelected?Border.all(color: Colors.transparent):Border.all(color: Colors.grey,width: 1.5),
            color: isSelected
                ? Colors.green.shade900
                : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 50,
                width: 50,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SvgPicture.asset('images/${widget.vehicle_name}'),
                )),
            // child: Image.asset(
            //   'assets/${widget.vehicle_name}',
            //   height: 40,
            // ),
          ),
        ),
      ),
    );
  }
}
