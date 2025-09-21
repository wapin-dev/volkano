class Volcano {
  final String id;
  final String name;
  final String location;
  final String country;
  final String description;
  final String imageUrl;
  final double rating;
  final int reviewCount;
  final String elevation;
  final String lastEruption;
  final String type;
  final bool isActive;
  final List<String> nearbyAttractions;

  const Volcano({
    required this.id,
    required this.name,
    required this.location,
    required this.country,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.reviewCount,
    required this.elevation,
    required this.lastEruption,
    required this.type,
    required this.isActive,
    this.nearbyAttractions = const [],
  });

  factory Volcano.fromJson(Map<String, dynamic> json) {
    return Volcano(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      location: json['location'] ?? '',
      country: json['country'] ?? '',
      description: json['description'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      rating: (json['rating'] ?? 0.0).toDouble(),
      reviewCount: json['reviewCount'] ?? 0,
      elevation: json['elevation'] ?? '',
      lastEruption: json['lastEruption'] ?? '',
      type: json['type'] ?? '',
      isActive: json['isActive'] ?? false,
      nearbyAttractions: List<String>.from(json['nearbyAttractions'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'country': country,
      'description': description,
      'imageUrl': imageUrl,
      'rating': rating,
      'reviewCount': reviewCount,
      'elevation': elevation,
      'lastEruption': lastEruption,
      'type': type,
      'isActive': isActive,
      'nearbyAttractions': nearbyAttractions,
    };
  }
}
