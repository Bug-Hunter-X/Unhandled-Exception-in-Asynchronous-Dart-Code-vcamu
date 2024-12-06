```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      print('Data fetched successfully: $jsonData');
    } else {
      // Handle HTTP errors
      print('HTTP error: ${response.statusCode}');
      throw Exception('HTTP request failed');
    }
  } on SocketException catch (e) {
    // Handle socket exceptions
    print('Socket exception: $e');
    // Additional handling or fallback mechanisms
  } on TimeoutException catch (e) {
    // Handle timeout exceptions
    print('Timeout exception: $e');
    // Retry logic or display a message to the user
  } on FormatException catch (e) {
    //Handle Json format exceptions
    print("Json Format Exception: $e");
  } catch (e) {
    // Handle other exceptions
    print('Error: $e');
  }
}

void main() async {
  await fetchData();
}
```