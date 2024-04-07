import 'package:budiawan_app/app/modules/cashier/dashboard/dashboard_cashier_controller.dart';
import 'package:budiawan_app/interfaces/auth_register_response_interface.dart';
import 'package:budiawan_app/utils/app_storage.dart';
import 'package:budiawan_app/utils/constants.dart';
import 'package:budiawan_app/widgets/base_date_range_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class CashierHomeSection extends StatelessWidget {
  const CashierHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardCashierController());
    UserRegistered user = AppStorage.getUserCashier();
    return SingleChildScrollView(
      child: RefreshIndicator(
        onRefresh: () async {
          // controller.refreshData();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, ${user.name}',
              style: titleText,
            ),
            Text(
              "Semoga hari anda menyenangkan",
              style: subtitleText,
            ),
            const SizedBox(
              height: 20,
            ),
            dateRangePicker(controller),
            const SizedBox(
              height: 20,
            ),
            detailSection(
              'Laporan Penjualan',
              [
                textInfo('Total Penjualan', "Rp. 0"),
                const SizedBox(height: 5),
                textInfo('Total Transaksi', "0"),
                const SizedBox(height: 5),
                textInfo('Total Keuntungan', "Rp. 0"),
              ],
              'Lihat Detail Penjualan',
            ),
            const SizedBox(
              height: 20,
            ),
            detailSection(
              'Produk Terlaris',
              [
                textInfo('Sup Ayam', "50"),
                const SizedBox(height: 5),
                textInfo('Sup Ikan', "20"),
                const SizedBox(height: 5),
                textInfo('Nasi Goreng', "10"),
              ],
              'Lihat Detail',
            ),
          ],
        ),
      ),
    );
  }

  Column detailSection(
    String title,
    List<Widget> children,
    String detailText,
  ) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: const EdgeInsets.all(10),
        child: Text(title, style: titleText),
      ),
      Container(
        width: double.infinity,
        height: null,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: children,
        ),
      ),
      expandDetail(detailText),
    ]);
  }

  Container expandDetail(String text) {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: subtitleText,
        ),
      ),
    );
  }

  Row textInfo(
    String keyItem,
    String value,
  ) {
    return Row(
      children: [
        Text(
          "$keyItem :",
          style: subtitleTextWhite,
        ),
        const Spacer(),
        Text(
          value,
          style: subtitleTextWhite,
        ),
      ],
    );
  }

  FormBuilder dateRangePicker(DashboardCashierController controller) {
    return FormBuilder(
      key: controller.formKey,
      child: baseDateRangePicker(
        name: 'date',
        title: 'Pilih Tanggal',
        firstDate: DateTime.now().subtract(
          const Duration(days: Duration.minutesPerDay * 30),
        ),
        lastDate: DateTime.now(),
        prefixIcon: const Icon(Icons.calendar_month),
        onDateChanged: (value) {},
      ),
    );
  }
}
