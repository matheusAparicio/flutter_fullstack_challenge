// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeState on _HomeStateBase, Store {
  late final _$currentResultAtom =
      Atom(name: '_HomeStateBase.currentResult', context: context);

  @override
  List<int> get currentResult {
    _$currentResultAtom.reportRead();
    return super.currentResult;
  }

  @override
  set currentResult(List<int> value) {
    _$currentResultAtom.reportWrite(value, super.currentResult, () {
      super.currentResult = value;
    });
  }

  late final _$currentResultTimeAtom =
      Atom(name: '_HomeStateBase.currentResultTime', context: context);

  @override
  int get currentResultTime {
    _$currentResultTimeAtom.reportRead();
    return super.currentResultTime;
  }

  @override
  set currentResultTime(int value) {
    _$currentResultTimeAtom.reportWrite(value, super.currentResultTime, () {
      super.currentResultTime = value;
    });
  }

  late final _$allResultsAtom =
      Atom(name: '_HomeStateBase.allResults', context: context);

  @override
  dynamic get allResults {
    _$allResultsAtom.reportRead();
    return super.allResults;
  }

  @override
  set allResults(dynamic value) {
    _$allResultsAtom.reportWrite(value, super.allResults, () {
      super.allResults = value;
    });
  }

  late final _$_HomeStateBaseActionController =
      ActionController(name: '_HomeStateBase', context: context);

  @override
  List<int> calculateNumber({required int number}) {
    final _$actionInfo = _$_HomeStateBaseActionController.startAction(
        name: '_HomeStateBase.calculateNumber');
    try {
      return super.calculateNumber(number: number);
    } finally {
      _$_HomeStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentResult: ${currentResult},
currentResultTime: ${currentResultTime},
allResults: ${allResults}
    ''';
  }
}
