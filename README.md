# Dart - Unhandled Exception: type 'Null' is not a subtype of type 'String'

This repository demonstrates a common error in Dart when dealing with JSON responses: attempting to access nested data without proper null checks. This often leads to the `Unhandled Exception: type 'Null' is not a subtype of type 'String'` error.

The `bug.dart` file contains the problematic code. The `bugSolution.dart` file shows how to fix the issue with robust null checks and improved error handling.

## Problem

The primary issue is the lack of null checks when accessing nested JSON data.  If the expected nested field is not present, the code will crash.  Further, the error handling is minimal, which is inadequate for production-ready code.

## Solution

The solution involves adding explicit null checks and improving the error handling mechanism.  This ensures that the application gracefully handles cases where the nested field is missing.