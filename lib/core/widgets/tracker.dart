import 'package:cryptoTracker/core/controllers/coin_controller.dart';
import 'package:cryptoTracker/core/widgets/subWidgets/coinList_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tracker extends StatelessWidget {
  Tracker({Key key}) : super(key: key);

  Future<void> _refresh() async {
    print('Need to Implement GETX');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Home',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: Get.width * 0.08,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            color: Color(0xffE8EDF4),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(
          top: Get.height * 0.02,
        ),
        padding: EdgeInsets.only(
          bottom: Get.height * 0.05,
          top: Get.height * 0.02,
        ),
        decoration: BoxDecoration(
          color: Color(0xff000001),
          // color: Colors.red,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        child: GetBuilder<CoinController>(
          init: CoinController(),
          builder: (_) => Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: RefreshIndicator(
                  backgroundColor: Colors.transparent,
                  onRefresh: _refresh,
                  child: _.isLoading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.separated(
                          itemBuilder: (BuildContext context, index) =>
                              CoinList(
                            title: _.coinList[index].name,
                            subtitle: _.coinList[index].symbol,
                            icon:
                                'https://s2.coinmarketcap.com/static/img/coins/64x64/' +
                                    _.coinList[index].id.toString() +
                                    '.png',
                          ),
                          separatorBuilder: (_, __) => Divider(),
                          itemCount:
                              _.coinList.length.isNull ? 0 : _.coinList.length,
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
      // GetBuilder<CoinController>(
      //   init: CoinController(),
      //   builder: (_) => Expanded(
      //     child: RefreshIndicator(

      //       child: Container(
      //         margin: EdgeInsets.only(
      //           top: Get.height * 0.02,
      //         ),
      //         padding: EdgeInsets.only(
      //           bottom: Get.height * 0.05,
      //           top: Get.height * 0.02,
      //         ),
      //         decoration: BoxDecoration(
      //           color: Color(0xff000001),
      //           // color: Colors.red,
      //           borderRadius: BorderRadius.only(
      //             topLeft: Radius.circular(50.0),
      //             topRight: Radius.circular(50.0),
      //           ),
      //         ),
      //         child:
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
