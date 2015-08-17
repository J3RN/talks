int main() {
  // Initialize
  // Big array
  int arr[1000000];

  int i = 0;
  for (i = 0; i < 1000000; i++) {
    arr[i] = i;
  }

  // Map
  int map_arr[1000000];
  for (i = 0; i < 1000000; i++) {
    map_arr[i] = arr[i] * 2;
  }

  // Reduce
  int acc = 0;
  for (i = 0; i < 1000000; i++) {
    acc += arr[i];
  }

  // Select
  int filtered_arr[500000];
  for (i = 0; i < 1000000; i++) {
    if (i % 2 == 0) {
      filtered_arr[i / 2] = arr[i];
    }
  }

  return 0;
}
