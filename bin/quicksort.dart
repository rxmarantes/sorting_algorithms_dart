// Este arquivo contém a implementação do algoritmo de ordenação Quicksort.
// O Quicksort é um algoritmo de divisão e conquista eficiente para ordenar listas
// por meio de uma operação de particionamento.

/// Ordena uma lista de inteiros usando o algoritmo Quicksort.

/// Seleciona um elemento como pivô e particiona a lista original em duas sub-listas,
/// os elementos menores que o pivô e os elementos maiores que o pivô,
/// e então ordena as sub-listas recursivamente.

/// Parâmetros:
/// - `list`: A lista de inteiros a ser ordenada.
/// - `low`: O índice inicial da lista ou sub-lista a ser ordenada.
/// - `high`: O índice final da lista ou sub-lista a ser ordenada.
void quickSort(List<int> list, int low, int high) {
  if (low < high) {
    int pivotIndex = _partition(list, low, high);
    quickSort(list, low, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, high);
  }
}

/// Realiza a operação de particionamento no algoritmo Quicksort.

/// Posiciona o pivô de forma que os elementos menores que o pivô estejam à esquerda
/// e os maiores à direita. Retorna o índice do pivô após o particionamento.

/// Parâmetros:
/// - `list`: A lista de inteiros a ser particionada.
/// - `low`: O índice inicial da lista ou sub-lista a ser particionada.
/// - `high`: O índice final da lista ou sub-lista a ser particionada.
int _partition(List<int> list, int low, int high) {
  int pivot = list[high];
  int i = (low - 1);
  for (int j = low; j < high; j++) {
    if (list[j] < pivot) {
      i++;
      _swap(list, i, j);
    }
  }
  _swap(list, i + 1, high);
  return i + 1;
}

/// Troca os elementos de duas posições na lista.

/// Parâmetros:
/// - `list`: A lista de inteiros onde a troca será realizada.
/// - `i`: O índice do primeiro elemento a ser trocado.
/// - `j`: O índice do segundo elemento a ser trocado.
void _swap(List<int> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

/// Função principal que demonstra a utilização do algoritmo Quicksort.

/// Cria uma lista de inteiros, imprime seu estado original, ordena utilizando o algoritmo
/// Quicksort e então imprime a lista ordenada.
void main() {
  List<int> numbers = [5, 3, 2, 4, 1]; // Lista de exemplo para ordenação
  print('Original: $numbers');
  quickSort(numbers, 0, numbers.length - 1); // Aplicação do algoritmo de ordenação na lista
  print('Sorted: $numbers'); // Impressão da lista após ordenação
}
