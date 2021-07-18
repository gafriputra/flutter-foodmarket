part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrationPage(
        title: "You've Made Order",
        subtitle: "Just stay home while we are\npreparing your best foods",
        picturePath: "assets/bike.png",
        buttonTap1: () {
          Get.offAll(MainPage());
        },
        buttonTitle1: "Order other Foods",
        buttonTap2: () {
          Get.offAll(MainPage(
            initialPage: 1,
          ));
        },
        buttonTitle2: "View My Order",
      ),
    );
  }
}
