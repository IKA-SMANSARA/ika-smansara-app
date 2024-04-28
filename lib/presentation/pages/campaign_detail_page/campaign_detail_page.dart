import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ika_smansara/domain/entities/campaign_document.dart';
import 'package:ika_smansara/presentation/extensions/int_extension.dart';
import 'package:ika_smansara/presentation/misc/methods.dart';
import 'package:ika_smansara/presentation/pages/campaign_detail_page/methods/backer_list.dart';
import 'package:ika_smansara/presentation/pages/campaign_detail_page/methods/description_campaign_detail.dart';
import 'package:ika_smansara/presentation/pages/campaign_detail_page/methods/header_campaign_detail.dart';
import 'package:ika_smansara/presentation/widgets/header_image.dart';
import 'package:ika_smansara/presentation/providers/campaign/get_campaign_detail_provider.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/transaction/get_backer_list_provider.dart';

class CampaignDetailPage extends ConsumerStatefulWidget {
  final CampaignDocument? campaign;
  final String fromHome;
  const CampaignDetailPage({
    required this.campaign,
    this.fromHome = 'true',
    super.key,
  });
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CampaignDetailPageState();
}

class _CampaignDetailPageState extends ConsumerState<CampaignDetailPage> {
  @override
  Widget build(BuildContext context) {
    var asyncCampaignDetailData = ref.watch(
      getCampaignDetailProvider(campaignId: widget.campaign?.id ?? ''),
    );

    var asyncBackerList = ref.watch(
      getBackerListProvider(
        campaignId: widget.campaign?.id ?? '',
        isSortList: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText(
          (widget.campaign?.campaignName ?? '').toUpperCase(),
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              ...(asyncCampaignDetailData.whenOrNull(
                    data: (data) => [
                      headerImage(
                          imageUrl: data?.photoThumbnail ??
                              'https://picsum.photos/250?image=9'),
                      verticalSpace(16),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ...headerCampaignDetail(
                              title: (data?.campaignName ?? '').toUpperCase(),
                              remainingDays: getRemainingDays(
                                dateEndCampaign: data?.dateEndCampaign,
                              ),
                              currentAmount: (data?.currentAmount ?? 0)
                                  .toIDRCurrencyFormat(),
                              goalAmount:
                                  (data?.goalAmount ?? 0).toIDRCurrencyFormat(),
                              valueProgressIndicator:
                                  getCampaignProgressIndicatorValue(
                                (data?.goalAmount ?? 0),
                                (data?.currentAmount ?? 0),
                              ),
                              backerCount: data?.backerCount ?? 0,
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 1,
                            ),
                            verticalSpace(16),
                            ...descriptionCampaignDetail(
                              description: data?.campaignDescription ?? '',
                            ),
                            verticalSpace(16),
                            Visibility(
                              visible: (data?.backerCount ?? 0) != 0,
                              child: Column(
                                children: [
                                  ...backerList(
                                    ref: ref,
                                    backerCount: data?.backerCount ?? 0,
                                    asyncBackerList: asyncBackerList,
                                    campaign: data ?? CampaignDocument(),
                                  ),
                                ],
                              ),
                            ),
                            verticalSpace((16 + 45)),
                          ],
                        ),
                      ),
                    ],
                    error: (error, stackTrace) => [
                      const Center(
                        child: Text(
                          'NETWORK ERROR!',
                        ),
                      ),
                    ],
                    loading: () => [
                      const Center(
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    ],
                  ) ??
                  []),
            ],
          ),
          Visibility(
            visible: widget.campaign != null,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: 16,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        if (widget.fromHome == 'false') {
                          ref.read(routerProvider).pushNamed(
                                'update-campaign-page',
                                extra: asyncCampaignDetailData.value,
                              );
                        } else {
                          ref.read(routerProvider).pushNamed(
                                'checkout-page',
                                extra: widget.campaign,
                              );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF104993),
                      ),
                      child: AutoSizeText(
                        (widget.fromHome == 'false')
                            ? 'Ubah Informasi Acara'
                            : 'Kirim Donasi',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
