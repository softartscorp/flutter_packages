// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart' show immutable;

import 'types.dart';

/// A pair of latitude and longitude coordinates, stored as degrees.
@immutable
class PointOfInterest {
  /// Creates a PointOfInterest.
  const PointOfInterest(this.position, this.placeId);

  /// The location of the POI.
  final LatLng position;

  /// The placeId of the POI.
  final String placeId;

  /// Initialize a LatLng from an \[lat, lng\] array.
  static PointOfInterest? fromJson(Object? json) {
    if (json == null) {
      return null;
    }
    assert(json is Map<String, dynamic> && json.length == 3);
    final Map<String, dynamic> data = json as Map<String, dynamic>;
    return PointOfInterest(LatLng.fromJson(data['position'])!, data['placeId'].toString());
  }

  @override
  String toString() => 'Marker(position: $position, placeId: $placeId)';
}
