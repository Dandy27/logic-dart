void main() {
  print('05.2) For Labels');
  for (var i = 0; i < 2; i++) {
    // i = 0
    for (int j = i; j < 2; j++) {
      // j = 0
      for (num k = j; k < 2; k++) {
        //k = 0
        print('i: $i j: $j k: $k');
      }
    }
  }
  print('\nFor com break e rótulos (labels)');

// break encerra o loop e o indice zera
  loopExterno:
  for (var i = 0; i < 3; i++) {
    // i = 0
    print('LoopExterno: i: $i');
    loopInterno:
    for (var j = 0; j < 3; j++) {
      // j = 0
      print('LoopInterno: i: $i j: $j ');
      if (j < 2) break;
      if (i == 1) break loopExterno;
      if (i == 2) break loopInterno;
      print('loopCompleto');
    }
  }

  print('\nFor com continue e rotulos (labels)\n');
  loopExterno:
  for (int i = 1; i <= 1; i++) {
    //i = 0
    print('loopExterno: i: $i');
    loopInterno:
    for (int j = 1; j <= 3; j++) {
      // j = 0
      print('loopInterno: i: $i j: $j');
      if (i == 1 && j == 1) continue loopInterno;
      if (i == 2 && j == 2) continue loopExterno;
      print('loopCompleto');
    }
  }
}
