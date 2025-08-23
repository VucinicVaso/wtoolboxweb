import 'package:flutter/material.dart';
import '../../../external/lib_material_symbols.dart';

// ignore: must_be_immutable
class WTWUISidebarDropdown extends StatefulWidget {

  double? width;
  String? label;
  double? labelSize;
  Color? labelColor;
  IconData? icon;
  double? iconSize;
  Color? iconColor;
  List<Map<String, dynamic>>? items = List<Map<String, dynamic>>.empty(growable: true);

  WTWUISidebarDropdown({
    super.key,
    this.width,
    this.label,
    this.labelSize,
    this.labelColor,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.items,
  });

  @override
  State<WTWUISidebarDropdown> createState() => _DropdownState();
}

class _DropdownState extends State<WTWUISidebarDropdown> {

  final GlobalKey _dropdownKey = GlobalKey();

  void _showMenu() {
    final RenderBox renderBox = _dropdownKey.currentContext!.findRenderObject() as RenderBox;
    final Offset offset       = renderBox.localToGlobal(Offset.zero);
    final Size size           = renderBox.size;

    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(
        offset.dx,
        offset.dy + size.height,
        offset.dx + size.width,
        offset.dy + size.height,
      ),
      items: widget.items!.map((item) {
        return PopupMenuItem(
          onTap: item['action'],
          child: Container(
            width: widget.width,
            padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  item['icon'], 
                  size: item['iconSize'],
                  color: item['iconColor']
                ),

                const SizedBox(width: 8),

                Text(
                  item['label'],
                  style: TextStyle(
                    color: item['labelColor'],
                    fontSize: item['labelSize'],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: _dropdownKey,
      onTap: _showMenu,
      child: Container(
        width: widget.width,
        padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
        margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 5.0),
        color: Colors.transparent,
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  widget.icon,
                  color: widget.iconColor,
                  size: widget.iconSize,
                ),

                const SizedBox(width: 8),

                Text(
                  widget.label!, 
                  style: TextStyle(
                    color: widget.labelColor,
                    fontSize: widget.labelSize,
                  )
                ),
              ],
            ),

            const SizedBox(width: 8),
            
            Icon(
              Symbols.arrow_drop_down,
              color: widget.iconColor,
              size: widget.iconSize,
            ),
          ],
        ),
      ),
    );
  }

}