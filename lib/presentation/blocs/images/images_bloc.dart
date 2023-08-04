import 'dart:async';

import 'package:e_commerce/repositories/database/database_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'images_event.dart';
part 'images_state.dart';

class ImagesBloc extends Bloc<ImagesEvent, ImagesState> {
  final DatabaseRepository _databaseRepository;
  StreamSubscription? _databaseSubscription;

  ImagesBloc({required DatabaseRepository databaseRepository})
      : _databaseRepository = databaseRepository,
        super(ImagesLoading()) {
    on<LoadImages>(_onLoadImages);
    on<UpdateImages>(_onUpdateImages);
    (event, emit) {};
  }

  void _onLoadImages(
    LoadImages event,
    Emitter<ImagesState> emit,
  ) {
    try {
    _databaseSubscription?.cancel();
    _databaseRepository.getUser().listen(
          (user) => add(UpdateImages(user.imageUrls)),
        );
      
    } catch (e) {
      print(e);
    }
  }

  void _onUpdateImages(UpdateImages event, Emitter<ImagesState> emit) {
    emit(ImagesLoaded(imageUrls: event.imageUrls));
  }
}
