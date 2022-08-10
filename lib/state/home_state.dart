import 'package:flutter_fullstack_challenge/utilities/int_extension.dart';
import 'package:mobx/mobx.dart';
part 'home_state.g.dart';

class HomeState = _HomeStateBase with _$HomeState;

HomeState homeState = HomeState();

abstract class _HomeStateBase with Store {
  @observable
  List<int> currentResult = [];

  @observable
  int currentResultTime = 0;

  @observable
  dynamic allResults = [];

  @action
  List<int> calculateNumber({required int number}) {
    List<int> result = [];
    for (int i = 2; i < number; i++) {
      if (i.divisibleNumbersCount() == (i + 1).divisibleNumbersCount()) {
        result.add(i);
      }
    }
    return result;
  }
  
}
