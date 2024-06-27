class AppPricingCalculator {
  // calculating the Price based on the tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice + taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  // Calcualte Shipping cost
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

// Calculating the Tax
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 5.00;
  }

  // // Sum of all cart values
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((item) => item.price).fold(
  //         0,
  //         (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0),
  //       );
  // }
}
