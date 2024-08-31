import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whats_app/components/on_accept/presentation/view%20models/cubit/theme_change_cubit_states.dart';
import 'package:whats_app/main.dart';

class ThemeChangeCubit extends Cubit<ThemeChangeCubitStates> {
  ThemeChangeCubit() : super(LightModeThemeState());

  themeChanger() {
    darkMode ? emit(DarkModeThemeState()) : emit(LightModeThemeState());
  }
}
