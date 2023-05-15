/*
class Item {
  String headerValue;
  String expandedValue;
  bool isExpanded;

  Item({
    required this.headerValue,
    required this.expandedValue,
    this.isExpanded = false,
  });
}
List<Item> _items = [
  Item(
    headerValue: 'Item 1',
    expandedValue: 'Details 1',
  ),
  Item(
    headerValue: 'Item 2',
    expandedValue: 'Details 2',
  ),
  Item(
    headerValue: 'Item 3',
    expandedValue: 'Details 3',
  ),
];
 */

import 'package:google_maps_flutter/google_maps_flutter.dart';

class UIConstants {
// default location is Deer Park
  LatLng defaultLocation = LatLng(28.556889298126386, 77.19785122022202);

  final String _textAppName = "Malba Scan";

  // GETTERS
  String get textAppName => _textAppName;
}

enum PaymentModes { upi, paytm, bank, cash }

final Map<PaymentModes, String> paymentModesMap = {
  PaymentModes.upi: "UPI",
  PaymentModes.paytm: "Paytm Wallet",
  PaymentModes.bank: "Bank Account",
  PaymentModes.cash: "Cash",
};
