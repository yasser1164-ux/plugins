part of google_maps_flutter;

class Poi {
  final String placeId;
  final String name;
  final LatLng position;

  const Poi({
    required this.placeId,
    required this.name,
    required this.position,
  });

  factory Poi.fromRaw(Map<String, Object> raw) {
    final pos = (raw['position'] as Map);
    return Poi(
      placeId: (raw['placeId'] as String?) ?? '',
      name: (raw['name'] as String?) ?? '',
      position: LatLng(
        (pos['lat'] as num).toDouble(),
        (pos['lng'] as num).toDouble(),
      ),
    );
  }
}
