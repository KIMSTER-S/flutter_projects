import 'dart:convert';
import 'dart:io' show Platform;

import 'package:bitcoin_ticker_flutter/coin_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'USD';
  Map<String, String> coinValues = {};
  bool isWaiting = false;

  void getData() async {
    //7: Second, we set it to true when we initiate the request for prices.
    isWaiting = true;
    try {
      //6: Update this method to receive a Map containing the crypto:price key value pairs.
      var data = await CoinData().getCoinData(selectedCurrency);
      //7. Third, as soon the above line of code completes, we now have the data and no longer need to wait. So we can set isWaiting to false.
      isWaiting = false;
      setState(() {
        coinValues = data;
      });
    } catch (e) {
      print(e);
    }
  }

  DropdownButton<String> androidDropDown() {
    List<DropdownMenuItem<String>> dropdownItems = [];
    for (String currency in currenciesList) {
      //String currency = currenciesList[i];
      var newItem = DropdownMenuItem(
        value: currency,
        child: Text(currency),
      );
      dropdownItems.add(newItem);
    }
    return DropdownButton<String>(
        value: selectedCurrency,
        items: dropdownItems,
        onChanged: (value) async {
          setState(() {
            selectedCurrency = value!;
            getData();
            //print(cryptoValues);
            //print(value);
          });
        });
  }

  CupertinoPicker iOSPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }
    return CupertinoPicker(
      //backgroundColor: Colors.red,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        selectedCurrency = currenciesList[selectedIndex];
        getData();
        print(selectedIndex);
      },
      children: pickerItems,
    );
  }

  Widget getPicker() {
    if (Platform.isIOS) {
      return iOSPicker();
    } else if (Platform.isAndroid) {
      return androidDropDown();
    }
    return Text('Error Not Compatible Device');
  }

  List<Widget> getCoinList() {
    //Map<String, double> coinValues = await getCryptoValues();
    List<Widget> coins = [];
    for (String coin in cryptoList) {
      var crypto = Padding(
        padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
        child: Card(
          color: Colors.lightBlueAccent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
            child: Text(
              '1 $coin = ${coinValues[coin]} $selectedCurrency',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
      coins.add(crypto);
    }
    var contain = Container(
      height: 150.0,
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 30.0),
      color: Colors.lightBlue,
      child: Platform.isIOS ? iOSPicker() : androidDropDown(),
    );
    coins.add(Spacer());
    coins.add(contain);
    return coins;
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: getCoinList(),
      ),
    );
  }
}

// Padding getCoinList(String coin) {
//   //Padding coins = [];
//   //for (String coin in cryptoList) {
//   var crypto = Padding(
//     padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
//     child: Card(
//       color: Colors.lightBlueAccent,
//       elevation: 5.0,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
//         child: Text(
//           '1 $coin = ? $selectedCurrency',
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 20.0,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ),
//   );
//   //coins.add(crypto);
//   //}
//   return crypto;
// }


// List<DropdownMenuItem<String>> getDropdownItems() {
  //   List<DropdownMenuItem<String>> dropdownItems = [];
  //   for (String currency in currenciesList) {
  //     //String currency = currenciesList[i];
  //     var newItem = DropdownMenuItem(
  //       value: currency,
  //       child: Text(currency),
  //     );
  //     dropdownItems.add(newItem);
  //   }
  //   return dropdownItems;
  // }

  // List<Text> getPickerItems() {
  //   List<Text> pickerItems = [];
  //   for (String currency in currenciesList) {
  //     pickerItems.add(Text(currency));
  //   }
  //   return pickerItems;
  // }