# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common error in Dart: neglecting to handle exceptions during asynchronous operations.  The provided code showcases a simple `http.get` request that may throw exceptions like network errors or timeouts.  The solution shows how to properly catch and handle such exceptions, making the code more robust and preventing unexpected crashes. 

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart`. Observe the error if the network request fails or times out. 
3. Then, run `bugSolution.dart` and observe that exceptions are now gracefully handled.
