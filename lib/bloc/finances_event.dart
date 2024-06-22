part of 'finances_bloc.dart';

@freezed
class FinancesEvent with _$FinancesEvent {
  const factory FinancesEvent.started() = _Started;
  const factory FinancesEvent.addExpense(Expense expense) = _AddExpense;
  const factory FinancesEvent.addIncome(Income income) = _AddIncome;
  const factory FinancesEvent.fetched({
    required int userId,
  }) = _Fetched;
}
