import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();


  // Variáveis
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Atualiza index atual quando scrollado
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Pula para o ponto especifico do ponto selecionado
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Atualiza index atual e pula para a próxima página
  void nextPage() {
    if(currentPageIndex.value == 2) {
      // Get.to(LoginScreen())
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Atualiza o index atual e pula para a última página
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}