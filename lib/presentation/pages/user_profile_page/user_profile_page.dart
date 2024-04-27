import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/user_data/user_data_provider.dart';
import 'package:ika_smansara/utils/constants.dart';

class UserProfilePage extends ConsumerStatefulWidget {
  const UserProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserProfilePageState();
}

class _UserProfilePageState extends ConsumerState<UserProfilePage> {
  late final Box devModeBox;
  var _isDevMode = false;

  @override
  void initState() {
    super.initState();

    devModeBox = Hive.box('dev mode');

    _isDevMode = devModeBox.get('isDevMode');
  }

  @override
  Widget build(BuildContext context) {
    var asyncUserData = ref.watch(userDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText('Profile'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => ref.read(routerProvider).pushNamed(
              'update-user-profile-page',
              extra: asyncUserData.valueOrNull,
            ),
        label: AutoSizeText('Ubah Profile'),
        icon: Icon(
          Icons.edit,
        ),
      ),
      body: ListView(
        children: [
          verticalSpace(16),
          ...(asyncUserData.whenOrNull(
                error: (error, stackTrace) => [
                  Center(
                    child: AutoSizeText(
                      'NETWORK ERROR!',
                    ),
                  ),
                ],
                loading: () => [
                  const Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ],
                data: (data) => [
                  (data?.photoProfileUrl != null)
                      ? CircleAvatar(
                          radius: 100,
                          child: ClipOval(
                            child: CachedNetworkImage(
                              height: 200,
                              fit: BoxFit.contain,
                              imageUrl: data?.photoProfileUrl ??
                                  'https://i.pravatar.cc/150?img=3',
                            ),
                          ),
                        )
                      : const CircleAvatar(
                          radius: 50,
                          child: Icon(
                            Icons.add_a_photo,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                  verticalSpace(24),
                  Center(
                    child: AutoSizeText(
                      data?.name?.toUpperCase() ?? '',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  verticalSpace(16),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Table(
                      children: [
                        TableRow(children: [
                          AutoSizeText(
                            'E-mail',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          AutoSizeText(
                            data?.email ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ]),
                        TableRow(
                          children: [
                            verticalSpace(16),
                            verticalSpace(16),
                          ],
                        ),
                        TableRow(children: [
                          AutoSizeText(
                            'Telepon',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          AutoSizeText(
                            data?.phone ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ]),
                        TableRow(
                          children: [
                            verticalSpace(16),
                            verticalSpace(16),
                          ],
                        ),
                        TableRow(children: [
                          AutoSizeText(
                            'Alamat',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          AutoSizeText(
                            data?.address ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ]),
                        TableRow(
                          children: [
                            verticalSpace(16),
                            verticalSpace(16),
                          ],
                        ),
                        TableRow(children: [
                          Visibility(
                            visible: data?.isAlumni ?? false,
                            child: AutoSizeText(
                              'Alumni Tahun',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          Visibility(
                            visible: data?.isAlumni ?? false,
                            child: AutoSizeText(
                              data?.graduateYear ?? '',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ]),
                        TableRow(
                          children: [
                            verticalSpace(16),
                            verticalSpace(16),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: data?.isAdmin ?? false,
                    child: Row(
                      children: [
                        AutoSizeText('Dev Mode'),
                        Switch.adaptive(
                          value: _isDevMode,
                          onChanged: (bool status) {
                            setState(() {
                              _isDevMode = status;
                              devModeBox.put('isDevMode', _isDevMode);
                              Constants.logger.d(
                                'DEVELOPER MODE STATUS ${devModeBox.get("isDevMode")}',
                              );
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ) ??
              []),
          verticalSpace(16),
        ],
      ),
    );
  }
}
