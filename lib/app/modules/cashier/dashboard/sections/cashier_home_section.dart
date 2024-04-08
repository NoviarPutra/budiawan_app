import 'package:budiawan_app/app/modules/cashier/dashboard/dashboard_cashier_controller.dart';
import 'package:budiawan_app/app/modules/cashier/dashboard/sections/details/cashier_popular_products.dart';
import 'package:budiawan_app/app/modules/cashier/dashboard/sections/details/cashier_report_selling.dart';
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
            FormBuilder(
              key: controller.formKey,
              child: baseDateRangePicker(
                name: 'dateRange',
                title: 'Pilih Tanggal',
                firstDate: DateTime.now().subtract(
                  const Duration(days: Duration.minutesPerDay * 30),
                ),
                lastDate: DateTime.now(),
                prefixIcon: const Icon(Icons.calendar_month),
                onDateChanged: (value) {},
              ),
            ),
            detailSection(
              title: 'Laporan Penjualan',
              children: [
                textInfo(title: 'Total Penjualan', value: 'Rp. 0'),
                const SizedBox(height: 5),
                textInfo(title: 'Total Transaksi', value: '0'),
                const SizedBox(height: 5),
                textInfo(title: 'Total Keuntungan', value: 'Rp. 0'),
              ],
              subtitle: 'Lihat Detail',
              onPressedDetail: () => Get.to(const CashierReportSelling()),
            ),
            detailSection(
              title: 'Produk Terlaris',
              children: [
                textInfo(title: 'Sup Ayam', value: '50'),
                const SizedBox(height: 5),
                textInfo(title: 'Nasi Goreng', value: '20'),
                const SizedBox(height: 5),
                textInfo(title: 'Sup Ikan', value: '10'),
              ],
              subtitle: 'Lihat Detail',
              onPressedDetail: () => Get.to(const CashierPopularProducts()),
            ),
          ],
        ),
      ),
    );
  }

  Column detailSection({
    required title,
    required List<Widget> children,
    void Function()? onPressedDetail,
    required String subtitle,
  }) {
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
      Container(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: onPressedDetail,
          child: Text(
            subtitle,
            style: subtitleText,
          ),
        ),
      )
    ]);
  }

  Row textInfo({
    required String title,
    required String value,
  }) {
    return Row(
      children: [
        Text(
          title,
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
}
