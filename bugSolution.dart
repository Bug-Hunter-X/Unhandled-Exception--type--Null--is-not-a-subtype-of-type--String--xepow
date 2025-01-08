```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body) as List<dynamic>;
      for (final item in data) {
        // Proper null checks for nested data
        final nestedValue = item['nestedField'];
        final stringValue = nestedValue?.toString() ?? 'N/A'; // Handle null safely
        print(stringValue); //Print N/A if nestedValue is null
      }
    } else {
      // More informative error message
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } catch (e, stacktrace) {
    // Comprehensive error logging
    print('Error fetching data: $e
Stacktrace: $stacktrace');
    // Consider more sophisticated error handling, such as logging to a service
  }
}
```