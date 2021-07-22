
import 'package:bonappetit/app.dart';
import 'package:bonappetit/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'views/screens/screens.dart';

class BonAppetitBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    debugPrint('Main.BonAppetit_BlocObserver.OnEvent ::: EVENT: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    debugPrint(
        'Main.BonAppetit_BlocObserver.OnTransition ::: TRANSITION: $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase base, Object error, StackTrace stackTrace) {
    super.onError(base, error, stackTrace);
    debugPrint('Main.BonAppetit_BlocObserver.OnError ::: '
        'ERROR: $error & STACKTRACE: $stackTrace');
  }
}

void main() async {


  initializeDateFormatting().then((_) => runApp(BonAppetit()));
/*
  try {
    Bloc.observer = BonAppetit_BlocObserver();
    WidgetsFlutterBinding.ensureInitialized();
    await init(); //class of initialisation object injector
    runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SubjectBloc(),
          ),
          BlocProvider(
            create: (context) => SubjectBloc(),
          ),
        ],
        child: Welcome(),
      ),
    );
  } catch (error, stacktrace) {
    debugPrint('Main.Main ::: ERROR: $error & STACKTRACE: $stacktrace');
  }
  */
}
