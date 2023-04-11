class TransactionModel {
  final String id;
  final String title;
  final TransactionType transactionType;
  final DateTime dateTime;
  final double amount;
  final bool isPaidFromWallet;

  TransactionModel({
    required this.id,
    required this.title,
    required this.transactionType,
    required this.dateTime,
    required this.amount,
    required this.isPaidFromWallet,
  });
}

enum TransactionType {
  debit,
  credit,
  pending,
  coins,
}
