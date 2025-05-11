
class TPricingCalculator {

  // Calculando o preço total com base nos impostos e no valor da entrega
  static double calculateTotalPrice(double productPrice, String location) {

    double taxRate = getTaxRateForLocation(location);
    double taxAmout = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice * taxRate;

    return totalPrice;
  }

  // Calculando o preço da entrega
  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  // Calculando impostos
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 7.0;
  }

  // Calcula o valor total do carrinho
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}