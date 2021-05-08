///
///* Queue é um coleção ordenada entre chaves{}, sem index, que manipula  o inicio e o fim da lista!
///
import 'dart:collection';

queue() {
  print('16.3.0) Queue\n');

  Queue<int?> queue = Queue(); // import 'dart:collection'
  print('Implementação: ${queue.runtimeType}'); //ListQueue<int>
  queue.addAll([20, 30]);
  queue.add(40);
  queue.addFirst(10);
  queue.addLast(50);
  queue.add(60);
  queue.add(null);
  print(queue);
  queue.removeLast();
  queue.forEach((e) => print('forEach: $e'));
}

void main() {
  queue();
}
