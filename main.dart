// Accounts

class Account {
  bool fluid = true;
  bool dr = true;
  double balance = 0.0;
  Account([double balance = 0.0]) {
    this.balance = balance;
  }

  double debit(double amount) {
    if (dr) {
      this.balance += amount;
    } else {
      this.balance -= amount;
    }
    return this.balance;
  }

  double credit(double amount) {
    if (!dr) {
      this.balance += amount;
    } else {
      this.balance -= amount;
    }
    return this.balance;
  }
}

class Asset extends Account {
  bool fluid = false;
  bool dr = true;
  double balance = 0.0;
  Asset([double balance = 0.0, bool fluid = false]) {
    this.balance = balance;
    this.fluid = fluid;
  }
}

class Liability extends Account {
  bool fluid = false;
  bool dr = false;
  double balance = 0.0;
  Liability([double balance = 0.0, bool fluid = false]) {
    this.balance = balance;
  }
}

class Expense extends Account {
  bool fluid = false;
  bool dr = true;
  double balance = 0.0;
  Expense([double balance = 0.0, bool fluid = false]) {
    this.balance = balance;
  }
}

class Income extends Account {
  bool fluid = false;
  bool dr = false;
  double balance = 0.0;
  Income([double balance = 0.0, bool fluid = false]) {
    this.balance = balance;
  }
}

// Books and Journals

class CashBook {
  String title = '';
  List entries = [];
  CashBook(String title, Account bank, Asset cash) {
    this.title = title;
    entries.add({
      'date': DateTime.now(),
      'bank': 0,
      'cash': 0,
    });
  }
}

void main() {
  Account bank = new Asset(0, true);
  print(bank is Account);
  print(bank.fluid);
  
  Asset cash = new Asset(100);
  print(cash is Account);
  print(cash.fluid);

  Liability loan = new Liability(100);
  loan.debit(50);
  print(loan.balance);
  
  CashBook cashbook = new CashBook('cashbook', bank, cash);
  print(cashbook.entries);
}
