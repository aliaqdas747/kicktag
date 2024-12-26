import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/constants/app_colors.dart';
import 'package:kuicktag/widgets/custombuttonwidget.dart';

enum PaymentMethod { none, visa, paypal, stripe }

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  PaymentMethod selectedMethod =
      PaymentMethod.none; // Track selected payment method

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.bgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.bgcolor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Payment Method',
          style: GoogleFonts.outfit(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: IconButton(
          style: IconButton.styleFrom(
            minimumSize: const Size(29, 29),
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Color(0xFFD8DADC)),
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: heightScreen * 0.02),
            Text(
              'Select payment method',
              style: GoogleFonts.outfit(
                fontSize: 16,
                color: AppColors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: heightScreen * 0.02),
            buildPaymentOption(
              context,
              PaymentMethod.visa,
              'Visa xxx\n3301',
              'assets/payment/visa.png',
              widthScreen,
              heightScreen,
            ),
            SizedBox(height: heightScreen * 0.01),
            buildPaymentOption(
              context,
              PaymentMethod.paypal,
              'Paypal',
              'assets/payment/paypal.png',
              widthScreen,
              heightScreen,
            ),
            SizedBox(height: heightScreen * 0.01),
            buildPaymentOption(
              context,
              PaymentMethod.stripe,
              'Stripe',
              'assets/payment/stripebig.png',
              widthScreen,
              heightScreen,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Amount',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF707382),
                      fontSize: 14),
                ),
                Text(
                  '\$0.00',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF707382),
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: heightScreen * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'VAT',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF707382),
                      fontSize: 14),
                ),
                Text(
                  '\$0.00',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF707382),
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: heightScreen * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Amount',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF424346),
                      fontSize: 16),
                ),
                Text(
                  '\$0.00',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF424346),
                      fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: heightScreen * 0.02),
            CustomButtonWidget(
              title: 'Pay',
              onPressed: () {
                _showInfoDialog();
              },
            ),
            SizedBox(height: heightScreen * 0.02),
          ],
        ),
      ),
    );
  }

  void _showInfoDialog() {
    final widthScreen = MediaQuery.of(context).size.width;
    final heightScreen = MediaQuery.of(context).size.height;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.center,
          // Center the content vertically
          actionsAlignment: MainAxisAlignment.center,
          icon: Image.asset(
            'assets/dialogsuccess.png',
            width: widthScreen * 0.2,
            height: heightScreen * 0.15,
          ),
          title: Text(
            textAlign: TextAlign.center,
            'Paid Successfully',
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: const Color(0xFF424346)),
          ),
          content: Text(
            textAlign: TextAlign.center,
            'Your Payment has been successfully\nPaid.',
            style: GoogleFonts.roboto(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF868686)),
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                  backgroundColor: AppColors.black,
                  foregroundColor: AppColors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Continue',
                style: GoogleFonts.roboto(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget buildPaymentOption(BuildContext context, PaymentMethod method,
      String label, String imagePath, double widthScreen, double heightScreen) {
    bool isSelected =
        selectedMethod == method; // Check if this method is selected

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color(0xFFE3E3E3)),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(5.0),
        onTap: () {
          setState(() {
            selectedMethod = method;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(width: widthScreen * 0.02),
              Container(
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color.fromARGB(255, 255, 255, 255)
                      : Colors.transparent,
                  border: Border.all(color: const Color(0xFFB7B7B7), width: 1),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                width: 14, // Width of the checkbox
                height: 14, // Height of the checkbox
                child: isSelected
                    ? const Icon(Icons.circle,
                    color: Color(0xFF293056), size: 10)
                    : null, // No icon when not selected
              ),
              SizedBox(width: widthScreen * 0.04),
              Container(
                width: 64,
                height: 38,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1B4A).withOpacity(0.04),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image.asset(imagePath, width: 50, height: 30),
              ),
              SizedBox(width: widthScreen * 0.04),
              Text(
                label,
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF1C1C1C),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}