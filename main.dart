class Account {
  bool fluid = true;
  double balance = 0.0;
  Account([double balance = 0.0]) {
    this.balance = balance;
  }
}

class Asset extends Account {
  bool fluid = false;
  double balance = 0.0;
  Asset([double balance = 0.0, bool fluid = false]) {
    this.balance = balance;
    this.fluid = fluid;
  }
}

class Liability extends Account {
  bool fluid = false;
  double balance = 0.0;
  Liability([double balance = 0.0, bool fluid = false]) {
    this.balance = balance;
  }
}

class Expense extends Account {
  bool fluid = false;
  double balance = 0.0;
  Expense([double balance = 0.0, bool fluid = false]) {
    this.balance = balance;
  }
}

class Income extends Account {
  bool fluid = false;
  double balance = 0.0;
  Income([double balance = 0.0, bool fluid = false]) {
    this.balance = balance;
  }
}

void main() {
  Account bank = new Asset(0, true);
  print(bank is Account);
  print(bank.fluid);
  Asset cash = new Asset(100);
  print(cash is Account);
  print(cash.fluid);
}
