
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuicktag/Folder%20Structured/Payment/paymentmethod.dart';
import 'package:kuicktag/constants/app_colors.dart';
import 'package:kuicktag/widgets/textfields/cus_TextField_s.dart';
import 'package:kuicktag/widgets/custombuttonwidget.dart';

class AddPaymentMethodScreen extends StatefulWidget {
  const AddPaymentMethodScreen({super.key});

  @override
  State<AddPaymentMethodScreen> createState() => _AddPaymentMethodScreenState();
}

class _AddPaymentMethodScreenState extends State<AddPaymentMethodScreen> {
  late TextEditingController _selectcardcontroller;
  late TextEditingController _cardholdernamecontroller;
  late TextEditingController _cardnumbercontroller;
  late TextEditingController _cardexpirycontroller;
  late TextEditingController _cardcvccontroller;

  @override
  void initState() {
    super.initState();
    _selectcardcontroller = TextEditingController();
    _cardholdernamecontroller = TextEditingController();
    _cardnumbercontroller = TextEditingController();
    _cardexpirycontroller = TextEditingController();
    _cardcvccontroller = TextEditingController();
  }

  @override
  void dispose() {
    _selectcardcontroller.dispose();
    _cardholdernamecontroller.dispose();
    _cardnumbercontroller.dispose();
    _cardexpirycontroller.dispose();
    _cardcvccontroller.dispose();
    super.dispose();
  }

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
          'Add payment method',
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: heightScreen * 0.04),
              const titlewidgetcustom(
                title: 'Select Card',
              ),
              const SizedBox(height: 4),
              TextFormField(
                controller: _cardholdernamecontroller,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black.withOpacity(0.4),
                decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    'assets/mastercard.png',
                    width: 28,
                    height: 17,
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_down_rounded)),
                  // suffixIcon:
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  hintText: 'Credit card',
                  hintStyle: GoogleFonts.outfit(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: const Color(0xFF000000).withOpacity(0.5)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFD8DADC)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFFD8DADC)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xFFD8DADC)),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(height: heightScreen * 0.02),
              const titlewidgetcustom(
                title: 'Card holder name',
              ),
              const SizedBox(height: 4),
              textfieldwidgetsmall(
                nameController: _cardholdernamecontroller,
                hinttext: 'Adam',
              ),
              SizedBox(height: heightScreen * 0.02),
              const titlewidgetcustom(
                title: 'Card Number',
              ),
              const SizedBox(height: 4),
              textfieldwidgetsmall(
                nameController: _cardnumbercontroller,
                hinttext: '02323 121323 1323',
              ),
              SizedBox(height: heightScreen * 0.02),
              const titlewidgetcustom(
                title: 'Expiration Month/Year',
              ),
              const SizedBox(height: 4),
              textfieldwidgetsmall(
                nameController: _cardexpirycontroller,
                hinttext: '2025',
              ),
              SizedBox(height: heightScreen * 0.02),
              const titlewidgetcustom(
                title: 'Cvc',
              ),
              const SizedBox(height: 4),
              textfieldwidgetsmall(
                nameController: _cardcvccontroller,
                hinttext: '12323',
              ),
              SizedBox(height: heightScreen * 0.02),
              CustomButtonWidget(
                title: 'Save',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PaymentMethodScreen();
                  }));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class titlewidgetcustom extends StatelessWidget {
  const titlewidgetcustom({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
    );
  }
}
