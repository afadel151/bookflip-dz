import 'package:freezed_annotation/freezed_annotation.dart';
// Note: You will need to install 'json_annotation' if you want JSON support.
// import 'package:json_annotation/json_annotation.dart'; 

// The files below will be automatically generated when you run the build runner.
part 'book.freezed.dart';
part 'book.g.dart';

/// A data model representing a Book, leveraging the 'freezed' package
/// for immutability and boilerplate generation.
@freezed
class Book with _$Book {
  // Private constructor to ensure type safety and immutability
  const Book._();
  
  // The primary factory constructor defines the fields of the immutable class.
  const factory Book({
    required String title,
    required String author,
    required String isbn, // ISBN is often a required, unique identifier
    
    // Using @Default for optional fields provides default values.
    @Default(0) int publicationYear,
    
    // Nullable fields are defined with the '?' operator.
    String? genre,
    
    // List fields for complex data.
    @Default(<String>[]) List<String> subjects,

    
    // Using JsonKey to potentially rename a field during serialization (optional)
    @JsonKey(name: 'is_in_stock')
    @Default(true) bool isAvailable,
  }) = _Book;

  /// Factory method to create a [Book] instance from a JSON map.
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}