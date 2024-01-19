import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:ika_smansara/gen/assets.gen.dart';
import 'package:ika_smansara/home/home.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Stack(
            children: [
              Container(
                height: 150,
                decoration: const BoxDecoration(color: Color(0xFF104993)),
              ),
              MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (_) => CategoriesBloc(),
                  ),
                  BlocProvider(
                    create: (_) => CarouselBloc(),
                  ),
                  BlocProvider(
                    create: (_) => CampaignsBloc(),
                  ),
                ],
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Assets.images.ikaSmansaraHeaderHome.svg(
                        width: double.infinity,
                        height: 32,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: CardCarousel(),
                    ),
                    const Categories(),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Divider(
                        color: Colors.blueGrey.withAlpha(150),
                        thickness: 0.5,
                        height: 0.5,
                      ),
                    ),
                    CardVerticalListView(
                      listTitle: l10n.needHelpTitle,
                      buttonTitle: l10n.seeMoreTitle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Divider(
                        color: Colors.blueGrey.withAlpha(150),
                        thickness: 0.5,
                        height: 0.5,
                      ),
                    ),
                    CardVerticalListView(
                      listTitle: l10n.programTitle,
                      buttonTitle: l10n.seeMoreTitle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Divider(
                        color: Colors.blueGrey.withAlpha(150),
                        thickness: 0.5,
                        height: 0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
