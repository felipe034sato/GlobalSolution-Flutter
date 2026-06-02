import '../models/satellite_event.dart';

class MockEvents {
  static const List<SatelliteEvent> list = [
    SatelliteEvent(id: 1, name: 'Queimada Pantanal', type: 'QUEIMADA', severity: 9,
      region: 'Centro-Oeste', continent: 'América do Sul', estimatedImpact: 8.5,
      observationDate: '2025-08-15', satellite: 'Sentinel-2', status: 'ATIVO',
      description: 'Incêndio de grande proporção detectado no Pantanal Mato-Grossense.'),
    SatelliteEvent(id: 2, name: 'Inundação Amazônica', type: 'INUNDACAO', severity: 7,
      region: 'Norte', continent: 'América do Sul', estimatedImpact: 7.2,
      observationDate: '2025-07-20', satellite: 'Landsat-9', status: 'MONITORANDO',
      description: 'Extravasamento do Rio Amazonas registrado em múltiplos pontos.'),
    SatelliteEvent(id: 3, name: 'Seca Nordeste', type: 'SECA', severity: 8,
      region: 'Nordeste', continent: 'América do Sul', estimatedImpact: 6.8,
      observationDate: '2025-06-10', satellite: 'CBERS-4A', status: 'ATIVO',
      description: 'Índice pluviométrico abaixo de 20% da média histórica.'),
    SatelliteEvent(id: 4, name: 'Tempestade Costeira SP', type: 'TEMPESTADE', severity: 6,
      region: 'Sudeste', continent: 'América do Sul', estimatedImpact: 5.9,
      observationDate: '2025-09-03', satellite: 'GOES-16', status: 'RESOLVIDO',
      description: 'Sistema de baixa pressão dissipado após 48h.'),
    SatelliteEvent(id: 5, name: 'Elevação Nível Mar RJ', type: 'INUNDACAO', severity: 8,
      region: 'Sudeste', continent: 'América do Sul', estimatedImpact: 7.8,
      observationDate: '2025-10-01', satellite: 'Jason-3', status: 'MONITORANDO',
      description: 'Alta maré combinada com ressaca intensa afeta costa fluminense.'),
    SatelliteEvent(id: 6, name: 'Desmatamento Pará', type: 'DESMATAMENTO', severity: 7,
      region: 'Norte', continent: 'América do Sul', estimatedImpact: 6.5,
      observationDate: '2025-05-22', satellite: 'Sentinel-2', status: 'ATIVO',
      description: 'Área desmatada equivalente a 3.000 campos de futebol detectada.'),
  ];
}
