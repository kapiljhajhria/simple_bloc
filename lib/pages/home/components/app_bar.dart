import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc/app_bloc/app_bloc.dart';

class AppBarButtons extends StatelessWidget {
  const AppBarButtons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: Icon(Icons.ac_unit),
            onPressed: () => BlocProvider.of<AppStateBloc>(context)
                .changeState(StatePageA())),
        IconButton(
          icon: Icon(Icons.backspace),
          onPressed: () =>
              BlocProvider.of<AppStateBloc>(context).changeState(StatePageB()),
        ),
        IconButton(
          icon: Icon(Icons.cached),
          onPressed: () =>
              BlocProvider.of<AppStateBloc>(context).changeState(StatePageC()),
        )
      ],
    );
  }
}
