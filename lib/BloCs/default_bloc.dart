import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

part 'default_event.dart';
part 'default_state.dart';

@injectable
class DefaultBloc extends Bloc<DefaultEvent, DefaultState> {
  DefaultBloc() : super(DefaultInitial()) {
    on<DefaultEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
