import 'package:bloc/bloc.dart';
import 'event.dart';
import 'state.dart';

class ConfigBloc extends Bloc<ConfigEvent, ConfigState> {
  ConfigBloc() : super(ConfigState().init());

  @override
  Stream<ConfigState> mapEventToState(ConfigEvent event) async* {
    if (event is InitEvent) {
      yield await init();
    }
  }

  Future<ConfigState> init() async {
    return state.clone();
  }
}
