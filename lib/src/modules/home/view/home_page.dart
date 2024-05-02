import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formus_digital_challenge/src/modules/home/bloc/home_page_bloc.dart';
import 'package:formus_digital_challenge/src/modules/home/widgets/bloc_state_widgets/bloc_fail_fetch_data_state.dart';
import 'package:formus_digital_challenge/src/modules/home/widgets/bloc_state_widgets/bloc_loading_state_widget.dart';
import 'package:formus_digital_challenge/src/modules/home/widgets/bloc_state_widgets/bloc_success_fetch_data_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    context.read<HomePageBloc>().add(FetchMoviesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          bottom: 25,
          left: 25,
          right: 25,
          top: MediaQuery.of(context).padding.top + 25,
        ),
        child: BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const HomePageBlocLoadingStateWidget();
            }

            if (state is FailOnFetchMoviesState) {
              return HomePageBlocFailFetchDataStateWidget(
                onFailModel: state.onFailModel,
              );
            }

            if (state is SuccessOnFetchMoviesState) {
              return HomePageBlocSuccessFetchDataStateWidget(
                movies: state.movies,
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}
