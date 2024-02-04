import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scanner/features/profile/presentation/bloc/profile_bloc.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is GotCachedProfile) {
          final p = state.res;

          return Column(
            children: [
              Text(
                '${p.firstName} ${p.lastName}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              // Text(
              //   '09123123123',
              //   style: TextStyle(
              //     fontSize: 12,
              //   ),
              // ),
              Text(
                p.address,
                style: const TextStyle(
                  fontSize: 12,
                  // color: Hexcolor('#707070'),
                ),
              )
            ],
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
