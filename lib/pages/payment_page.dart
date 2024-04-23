import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/pages/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey();
  String cardNumber = '';
  String expireDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text('Confirm Payment'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      FittedBox(child: Text('Card Number: $cardNumber')),
                      Text('Expiry Date: $expireDate'),
                      Text('Card Holder Name : $cardHolderName'),
                      Text('CVV : $cvvCode')
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeliveryProgressPage(),
                        ),
                      );
                    },
                    child: const Text('Yes'),
                  ),
                ],
              ));
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Checkout'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expireDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              onCreditCardWidgetChange: (p0) {},
            ),
            CreditCardForm(
              formKey: formKey, // Required
              cardNumber: cardNumber, // Required
              expiryDate: expireDate, // Required
              cardHolderName: cardHolderName, // Required
              cvvCode: cvvCode, // Required
              onCreditCardModelChange: (data) {
                setState(() {
                  cardNumber = data.cardNumber;
                  expireDate = data.expiryDate;
                  cardHolderName = data.cardHolderName;
                  cvvCode = data.cvvCode;
                });
              }, // Required
              // obscureCvv: true,

              // isHolderNameVisible: true,
              // isCardNumberVisible: true,
              // isExpiryDateVisible: true,
              // enableCvv: true,
              // cvvValidationMessage: 'Please input a valid CVV',
              // dateValidationMessage: 'Please input a valid date',
              // numberValidationMessage: 'Please input a valid number',
              // cardNumberValidator: (String? cardNumber) {},
              // expiryDateValidator: (String? expiryDate) {},
              // cvvValidator: (String? cvv) {},
              // cardHolderValidator: (String? cardHolderName) {},
              // onFormComplete: () {
              //   // callback to execute at the end of filling card data
              // },
              // autovalidateMode: AutovalidateMode.always,
              // disableCardNumberAutoFillHints: false,
              inputConfiguration: const InputConfiguration(
                cardNumberDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number',
                  hintText: 'XXXX XXXX XXXX XXXX',
                ),
                expiryDateDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Expired Date',
                  hintText: 'XX/XX',
                ),
                cvvCodeDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CVV',
                  hintText: 'XXX',
                ),
                cardHolderDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card Holder',
                ),
                cardNumberTextStyle: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
                cardHolderTextStyle: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
                expiryDateTextStyle: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
                cvvCodeTextStyle: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            MyButton(
                ontap: () {
                  userTappedPay();
                },
                text: 'Pay now'),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
