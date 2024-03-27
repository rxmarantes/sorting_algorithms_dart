// Este arquivo contém a implementação do algoritmo de ordenação Insertion Sort.
// O Insertion Sort é um algoritmo de ordenação simples que constrói a saída final
// um item de cada vez. Ele é muito eficiente para listas pequenas e quase ordenadas.

/// Ordena uma lista de inteiros usando o algoritmo Insertion Sort.

/// Percorre a lista `list` da esquerda para a direita, comparando cada elemento com os seus anteriores
/// e os movendo para a posição correta para que a parte esquerda da lista fique ordenada.
/// 
/// Parâmetros:
/// - `list`: Uma lista de inteiros que será ordenada.
void insertionSort(List<int> list) {
  for (int i = 1; i < list.length; i++) {
    int key = list[i];
    int j = i - 1;
    while (j >= 0 && list[j] > key) {
      list[j + 1] = list[j]; // Move o elemento para a direita, criando espaço para a 'key'
      j = j - 1;
    }
    list[j + 1] = key; // Insere a 'key' na posição correta na parte ordenada da lista
  }
}

/// Função principal que demonstra a utilização do algoritmo Insertion Sort.

/// Cria uma lista de inteiros, imprime seu estado original, ordena utilizando o algoritmo
/// Insertion Sort e então imprime a lista ordenada.
void main() {
  List<int> numbers = [5, 3, 2, 4, 1]; // Lista de exemplo para ordenação
  print('Original: $numbers');
  insertionSort(numbers); // Aplicação do algoritmo de ordenação na lista
  print('Sorted: $numbers'); // Impressão da lista após ordenação
}
