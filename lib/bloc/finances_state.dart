part of 'finances_bloc.dart';

@freezed
class FinancesState with _$FinancesState {
  const factory FinancesState.initial() = _Initial;
  const factory FinancesState.loading() = _Loading;
  const factory FinancesState.loaded(List<Expense> expenses,
      List<Income> incomes) = _Loaded;
  const factory FinancesState.updatedExpenses(List<Expense> expenses) = _UpdatedExpenses;
  const factory FinancesState.updatedIncomes(List<Income> incomes) = _UpdatedIncomes;
  const factory FinancesState.error(String message) = _Error;
}
