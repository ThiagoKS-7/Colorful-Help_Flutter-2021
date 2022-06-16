import 'package:app_flutter/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenericCard extends StatelessWidget {
  const GenericCard(this._image, this._description, this.firstColor, this.secondColor,
      {Key? key, this.onTap, this.width, this.height})
      : super(key: key);
  final String? _image;
  final Color firstColor;
  final Color secondColor;
  final double? width;
  final double? height;
  final String? _description;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 160,
      width: 160,
      child: Material(
        color: upColor,
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  firstColor,
                  secondColor
                ],
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(1, 1), // changes position of shadow
                ),
              ],
            ),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: width,
                    height: height,
                    child: Image.asset(_image!),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      _description!,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
