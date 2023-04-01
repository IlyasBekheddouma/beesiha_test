import 'package:beesiha_test/domain/entities/character.dart';
import 'package:beesiha_test/domain/usecases/get_characters_usecase.dart';
import 'package:beesiha_test/presentation/common/base_status/base_status.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCharactersProviders extends ChangeNotifier {
  GetCharactersProviders(this._getCharactersUseCase,);
  final GetCharactersUseCase _getCharactersUseCase;
  BaseStatus status=const BaseStatus.initial();
  List<Character> list=[];
  int currentPage=0;

  void get() {

    if(status.isLoading||status.isLazyLoading) return;
    status=currentPage==0?const BaseStatus.loading():const BaseStatus.lazyLoading();

    if(currentPage!=0) notifyListeners();

    _getCharactersUseCase.call(input: currentPage).then((value) {
      status=const BaseStatus.success();
      list.addAll(value);
      currentPage++;
      notifyListeners();
    });
  }
}