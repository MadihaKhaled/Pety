
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/login/cubit/login_cubit.dart';
import 'package:pety/features/login/cubit/login_states.dart';
import 'package:pety/features/login/data/models/login_response.dart';
import 'package:pety/shared/extensions.dart';
import 'package:pety/shared/network/local/shared_pred_constants.dart';
import 'package:pety/shared/network/local/shared_pref_helper.dart';
import 'package:pety/shared/routing/routes.dart';
import 'package:pety/shared/styles/texts.dart';

class LoginBlocListener extends StatelessWidget{
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit,LoginStates>(
      listenWhen: (previous, current){
        return current is Success || current is Loading || current is Error;
      },
      listener: (context,state){
        state.whenOrNull(
            loading: (){
              showDialog(
                barrierDismissible:false,
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
            success: (data){
              context.pop();
              SharedPrefHelper.saveData(
                  key: SharedPrefConstants.tokenKey,
                  value: (data as LoginResponse).token
              ).then((value) => context.pushNamedAndRemoveUntil(Routes.petLayout, predicate: (Route<dynamic> route) => false));
            },
            error: (error){
              setupErrorState(context, error);
            }
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font16BlackRegular,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14DefaultRegular,
            ),
          ),
        ],
      ),
    );
  }

}