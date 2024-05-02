import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formus_digital_challenge/src/models/on_requisition_fail_model.dart';
import 'package:formus_digital_challenge/src/modules/home/bloc/home_page_bloc.dart';
import 'package:get/get.dart';

class HomePageBlocFailFetchDataStateWidget extends StatelessWidget {
  final OnRequisitionFailModel onFailModel;

  const HomePageBlocFailFetchDataStateWidget({
    super.key,
    required this.onFailModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          onFailModel.message,
          style: Get.textTheme.displayMedium,
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            context.read<HomePageBloc>().add(FetchMoviesEvent());
          },
          child: const Text('Try again'),
        ),
      ],
    );
  }
}
