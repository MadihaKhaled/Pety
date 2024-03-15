

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pety/features/search_vet/book_vet_screen/data/models/book_vet_body.dart';
import 'package:pety/features/search_vet/cubit/search_vet_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/search_vet/data/models/animal_model.dart';
import 'package:pety/features/search_vet/data/models/search_vets_response.dart';
import 'package:pety/features/search_vet/data/repository/search_vet_repo.dart';
import 'package:pety/shared/extensions.dart';
import 'package:pety/shared/network/remote/api_constants.dart';
import 'package:pety/shared/routing/routes.dart';



class SearchVetCubit extends Cubit<SearchVetStates> {

  final SearchVetRepository _searchVetRepository;

  SearchVetCubit(this._searchVetRepository) : super( const SearchVetStates.initial());

  List<Data>? vets;
  bool addMore = true;
  bool offers = false;
  bool fromUpperToLower = true;
  int minPrice=50,maxPrice=600;
  String availability = AvailabilityConstants.anyDay;
  String sort = SortByConstants.rate;
  TextEditingController searchController = TextEditingController();
  List<AnimalModel> animals =
  [
    AnimalModel('Cat',AnimalsConstants.cat),
    AnimalModel('Dog',AnimalsConstants.dog),
  ];

  Data? chosenVet;
  int clickedAppointment=-1;
  String? chosenTime;

  void getVets({
    int page = 1,
  }) async{
    emit(const SearchVetStates.loading());
    if(page==1){
      vets = null;
      addMore=true;
    }
    String curAnimals='';
    for(AnimalModel animalModel in animals){
      if(animalModel.isSelected){
       curAnimals+='${animalModel.value},';
      }
    }
    if(curAnimals!=''){
      curAnimals = curAnimals.substring(0, curAnimals.length - 1);
    }
    final response = await _searchVetRepository.getVets(
      role: PetyRolesConstants.vet,
      sort: fromUpperToLower?'-$sort':sort,
      minPrice: minPrice,
      maxPrice: maxPrice,
      availability: availability,
      petyName: searchController.text.isNotBlank()?searchController.text:null,
      offer: offers?'true':null,
      page:page,
      animals: curAnimals!=''?curAnimals:null
    );
    response.when(
      success: (data){
        List<Data> current = data.data!;
        if(page==1){
          vets=[];
          addMore=true;
        }
        if(current.isEmpty){
          addMore=false;
        }else{
          vets!.addAll(current);
        }
        emit(SearchVetStates.success(data));
      },
      failure: (error){
        emit(SearchVetStates.error(error:error.apiErrorModel.message!));
      }
    );
  }

  void bookVet() async{
    emit(const SearchVetStates.loading());
    final response = await _searchVetRepository.bookVet(
      bookVetBody: BookVetBody(
        petyID: chosenVet!.id!,
        date: chosenVet!.availabilityFormatted![clickedAppointment].date!,
        time: chosenTime!
      )
    );
    response.when(
        success: (data){
          emit(SearchVetStates.success(data));
        },
        failure: (error){
          emit(SearchVetStates.error(error: error.apiErrorModel.message!));
        }
    );
  }

  void changePriceRanges(RangeValues ranges){
    emit(const SearchVetStates.loading());
    minPrice = ranges.start.toInt();
    maxPrice = ranges.end.toInt();
    emit(const SearchVetStates.changeFilterValue());
  }

  void changeFromUpperToLower(bool value){
    emit(const SearchVetStates.loading());
    fromUpperToLower=value;
    emit(const SearchVetStates.changeFilterValue());
  }

  void changeOffersValue(bool value){
    emit(const SearchVetStates.loading());
    offers=!offers;
    emit(const SearchVetStates.changeFilterValue());
  }

  void changeAvailability(String value){
    emit(const SearchVetStates.loading());
    availability = value;
    emit(const SearchVetStates.changeFilterValue());
  }

  void changeSort(String value){
    emit(const SearchVetStates.loading());
    sort = value;
    emit(const SearchVetStates.changeFilterValue());
  }

  void changeAnimalSelection(int index, bool value){
    emit(const SearchVetStates.loading());
    animals[index].isSelected = value;
    emit(const SearchVetStates.changeFilterValue());
  }

  void resetFilters(){
    emit(const SearchVetStates.loading());
    offers = false;
    fromUpperToLower = true;
    minPrice=50;
    maxPrice=600;
    availability = AvailabilityConstants.anyDay;
    sort = SortByConstants.rate;
    for(AnimalModel animal in animals){
      animal.isSelected=false;
    }
    emit(const SearchVetStates.changeFilterValue());
  }

  void moveToVetDetails(Data vet,BuildContext context){
    emit(const SearchVetStates.loading());
    chosenVet = vet;
    context.pushNamed(Routes.vetDetails,arguments: context);
    emit(const SearchVetStates.moveToNextScreen());
  }

  void moveToBookVet(BuildContext context,String time){
    emit(const SearchVetStates.loading());
    chosenTime = time;
    context.pushNamed(Routes.bookVet,arguments: context);
    emit(const SearchVetStates.moveToNextScreen());
  }
  
  void onBackPressed(BuildContext context){
    emit(const SearchVetStates.loading());
    context.pop();
    clickedAppointment=-1;
    emit(const SearchVetStates.moveToPrevScreen());
  }

  void changeClickedAppointment(int index){
    emit(const SearchVetStates.loading());
    if(index==clickedAppointment){
      clickedAppointment=-1;
    }else{
      clickedAppointment=index;
    }
    emit(const SearchVetStates.moveToPrevScreen());
  }

}

