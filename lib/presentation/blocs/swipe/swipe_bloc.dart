import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/models/models.dart';
import 'package:equatable/equatable.dart';

part 'swipe_event.dart';
part 'swipe_state.dart';

class SwipeBloc extends Bloc<SwipeEvent, SwipeState> {
  SwipeBloc() : super(SwipeLoading()) {
    on<SwipeEvent>((event, emit) {
    
    });
  }
}
