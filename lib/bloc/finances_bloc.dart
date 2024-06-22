import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:finance_tracker1/services/repository.dart';
import 'package:finance_tracker1/models/expense.dart';
import 'package:finance_tracker1/models/income.dart';

part 'finances_event.dart';
part 'finances_state.dart';
part 'finances_bloc.freezed.dart';

class FinancesBloc extends Bloc<FinancesEvent, FinancesState> {
  final Repository _repository;
  FinancesBloc(this._repository) : super(const FinancesState.initial()) {
    on<FinancesEvent>((event, emit) async {
      await event.map(
        started: (_) async => const _Started(),
        addExpense: (value) async => _addExpense(value, emit),
        addIncome: (value) async => _addIncome(value, emit),
        fetched: (value) async => _fetched(emit),
      );
    });
  }

  Future<void> _addExpense(_AddExpense event, Emitter<FinancesState> emit) async {
    emit(const FinancesState.loading());
    try {
      await _repository.addExpense(event.expense);
      final expenses = await _repository.fetchExpenses();
      await _fetched(emit);
      emit(FinancesState.updatedExpenses(expenses));
    }
    catch(e){
      emit(const FinancesState.error('Cannot add expense'));
    }
  }

  Future<void> _addIncome(_AddIncome event, Emitter<FinancesState> emit) async {
    emit(const FinancesState.loading());
    try {
      await _repository.addIncome(event.income);
      final incomes = await _repository.fetchIncomes();
      emit(FinancesState.updatedIncomes(incomes));
    }
    catch(e){
      emit(const FinancesState.error('Cannot add expense'));
    }
  }

  Future<void> _fetched(Emitter<FinancesState> emit) async {
    emit(const FinancesState.loading());
    try {
      final list = await _repository.fetchExpenses();
      final list_2 = await _repository.fetchIncomes();
      emit(FinancesState.loaded(list, list_2));
    }
    catch(e){
      emit(const FinancesState.error('Cannot fetch data'));
    }
  }

}
