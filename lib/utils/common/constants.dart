class Constants {
  static const appTitle = 'Simple Pay';
  static const restBaseUrl =
      'https://shohibexlab.github.io/simplepaypi/db.json';
  static const isDebugMode = true;

  static const availableDisocuntPrices = [5, 10, 15, 25, 30, 50, 70, 100];

  static const Map taxAppliedFormatter = {
    '0': 'TaxFree',
    '1': 'Tax excluded',
    '2': 'Tax included',
  };
  static const availableTaxAppliedTypes = {
    "0": "tax_free",
    "1": "price_does_not_include_tax",
    "2": "price_includes_tax",
  };
}
