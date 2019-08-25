import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'NPR',
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR',
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  Future getData(String coin, String currency) async {
    http.Response response = await http.get(
        'https://apiv2.bitcoinaverage.com/indices/global/ticker/$coin$currency');
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['last'];
    } else {
      print(response.statusCode);
    }
  }
}
