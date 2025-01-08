```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final data = jsonDecode(response.body) as List<dynamic>;

      // Process the data
      for (final item in data) {
        // Accessing nested data without proper null checks. This will throw an error if 'nestedField' is missing.
        final nestedValue = item['nestedField'];
        print(nestedValue); 
      }
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error fetching data: $e');
    // Missing proper error handling and logging for production environment
  }
}
```