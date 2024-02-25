
import 'package:flutter/material.dart';
import 'package:pety/shared/extensions.dart';
import 'package:pety/shared/network/local/shared_pred_constants.dart';
import 'package:pety/shared/network/local/shared_pref_helper.dart';
import 'package:pety/shared/routing/routes.dart';
import 'package:pety/shared/widgets/default_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        const Text('profile'),
        Center(
          child: DefaultButton(
            text: 'Logout',
            onClick: (){
              SharedPrefHelper.removeData(key: SharedPrefConstants.tokenKey)
                  .then((value) => context.pushNamedAndRemoveUntil(Routes.loginScreen,predicate: (Route<dynamic> route)=>false));
            }
          ),
        )
      ],
    );
  }

}