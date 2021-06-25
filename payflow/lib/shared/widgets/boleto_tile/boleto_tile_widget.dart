import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:payflow/shared/theme/app_text_styles.dart';

class BoletoTileWidget extends StatelessWidget {
  final BoletoModel boletoModel;
  const BoletoTileWidget({
    Key? key,
    required this.boletoModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        boletoModel.name!,
        style: AppTextStyles.titleListTile,
      ),
      subtitle: Text(
        "Vence em ${boletoModel.dueDate!}",
        style: AppTextStyles.captionBody,
      ),
      trailing: Text.rich(
        TextSpan(
          text: "R\$ ",
          style: AppTextStyles.titleRegular,
          children: [
            TextSpan(
              text: "${boletoModel.value!.toStringAsFixed(2)}",
              style: AppTextStyles.trailingBold,
            )
          ],
        ),
      ),
    );
  }
}
