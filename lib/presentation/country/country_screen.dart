import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/country_bloc.dart';

class CountryScreen extends StatefulWidget {
  static const path = "country";

  const CountryScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CountryScreen();
}

class _CountryScreen extends State<CountryScreen> {


  @override
  void initState() {
    context.read<CountryBloc>().add(GetCountryListEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Countries"),),
        body: BlocBuilder<CountryBloc, CountryState>(
          builder: (context, state) {
            if(state is CountryLoadingState)
              {
                return const Center(child: CircularProgressIndicator());
              }
            else if(state is CountryLoadedState) {
              return ListView.builder(itemBuilder: (context,index){
                return ListTile(
                  title: Text(state.list[index].name?.official??""),
                );
              },
              itemCount: state.list.length,
              shrinkWrap: true,
              );
            }
            else{
              return const Center(child: Text("Something went wrong!"),);
            }
          },
        )
    );
  }
}