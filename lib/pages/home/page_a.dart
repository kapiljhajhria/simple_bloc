import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc/cubit/filter_cubit.dart';
import 'package:simple_bloc/model/pet.dart';

// const _icons = [
//   Icon(Icons.ac_unit),
//   Icon(Icons.ac_unit_sharp),
//   Icon(Icons.access_alarm),
//   Icon(Icons.baby_changing_station_outlined)
// ];

class PageA extends StatelessWidget {
  const PageA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<FilterCubit, FilterState>(
          builder: (context, state) {
            return Text(
                "${state.pet.name}\n${state.pet.type} \n${state.pet.size}");
          },
        ),
        TextFormField(
          onChanged: (str) =>
              BlocProvider.of<FilterCubit>(context).changeName(str),
        ),
        PopupMenuButton(
            icon: Icon(Icons.arrow_circle_down),
            tooltip: "Selecione o tipo",
            onSelected: (type) =>
                BlocProvider.of<FilterCubit>(context).changeType(type),
            itemBuilder: (_) => Iterable.generate(
                PetType.values.length,
                (x) => PopupMenuItem<PetType>(
                      value: PetType.values[x],
                      // child: _icons[x],
                      child: Text(PetType.values[x].toString().split('.')[1]),
                    )).toList()),
        RaisedButton(
          onPressed: () =>
              BlocProvider.of<FilterCubit>(context).changeSize(PetSize.large),
          child: Text("CHJANGE Size"),
        ),
      ],
    );
  }
}
