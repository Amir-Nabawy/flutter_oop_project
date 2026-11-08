

abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCardPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print(" ok CreditCardPayment : $amount");
  }
}

class CashPayment extends PaymentMethod {
  @override
  void pay(double amount) {
    print("ok CashPayment : $amount");
  }
}

void main() {
  CashPayment cash = CashPayment();
  cash.pay(500);

  CreditCardPayment visa = CreditCardPayment();
  visa.pay(1000);

  PaymentMethod payment = CashPayment();
  payment.pay(600);

//   PaymentMethod payment = PaymentMethod();
//   payment.pay(300);
}
