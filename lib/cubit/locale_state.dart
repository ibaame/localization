part of 'locale_cubit.dart';

// @immutable
// sealed class LocaleState {}

// final class LocaleInitial extends LocaleState {}

// if has one state no need to initialState and State

class ChangeLocaleState {
  final Locale locale;

  ChangeLocaleState({required this.locale});
}
