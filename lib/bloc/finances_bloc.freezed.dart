// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'finances_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FinancesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Expense expense) addExpense,
    required TResult Function(Income income) addIncome,
    required TResult Function(int userId) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Expense expense)? addExpense,
    TResult? Function(Income income)? addIncome,
    TResult? Function(int userId)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Expense expense)? addExpense,
    TResult Function(Income income)? addIncome,
    TResult Function(int userId)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddExpense value) addExpense,
    required TResult Function(_AddIncome value) addIncome,
    required TResult Function(_Fetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddExpense value)? addExpense,
    TResult? Function(_AddIncome value)? addIncome,
    TResult? Function(_Fetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddExpense value)? addExpense,
    TResult Function(_AddIncome value)? addIncome,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancesEventCopyWith<$Res> {
  factory $FinancesEventCopyWith(
          FinancesEvent value, $Res Function(FinancesEvent) then) =
      _$FinancesEventCopyWithImpl<$Res, FinancesEvent>;
}

/// @nodoc
class _$FinancesEventCopyWithImpl<$Res, $Val extends FinancesEvent>
    implements $FinancesEventCopyWith<$Res> {
  _$FinancesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FinancesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'FinancesEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Expense expense) addExpense,
    required TResult Function(Income income) addIncome,
    required TResult Function(int userId) fetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Expense expense)? addExpense,
    TResult? Function(Income income)? addIncome,
    TResult? Function(int userId)? fetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Expense expense)? addExpense,
    TResult Function(Income income)? addIncome,
    TResult Function(int userId)? fetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddExpense value) addExpense,
    required TResult Function(_AddIncome value) addIncome,
    required TResult Function(_Fetched value) fetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddExpense value)? addExpense,
    TResult? Function(_AddIncome value)? addIncome,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddExpense value)? addExpense,
    TResult Function(_AddIncome value)? addIncome,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FinancesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddExpenseImplCopyWith<$Res> {
  factory _$$AddExpenseImplCopyWith(
          _$AddExpenseImpl value, $Res Function(_$AddExpenseImpl) then) =
      __$$AddExpenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Expense expense});
}

/// @nodoc
class __$$AddExpenseImplCopyWithImpl<$Res>
    extends _$FinancesEventCopyWithImpl<$Res, _$AddExpenseImpl>
    implements _$$AddExpenseImplCopyWith<$Res> {
  __$$AddExpenseImplCopyWithImpl(
      _$AddExpenseImpl _value, $Res Function(_$AddExpenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expense = null,
  }) {
    return _then(_$AddExpenseImpl(
      null == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as Expense,
    ));
  }
}

/// @nodoc

class _$AddExpenseImpl implements _AddExpense {
  const _$AddExpenseImpl(this.expense);

  @override
  final Expense expense;

  @override
  String toString() {
    return 'FinancesEvent.addExpense(expense: $expense)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddExpenseImpl &&
            (identical(other.expense, expense) || other.expense == expense));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddExpenseImplCopyWith<_$AddExpenseImpl> get copyWith =>
      __$$AddExpenseImplCopyWithImpl<_$AddExpenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Expense expense) addExpense,
    required TResult Function(Income income) addIncome,
    required TResult Function(int userId) fetched,
  }) {
    return addExpense(expense);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Expense expense)? addExpense,
    TResult? Function(Income income)? addIncome,
    TResult? Function(int userId)? fetched,
  }) {
    return addExpense?.call(expense);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Expense expense)? addExpense,
    TResult Function(Income income)? addIncome,
    TResult Function(int userId)? fetched,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(expense);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddExpense value) addExpense,
    required TResult Function(_AddIncome value) addIncome,
    required TResult Function(_Fetched value) fetched,
  }) {
    return addExpense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddExpense value)? addExpense,
    TResult? Function(_AddIncome value)? addIncome,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return addExpense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddExpense value)? addExpense,
    TResult Function(_AddIncome value)? addIncome,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (addExpense != null) {
      return addExpense(this);
    }
    return orElse();
  }
}

abstract class _AddExpense implements FinancesEvent {
  const factory _AddExpense(final Expense expense) = _$AddExpenseImpl;

  Expense get expense;
  @JsonKey(ignore: true)
  _$$AddExpenseImplCopyWith<_$AddExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddIncomeImplCopyWith<$Res> {
  factory _$$AddIncomeImplCopyWith(
          _$AddIncomeImpl value, $Res Function(_$AddIncomeImpl) then) =
      __$$AddIncomeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Income income});
}

/// @nodoc
class __$$AddIncomeImplCopyWithImpl<$Res>
    extends _$FinancesEventCopyWithImpl<$Res, _$AddIncomeImpl>
    implements _$$AddIncomeImplCopyWith<$Res> {
  __$$AddIncomeImplCopyWithImpl(
      _$AddIncomeImpl _value, $Res Function(_$AddIncomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? income = null,
  }) {
    return _then(_$AddIncomeImpl(
      null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as Income,
    ));
  }
}

/// @nodoc

class _$AddIncomeImpl implements _AddIncome {
  const _$AddIncomeImpl(this.income);

  @override
  final Income income;

  @override
  String toString() {
    return 'FinancesEvent.addIncome(income: $income)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddIncomeImpl &&
            (identical(other.income, income) || other.income == income));
  }

  @override
  int get hashCode => Object.hash(runtimeType, income);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddIncomeImplCopyWith<_$AddIncomeImpl> get copyWith =>
      __$$AddIncomeImplCopyWithImpl<_$AddIncomeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Expense expense) addExpense,
    required TResult Function(Income income) addIncome,
    required TResult Function(int userId) fetched,
  }) {
    return addIncome(income);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Expense expense)? addExpense,
    TResult? Function(Income income)? addIncome,
    TResult? Function(int userId)? fetched,
  }) {
    return addIncome?.call(income);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Expense expense)? addExpense,
    TResult Function(Income income)? addIncome,
    TResult Function(int userId)? fetched,
    required TResult orElse(),
  }) {
    if (addIncome != null) {
      return addIncome(income);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddExpense value) addExpense,
    required TResult Function(_AddIncome value) addIncome,
    required TResult Function(_Fetched value) fetched,
  }) {
    return addIncome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddExpense value)? addExpense,
    TResult? Function(_AddIncome value)? addIncome,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return addIncome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddExpense value)? addExpense,
    TResult Function(_AddIncome value)? addIncome,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (addIncome != null) {
      return addIncome(this);
    }
    return orElse();
  }
}

abstract class _AddIncome implements FinancesEvent {
  const factory _AddIncome(final Income income) = _$AddIncomeImpl;

  Income get income;
  @JsonKey(ignore: true)
  _$$AddIncomeImplCopyWith<_$AddIncomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchedImplCopyWith<$Res> {
  factory _$$FetchedImplCopyWith(
          _$FetchedImpl value, $Res Function(_$FetchedImpl) then) =
      __$$FetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$FetchedImplCopyWithImpl<$Res>
    extends _$FinancesEventCopyWithImpl<$Res, _$FetchedImpl>
    implements _$$FetchedImplCopyWith<$Res> {
  __$$FetchedImplCopyWithImpl(
      _$FetchedImpl _value, $Res Function(_$FetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$FetchedImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchedImpl implements _Fetched {
  const _$FetchedImpl({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'FinancesEvent.fetched(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      __$$FetchedImplCopyWithImpl<_$FetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Expense expense) addExpense,
    required TResult Function(Income income) addIncome,
    required TResult Function(int userId) fetched,
  }) {
    return fetched(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Expense expense)? addExpense,
    TResult? Function(Income income)? addIncome,
    TResult? Function(int userId)? fetched,
  }) {
    return fetched?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Expense expense)? addExpense,
    TResult Function(Income income)? addIncome,
    TResult Function(int userId)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddExpense value) addExpense,
    required TResult Function(_AddIncome value) addIncome,
    required TResult Function(_Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddExpense value)? addExpense,
    TResult? Function(_AddIncome value)? addIncome,
    TResult? Function(_Fetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddExpense value)? addExpense,
    TResult Function(_AddIncome value)? addIncome,
    TResult Function(_Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements FinancesEvent {
  const factory _Fetched({required final int userId}) = _$FetchedImpl;

  int get userId;
  @JsonKey(ignore: true)
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FinancesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        loaded,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        updatedExpenses,
    required TResult Function(List<Income> incomes, List<Expense> expenses)
        updatedIncomes,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult? Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult? Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_UpdatedExpenses value) updatedExpenses,
    required TResult Function(_UpdatedIncomes value) updatedIncomes,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_UpdatedExpenses value)? updatedExpenses,
    TResult? Function(_UpdatedIncomes value)? updatedIncomes,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_UpdatedExpenses value)? updatedExpenses,
    TResult Function(_UpdatedIncomes value)? updatedIncomes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancesStateCopyWith<$Res> {
  factory $FinancesStateCopyWith(
          FinancesState value, $Res Function(FinancesState) then) =
      _$FinancesStateCopyWithImpl<$Res, FinancesState>;
}

/// @nodoc
class _$FinancesStateCopyWithImpl<$Res, $Val extends FinancesState>
    implements $FinancesStateCopyWith<$Res> {
  _$FinancesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FinancesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FinancesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        loaded,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        updatedExpenses,
    required TResult Function(List<Income> incomes, List<Expense> expenses)
        updatedIncomes,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult? Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult? Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_UpdatedExpenses value) updatedExpenses,
    required TResult Function(_UpdatedIncomes value) updatedIncomes,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_UpdatedExpenses value)? updatedExpenses,
    TResult? Function(_UpdatedIncomes value)? updatedIncomes,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_UpdatedExpenses value)? updatedExpenses,
    TResult Function(_UpdatedIncomes value)? updatedIncomes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FinancesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$FinancesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'FinancesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        loaded,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        updatedExpenses,
    required TResult Function(List<Income> incomes, List<Expense> expenses)
        updatedIncomes,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult? Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult? Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_UpdatedExpenses value) updatedExpenses,
    required TResult Function(_UpdatedIncomes value) updatedIncomes,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_UpdatedExpenses value)? updatedExpenses,
    TResult? Function(_UpdatedIncomes value)? updatedIncomes,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_UpdatedExpenses value)? updatedExpenses,
    TResult Function(_UpdatedIncomes value)? updatedIncomes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FinancesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Expense> expenses, List<Income> incomes});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$FinancesStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
    Object? incomes = null,
  }) {
    return _then(_$LoadedImpl(
      null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
      null == incomes
          ? _value._incomes
          : incomes // ignore: cast_nullable_to_non_nullable
              as List<Income>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Expense> expenses, final List<Income> incomes)
      : _expenses = expenses,
        _incomes = incomes;

  final List<Expense> _expenses;
  @override
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  final List<Income> _incomes;
  @override
  List<Income> get incomes {
    if (_incomes is EqualUnmodifiableListView) return _incomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomes);
  }

  @override
  String toString() {
    return 'FinancesState.loaded(expenses: $expenses, incomes: $incomes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            const DeepCollectionEquality().equals(other._incomes, _incomes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_expenses),
      const DeepCollectionEquality().hash(_incomes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        loaded,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        updatedExpenses,
    required TResult Function(List<Income> incomes, List<Expense> expenses)
        updatedIncomes,
    required TResult Function(String message) error,
  }) {
    return loaded(expenses, incomes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult? Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult? Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(expenses, incomes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(expenses, incomes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_UpdatedExpenses value) updatedExpenses,
    required TResult Function(_UpdatedIncomes value) updatedIncomes,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_UpdatedExpenses value)? updatedExpenses,
    TResult? Function(_UpdatedIncomes value)? updatedIncomes,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_UpdatedExpenses value)? updatedExpenses,
    TResult Function(_UpdatedIncomes value)? updatedIncomes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FinancesState {
  const factory _Loaded(
      final List<Expense> expenses, final List<Income> incomes) = _$LoadedImpl;

  List<Expense> get expenses;
  List<Income> get incomes;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedExpensesImplCopyWith<$Res> {
  factory _$$UpdatedExpensesImplCopyWith(_$UpdatedExpensesImpl value,
          $Res Function(_$UpdatedExpensesImpl) then) =
      __$$UpdatedExpensesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Expense> expenses, List<Income> incomes});
}

/// @nodoc
class __$$UpdatedExpensesImplCopyWithImpl<$Res>
    extends _$FinancesStateCopyWithImpl<$Res, _$UpdatedExpensesImpl>
    implements _$$UpdatedExpensesImplCopyWith<$Res> {
  __$$UpdatedExpensesImplCopyWithImpl(
      _$UpdatedExpensesImpl _value, $Res Function(_$UpdatedExpensesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expenses = null,
    Object? incomes = null,
  }) {
    return _then(_$UpdatedExpensesImpl(
      null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
      null == incomes
          ? _value._incomes
          : incomes // ignore: cast_nullable_to_non_nullable
              as List<Income>,
    ));
  }
}

/// @nodoc

class _$UpdatedExpensesImpl implements _UpdatedExpenses {
  const _$UpdatedExpensesImpl(
      final List<Expense> expenses, final List<Income> incomes)
      : _expenses = expenses,
        _incomes = incomes;

  final List<Expense> _expenses;
  @override
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  final List<Income> _incomes;
  @override
  List<Income> get incomes {
    if (_incomes is EqualUnmodifiableListView) return _incomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomes);
  }

  @override
  String toString() {
    return 'FinancesState.updatedExpenses(expenses: $expenses, incomes: $incomes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedExpensesImpl &&
            const DeepCollectionEquality().equals(other._expenses, _expenses) &&
            const DeepCollectionEquality().equals(other._incomes, _incomes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_expenses),
      const DeepCollectionEquality().hash(_incomes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedExpensesImplCopyWith<_$UpdatedExpensesImpl> get copyWith =>
      __$$UpdatedExpensesImplCopyWithImpl<_$UpdatedExpensesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        loaded,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        updatedExpenses,
    required TResult Function(List<Income> incomes, List<Expense> expenses)
        updatedIncomes,
    required TResult Function(String message) error,
  }) {
    return updatedExpenses(expenses, incomes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult? Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult? Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult? Function(String message)? error,
  }) {
    return updatedExpenses?.call(expenses, incomes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updatedExpenses != null) {
      return updatedExpenses(expenses, incomes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_UpdatedExpenses value) updatedExpenses,
    required TResult Function(_UpdatedIncomes value) updatedIncomes,
    required TResult Function(_Error value) error,
  }) {
    return updatedExpenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_UpdatedExpenses value)? updatedExpenses,
    TResult? Function(_UpdatedIncomes value)? updatedIncomes,
    TResult? Function(_Error value)? error,
  }) {
    return updatedExpenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_UpdatedExpenses value)? updatedExpenses,
    TResult Function(_UpdatedIncomes value)? updatedIncomes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updatedExpenses != null) {
      return updatedExpenses(this);
    }
    return orElse();
  }
}

abstract class _UpdatedExpenses implements FinancesState {
  const factory _UpdatedExpenses(
          final List<Expense> expenses, final List<Income> incomes) =
      _$UpdatedExpensesImpl;

  List<Expense> get expenses;
  List<Income> get incomes;
  @JsonKey(ignore: true)
  _$$UpdatedExpensesImplCopyWith<_$UpdatedExpensesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedIncomesImplCopyWith<$Res> {
  factory _$$UpdatedIncomesImplCopyWith(_$UpdatedIncomesImpl value,
          $Res Function(_$UpdatedIncomesImpl) then) =
      __$$UpdatedIncomesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Income> incomes, List<Expense> expenses});
}

/// @nodoc
class __$$UpdatedIncomesImplCopyWithImpl<$Res>
    extends _$FinancesStateCopyWithImpl<$Res, _$UpdatedIncomesImpl>
    implements _$$UpdatedIncomesImplCopyWith<$Res> {
  __$$UpdatedIncomesImplCopyWithImpl(
      _$UpdatedIncomesImpl _value, $Res Function(_$UpdatedIncomesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incomes = null,
    Object? expenses = null,
  }) {
    return _then(_$UpdatedIncomesImpl(
      null == incomes
          ? _value._incomes
          : incomes // ignore: cast_nullable_to_non_nullable
              as List<Income>,
      null == expenses
          ? _value._expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as List<Expense>,
    ));
  }
}

/// @nodoc

class _$UpdatedIncomesImpl implements _UpdatedIncomes {
  const _$UpdatedIncomesImpl(
      final List<Income> incomes, final List<Expense> expenses)
      : _incomes = incomes,
        _expenses = expenses;

  final List<Income> _incomes;
  @override
  List<Income> get incomes {
    if (_incomes is EqualUnmodifiableListView) return _incomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomes);
  }

  final List<Expense> _expenses;
  @override
  List<Expense> get expenses {
    if (_expenses is EqualUnmodifiableListView) return _expenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenses);
  }

  @override
  String toString() {
    return 'FinancesState.updatedIncomes(incomes: $incomes, expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedIncomesImpl &&
            const DeepCollectionEquality().equals(other._incomes, _incomes) &&
            const DeepCollectionEquality().equals(other._expenses, _expenses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_incomes),
      const DeepCollectionEquality().hash(_expenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedIncomesImplCopyWith<_$UpdatedIncomesImpl> get copyWith =>
      __$$UpdatedIncomesImplCopyWithImpl<_$UpdatedIncomesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        loaded,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        updatedExpenses,
    required TResult Function(List<Income> incomes, List<Expense> expenses)
        updatedIncomes,
    required TResult Function(String message) error,
  }) {
    return updatedIncomes(incomes, expenses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult? Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult? Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult? Function(String message)? error,
  }) {
    return updatedIncomes?.call(incomes, expenses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updatedIncomes != null) {
      return updatedIncomes(incomes, expenses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_UpdatedExpenses value) updatedExpenses,
    required TResult Function(_UpdatedIncomes value) updatedIncomes,
    required TResult Function(_Error value) error,
  }) {
    return updatedIncomes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_UpdatedExpenses value)? updatedExpenses,
    TResult? Function(_UpdatedIncomes value)? updatedIncomes,
    TResult? Function(_Error value)? error,
  }) {
    return updatedIncomes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_UpdatedExpenses value)? updatedExpenses,
    TResult Function(_UpdatedIncomes value)? updatedIncomes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updatedIncomes != null) {
      return updatedIncomes(this);
    }
    return orElse();
  }
}

abstract class _UpdatedIncomes implements FinancesState {
  const factory _UpdatedIncomes(
          final List<Income> incomes, final List<Expense> expenses) =
      _$UpdatedIncomesImpl;

  List<Income> get incomes;
  List<Expense> get expenses;
  @JsonKey(ignore: true)
  _$$UpdatedIncomesImplCopyWith<_$UpdatedIncomesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$FinancesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FinancesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        loaded,
    required TResult Function(List<Expense> expenses, List<Income> incomes)
        updatedExpenses,
    required TResult Function(List<Income> incomes, List<Expense> expenses)
        updatedIncomes,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult? Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult? Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Expense> expenses, List<Income> incomes)? loaded,
    TResult Function(List<Expense> expenses, List<Income> incomes)?
        updatedExpenses,
    TResult Function(List<Income> incomes, List<Expense> expenses)?
        updatedIncomes,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_UpdatedExpenses value) updatedExpenses,
    required TResult Function(_UpdatedIncomes value) updatedIncomes,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_UpdatedExpenses value)? updatedExpenses,
    TResult? Function(_UpdatedIncomes value)? updatedIncomes,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_UpdatedExpenses value)? updatedExpenses,
    TResult Function(_UpdatedIncomes value)? updatedIncomes,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements FinancesState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
