
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/search_vet/book_vet_screen/data/models/book_vet_response.dart';
import 'package:pety/features/search_vet/cubit/search_vet_cubit.dart';
import 'package:pety/features/search_vet/cubit/search_vet_states.dart';
import 'package:pety/shared/extensions.dart';
import 'package:pety/shared/network/local/shared_pred_constants.dart';
import 'package:pety/shared/network/local/shared_pref_helper.dart';
import 'package:pety/shared/routing/routes.dart';
import 'package:pety/shared/styles/texts.dart';
import 'package:pety/shared/widget_functions.dart';

class BookVetBlocListener extends StatelessWidget{
  const BookVetBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SearchVetCubit,SearchVetStates>(
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
              context.pushNamedAndRemoveUntil(Routes.petLayout, predicate: (Route<dynamic> route) => false);
              WidgetFunctions.showSuccessSnackBar(context,'Booked successfully');
            },
            error: (error){
              WidgetFunctions.setupErrorState(context, error);
            }
        );
      },
      child: const SizedBox.shrink(),
    );
  }


}