
import 'package:flutter/material.dart';
import 'package:pety/shared/styles/texts.dart';

class DefaultRadioButton extends StatelessWidget{
  final Function onClick;
  final String name,value,groupValue;
  const DefaultRadioButton({
    super.key,
    required this.onClick,
    required this.name,
    required this.value,
    required this.groupValue
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onClick();
      },
      child: Row(
        children: [
          Radio<String>(
            value: value,
            groupValue: groupValue,
            onChanged: (newValue) {
              onClick();
            },
          ),
          Text(
            name,
            style: TextStyles.font12filtersGreyColorRegular,
          ),
        ],
      ),
    );
  }
}
