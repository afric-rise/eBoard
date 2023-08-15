import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'packs_and_annotations_event.dart';
part 'packs_and_annotations_state.dart';

class PacksAndAnnotationsBloc extends Bloc<PacksAndAnnotationsEvent, PacksAndAnnotationsState> {
  PacksAndAnnotationsBloc() : super(PacksAndAnnotationsInitial()) {
    on<PacksAndAnnotationsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
