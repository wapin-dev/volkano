import '../models/volcano.dart';

class VolcanoService {
  static List<Volcano> getAllVolcanoes() {
    return [
      Volcano(
        id: '1',
        name: 'Mount Fuji',
        location: 'Honshu Island',
        country: 'Japan',
        description: 'Japan\'s highest mountain and most iconic volcano, known for its perfect conical shape.',
        imageUrl: 'assets/images/volcano.webp',
        rating: 4.8,
        reviewCount: 2847,
        elevation: '3,776 m',
        lastEruption: '1707-1708',
        type: 'Stratovolcano',
        isActive: true,
        nearbyAttractions: ['Lake Kawaguchi', 'Chureito Pagoda', 'Hakone'],
      ),
      Volcano(
        id: '2',
        name: 'Arenal Volcano',
        location: 'Alajuela Province',
        country: 'Costa Rica',
        description: 'One of Costa Rica\'s most active volcanoes, offering spectacular lava flows and hot springs.',
        imageUrl: 'assets/images/volcano_head.webp',
        rating: 4.6,
        reviewCount: 1523,
        elevation: '1,670 m',
        lastEruption: '2010',
        type: 'Stratovolcano',
        isActive: true,
        nearbyAttractions: ['Tabacón Hot Springs', 'La Fortuna Waterfall', 'Arenal Observatory Lodge'],
      ),
      Volcano(
        id: '3',
        name: 'Mount Vesuvius',
        location: 'Campania',
        country: 'Italy',
        description: 'Famous for the catastrophic eruption in 79 AD that buried Pompeii and Herculaneum.',
        imageUrl: 'assets/images/volcano_irl.webp',
        rating: 4.4,
        reviewCount: 3421,
        elevation: '1,281 m',
        lastEruption: '1944',
        type: 'Stratovolcano',
        isActive: true,
        nearbyAttractions: ['Pompeii', 'Herculaneum', 'Naples'],
      ),
      Volcano(
        id: '4',
        name: 'Kilauea',
        location: 'Hawaii',
        country: 'United States',
        description: 'One of the world\'s most active volcanoes, creating new land through continuous lava flows.',
        imageUrl: 'assets/images/volcano.webp',
        rating: 4.7,
        reviewCount: 1876,
        elevation: '1,247 m',
        lastEruption: 'Ongoing',
        type: 'Shield Volcano',
        isActive: true,
        nearbyAttractions: ['Hawaii Volcanoes National Park', 'Thurston Lava Tube', 'Chain of Craters Road'],
      ),
      Volcano(
        id: '5',
        name: 'Mount Etna',
        location: 'Sicily',
        country: 'Italy',
        description: 'Europe\'s most active volcano and one of the most studied volcanoes in the world.',
        imageUrl: 'assets/images/volcano_head.webp',
        rating: 4.5,
        reviewCount: 2156,
        elevation: '3,357 m',
        lastEruption: '2023',
        type: 'Stratovolcano',
        isActive: true,
        nearbyAttractions: ['Catania', 'Taormina', 'Alcantara Gorge'],
      ),
      Volcano(
        id: '6',
        name: 'Machu Picchu',
        location: 'Cusco Region',
        country: 'Peru',
        description: 'Ancient Incan citadel set high in the Andes Mountains, near volcanic peaks.',
        imageUrl: 'assets/images/volcano_irl.webp',
        rating: 4.9,
        reviewCount: 4532,
        elevation: '2,430 m',
        lastEruption: 'N/A',
        type: 'Archaeological Site',
        isActive: false,
        nearbyAttractions: ['Sacred Valley', 'Huayna Picchu', 'Inca Trail'],
      ),
    ];
  }

  static List<Volcano> getPopularVolcanoes() {
    return getAllVolcanoes().where((volcano) => volcano.rating >= 4.5).toList();
  }

  static List<Volcano> getRecommendedVolcanoes() {
    return getAllVolcanoes().where((volcano) => volcano.isActive).take(4).toList();
  }

  static List<Volcano> searchVolcanoes(String query) {
    if (query.isEmpty) return getAllVolcanoes();
    
    return getAllVolcanoes().where((volcano) =>
      volcano.name.toLowerCase().contains(query.toLowerCase()) ||
      volcano.location.toLowerCase().contains(query.toLowerCase()) ||
      volcano.country.toLowerCase().contains(query.toLowerCase())
    ).toList();
  }

  static Volcano? getVolcanoById(String id) {
    try {
      return getAllVolcanoes().firstWhere((volcano) => volcano.id == id);
    } catch (e) {
      return null;
    }
  }
}
