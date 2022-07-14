import 'package:get/get.dart';

class PaymentController extends GetxController {
  // bool _isLoading = false;
  // bool get isLoading => _isLoading;
  // Map<String, dynamic>? _paymentIntentData;
  // resetIsLoading(bool state) {
  //   _isLoading = state;
  //   update();
  // }

  // /// [PaymentMethods]
  // ///
  // Future<void> makePayment(
  //     {required UserModel user, required String amount}) async {
  //   try {
  //     _paymentIntentData = await _createPaymentIntent(
  //         amount: amount == '' ? '1' : amount, currency: 'USD');

  //     log('Hello');
  //     await Stripe.instance.initPaymentSheet(
  //         paymentSheetParameters: SetupPaymentSheetParameters(
  //       customerId: _paymentIntentData!['customer'],
  //       paymentIntentClientSecret: _paymentIntentData!['client_secret'],
  //       customerEphemeralKeySecret: _paymentIntentData!['ephemeralKey'],
  //       applePay: true,
  //       googlePay: true,
  //       merchantCountryCode: 'US',
  //       merchantDisplayName: 'Buddy Borrow',
  //       style: ThemeMode.light,
  //     ));
  //     log('Hello 2');

  //     _displayPaymentSheet(user);
  //   } catch (e) {
  //     log('Exception: $e');
  //   }
  // }

  // _displayPaymentSheet(user) async {
  //   try {
  //     log('Here in ${_paymentIntentData!['client_secret']}');
  //     await Stripe.instance
  //         .presentPaymentSheet(
  //             // ignore: deprecated_member_use
  //             parameters: PresentPaymentSheetParameters(
  //       clientSecret: _paymentIntentData!['client_secret'],
  //       confirmPayment: true,
  //     ))
  //         .then((newValue) async {
  //       log('Here in display 2');
  //       resetIsLoading(true);
  //       Get.put(PersonalLoanControllers())
  //           .createPersonalLoan(Get.put(UserController()).user.dbId.toString());
  //       // await _finalizeOrder(finalProducts: finalProducts, dbId: dbId);

  //       _paymentIntentData?.clear();
  //     }).onError((error, stackTrace) {
  //       log('Exception/DISPLAYPAYMENTSHEET==> $error $stackTrace');
  //     });
  //   } on StripeException catch (e) {
  //     log('Exception/DISPLAYPAYMENTSHEET==> $e');
  //     Get.dialog(const Text("Cancelled "));
  //   } catch (e) {
  //     log('Error $e');
  //   }
  // }

  // _createPaymentIntent(
  //     {required String amount, required String currency}) async {
  //   try {
  //     log('Making Map');

  //     Map<String, dynamic> body = {
  //       'amount': _calculateAmount(amount),
  //       'currency': currency,
  //       'payment_method_types[]': 'card',
  //     };
  //     log('Calling api');

  //     var response = await http.post(
  //         Uri.parse('https://api.stripe.com/v1/payment_intents'),
  //         body: body,
  //         headers: {
  //           'Authorization':
  //               'Bearer sk_test_51KNaoPDbwWjt103yeJw6GbYwUXYHRDhyNjtXjnYmFiJ4tHtBlNypTolOU57PnKLvWp2RMSD25OErHFWnRccRW12R00Q18iY5F8',
  //           // 'Bearer sk_test_51JU9tWLRPbx8Iu9o1EaOTInFEZdl7LM5tpy9DmG8LXhpWA3MWi8MaIOZohSrCPxLvXvUxFgPCPu80U8OGotBXVlX00IsU7bnvr',
  //           'Content-Type': 'application/x-www-form-urlencoded'
  //         });
  //     log('resoonse ${response.statusCode}');
  //     return jsonDecode(response.body.toString());
  //   } catch (e) {
  //     log('Exception: $e');
  //   }
  // }

  // _calculateAmount(String amount) {
  //   final price = int.parse(amount) * 100;
  //   return price.toString();
  // }
}
