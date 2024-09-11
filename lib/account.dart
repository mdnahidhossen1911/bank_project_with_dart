class BankAccount {

  // Account database use List
  List<Map<String, dynamic>> accountDataBase = [];

  void createAccount({required String userName,required String userCity,required int accountNumber,double balance=0}){
    accountDataBase.add({
      'userName':'$userName',
      'userCity':'$userCity',
      'accountNumber':accountNumber,
      'balance' : balance
    });
    print('\nAccount Create succesfully');
    print('Welcome $userName\nyour aoocunt number : $accountNumber\n');
  }

  void accountDetails(int accountNumber){
    for (var account in accountDataBase){
      if(account['accountNumber'] == accountNumber){
        print('User Name : ${account['userName']}');
        print('User City : ${account['userCity']}');
        print('Account Number : ${account['accountNumber']}');
        print('Balance : ${account['balance']}\n');
        break;
      }else print("not found your account '$accountNumber'\n");
    }
  }

  /// deposit
  void balanceDeposit(int accountNumber,double amount){
    for (var account in accountDataBase){
      if(account['accountNumber'] == accountNumber){
        double balance = account['balance'];
        if(amount > 0){
          print('UserName : ${account['userName']}');
          print('Old Balance is: ${account['balance']}');

          balance = balance + amount;
          account['balance'] = balance;
          print('New Balance is: ${account['balance']}\n');
        } else{
          print('Please add a positive value');
        }
        break;
      }else print("not found your account '$accountNumber'");
    }

  }

  void balanceWithdraw(int accountNumber,double amount){
    for (var account in accountDataBase){
      if(account['accountNumber'] == accountNumber){
        double balance = account['balance'];

        if(amount <= balance && amount > 0){
          print('UserName : ${account['userName']}');
          print('Old Balance is: ${account['balance']}');

          balance = balance - amount;
          account['balance'] = balance;
          print('New Balance is: ${account['balance']}\n');
        } else {
          print('Something went wrong');
        }

        break;
      }else print("not found your account '$accountNumber'");
    }

  }

  int Database() => accountDataBase.length;


}