// Este arquivo realiza testes de desempenho para os algoritmos de ordenação Insertion Sort e Quicksort.
// Gera arrays de números inteiros aleatórios de diferentes tamanhos e mede o tempo de execução
// de cada algoritmo para ordenar esses arrays.

import 'dart:math';
import 'insertion_sort.dart';
import 'quicksort.dart';

/// Gera uma lista de números inteiros aleatórios.

/// Cria uma lista de tamanho `size`, preenchida com números aleatórios onde cada número
/// está no intervalo de 0 a `size - 1`.

/// Parâmetros:
/// - `size`: O tamanho da lista a ser gerada.

/// Retorna: Uma lista de inteiros aleatórios.
List<int> generateRandomArray(int size) {
  final rand = Random();
  return List.generate(size, (_) => rand.nextInt(size));
}

/// A função principal que executa os testes de desempenho.

/// Para cada tamanho de array especificado na lista `sizes`, esta função gera um array aleatório,
/// realiza uma cópia desse array para cada algoritmo de ordenação, e mede o tempo de execução
/// de cada algoritmo para ordenar o array. Os tempos são impressos no console.
void main() {
  List<int> sizes = [100, 1000, 10000, 100000]; // Tamanhos dos arrays para os testes
  for (var size in sizes) {
    List<int> array = generateRandomArray(size);
    List<int> arrayToSort;

    // Testando Insertion Sort
    arrayToSort = List.from(array); // Cria uma cópia do array para garantir o mesmo input para ambos os algoritmos
    Stopwatch stopwatch = Stopwatch()..start(); // Inicia o cronômetro
    insertionSort(arrayToSort); // Ordena o array usando Insertion Sort
    stopwatch.stop(); // Para o cronômetro
    print('Insertion Sort - Tamanho $size: ${stopwatch.elapsedMicroseconds} microssegundos');

    // Testando Quicksort
    arrayToSort = List.from(array); // Cria outra cópia para o teste com Quicksort
    stopwatch..reset()..start(); // Reseta e inicia o cronômetro novamente
    quickSort(arrayToSort, 0, arrayToSort.length - 1); // Ordena o array usando Quicksort
    stopwatch.stop(); // Para o cronômetro
    print('Quicksort - Tamanho $size: ${stopwatch.elapsedMicroseconds} microssegundos');
  }
}
