import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc/app_bloc/app_bloc.dart';
import 'package:simple_bloc/cubit/filter_cubit.dart';
import 'package:simple_bloc/pages/home/components/app_bar.dart';
import 'page_a.dart';
import 'page_b.dart';
import 'page_c.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarButtons(),
      ),
      body: BlocBuilder<AppStateBloc, AppState>(
        builder: (ctx, state) {
          print("STATE is $state");
          if (state is StatePageA) {
            return BlocProvider<FilterCubit>(
              create: (_) => FilterCubit(),
              child: PageA(),
            );
          } else if (state is StatePageB) {
            return PageB();
          } else {
            return PageC();
          }
        },
      ),
    );
  }
}
