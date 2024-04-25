import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget headerImage({required String imageUrl}) => SizedBox(
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      placeholder: (context, url) =>
                          const CircularProgressIndicator.adaptive(),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  );