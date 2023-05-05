// ignore_for_file: file_names

class VinInfo {
  int? count;
  String? message;
  String? searchCriteria;
  List<VinResults>? results;

  VinInfo(
      {required this.count,
      required this.message,
      required this.searchCriteria,
      required this.results});

  VinInfo.fromJson(Map<String, dynamic> json) {
    count = json['Count'];
    message = json['Message'];
    searchCriteria = json['SearchCriteria'];
    if (json['Results'] != null) {
      results = <VinResults>[];
      json['Results'].forEach((v) {
        results!.add(VinResults.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Count'] = count;
    data['Message'] = message;
    data['SearchCriteria'] = searchCriteria;
    if (results != null) {
      data['Results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class VinResults {
  String? aBS;
  String? activeSafetySysNote;
  String? adaptiveCruiseControl;
  String? adaptiveDrivingBeam;
  String? adaptiveHeadlights;
  String? additionalErrorText;
  String? airBagLocCurtain;
  String? airBagLocFront;
  String? airBagLocKnee;
  String? airBagLocSeatCushion;
  String? airBagLocSide;
  String? autoReverseSystem;
  String? automaticPedestrianAlertingSound;
  String? axleConfiguration;
  String? axles;
  String? basePrice;
  String? batteryA;
  String? batteryATo;
  String? batteryCells;
  String? batteryInfo;
  String? batteryKWh;
  String? batteryKWhTo;
  String? batteryModules;
  String? batteryPacks;
  String? batteryType;
  String? batteryV;
  String? batteryVTo;
  String? bedLengthIN;
  String? bedType;
  String? blindSpotMon;
  String? bodyCabType;
  String? bodyClass;
  String? brakeSystemDesc;
  String? brakeSystemType;
  String? busFloorConfigType;
  String? busLength;
  String? busType;
  String? cANAACN;
  String? cIB;
  String? cashForClunkers;
  String? chargerLevel;
  String? chargerPowerKW;
  String? coolingType;
  String? curbWeightLB;
  String? customMotorcycleType;
  String? daytimeRunningLight;
  String? destinationMarket;
  String? displacementCC;
  String? displacementCI;
  String? displacementL;
  String? doors;
  String? driveType;
  String? driverAssist;
  String? dynamicBrakeSupport;
  String? eDR;
  String? eSC;
  String? eVDriveUnit;
  String? electrificationLevel;
  String? engineConfiguration;
  String? engineCycles;
  String? engineCylinders;
  String? engineHP;
  String? engineHPTo;
  String? engineKW;
  String? engineManufacturer;
  String? engineModel;
  String? entertainmentSystem;
  String? errorCode;
  String? errorText;
  String? forwardCollisionWarning;
  String? fuelInjectionType;
  String? fuelTypePrimary;
  String? fuelTypeSecondary;
  String? gCWR;
  String? gCWRTo;
  String? gVWR;
  String? gVWRTo;
  String? keylessIgnition;
  String? laneDepartureWarning;
  String? laneKeepSystem;
  String? lowerBeamHeadlampLightSource;
  String? make;
  String? manufacturer;
  String? manufacturerId;
  String? model;
  String? modelYear;
  String? motorcycleChassisType;
  String? motorcycleSuspensionType;
  String? nCSABodyType;
  String? nCSAMake;
  String? nCSAMapExcApprovedBy;
  String? nCSAMapExcApprovedOn;
  String? nCSAMappingException;
  String? nCSAModel;
  String? nCSANote;
  String? note;
  String? otherBusInfo;
  String? otherEngineInfo;
  String? otherMotorcycleInfo;
  String? otherRestraintSystemInfo;
  String? otherTrailerInfo;
  String? parkAssist;
  String? pedestrianAutomaticEmergencyBraking;
  String? plantCity;
  String? plantCompanyName;
  String? plantCountry;
  String? plantState;
  String? possibleValues;
  String? pretensioner;
  String? rearCrossTrafficAlert;
  String? rearVisibilitySystem;
  String? sAEAutomationLevel;
  String? sAEAutomationLevelTo;
  String? seatBeltsAll;
  String? seatRows;
  String? seats;
  String? semiautomaticHeadlampBeamSwitching;
  String? series;
  String? series2;
  String? steeringLocation;
  String? suggestedVIN;
  String? tPMS;

  String? topSpeedMPH;
  String? trackWidth;
  String? tractionControl;
  String? trailerBodyType;
  String? trailerLength;
  String? trailerType;
  String? transmissionSpeeds;
  String? transmissionStyle;
  String? trim;
  String? trim2;
  String? turbo;
  String? vIN;
  String? valveTrainDesign;
  String? vehicleType;
  String? wheelBaseLong;
  String? wheelBaseShort;
  String? wheelBaseType;
  String? wheelSizeFront;
  String? wheelSizeRear;
  String? wheels;
  String? windows;

  VinResults(
      {required this.aBS,
      this.activeSafetySysNote,
      required this.adaptiveCruiseControl,
      required this.adaptiveDrivingBeam,
      required this.adaptiveHeadlights,
      required this.additionalErrorText,
      required this.airBagLocCurtain,
      required this.airBagLocFront,
      required this.airBagLocKnee,
      required this.airBagLocSeatCushion,
      required this.airBagLocSide,
      required this.autoReverseSystem,
      required this.automaticPedestrianAlertingSound,
      required this.axleConfiguration,
      required this.axles,
      required this.basePrice,
      required this.batteryA,
      required this.batteryATo,
      required this.batteryCells,
      required this.batteryInfo,
      required this.batteryKWh,
      required this.batteryKWhTo,
      required this.batteryModules,
      required this.batteryPacks,
      required this.batteryType,
      required this.batteryV,
      required this.batteryVTo,
      required this.bedLengthIN,
      required this.bedType,
      required this.blindSpotMon,
      required this.bodyCabType,
      required this.bodyClass,
      required this.brakeSystemDesc,
      required this.brakeSystemType,
      required this.busFloorConfigType,
      required this.busLength,
      required this.busType,
      required this.cANAACN,
      required this.cIB,
      required this.cashForClunkers,
      required this.chargerLevel,
      required this.chargerPowerKW,
      required this.coolingType,
      required this.curbWeightLB,
      required this.customMotorcycleType,
      required this.daytimeRunningLight,
      required this.destinationMarket,
      required this.displacementCC,
      required this.displacementCI,
      required this.displacementL,
      required this.doors,
      required this.driveType,
      required this.driverAssist,
      required this.dynamicBrakeSupport,
      required this.eDR,
      required this.eSC,
      required this.eVDriveUnit,
      required this.electrificationLevel,
      required this.engineConfiguration,
      required this.engineCycles,
      required this.engineCylinders,
      required this.engineHP,
      required this.engineHPTo,
      required this.engineKW,
      required this.engineManufacturer,
      required this.engineModel,
      required this.entertainmentSystem,
      required this.errorCode,
      required this.errorText,
      required this.forwardCollisionWarning,
      required this.fuelInjectionType,
      required this.fuelTypePrimary,
      required this.fuelTypeSecondary,
      required this.gCWR,
      required this.gCWRTo,
      required this.gVWR,
      required this.gVWRTo,
      required this.keylessIgnition,
      required this.laneDepartureWarning,
      required this.laneKeepSystem,
      required this.lowerBeamHeadlampLightSource,
      required this.make,
      required this.manufacturer,
      required this.manufacturerId,
      required this.model,
      required this.modelYear,
      required this.motorcycleChassisType,
      required this.motorcycleSuspensionType,
      required this.nCSABodyType,
      required this.nCSAMake,
      required this.nCSAMapExcApprovedBy,
      required this.nCSAMapExcApprovedOn,
      required this.nCSAMappingException,
      required this.nCSAModel,
      required this.nCSANote,
      required this.note,
      required this.otherBusInfo,
      required this.otherEngineInfo,
      required this.otherMotorcycleInfo,
      required this.otherRestraintSystemInfo,
      required this.otherTrailerInfo,
      required this.parkAssist,
      required this.pedestrianAutomaticEmergencyBraking,
      required this.plantCity,
      required this.plantCompanyName,
      required this.plantCountry,
      required this.plantState,
      required this.possibleValues,
      required this.pretensioner,
      required this.rearCrossTrafficAlert,
      required this.rearVisibilitySystem,
      required this.sAEAutomationLevel,
      required this.sAEAutomationLevelTo,
      required this.seatBeltsAll,
      required this.seatRows,
      required this.seats,
      required this.semiautomaticHeadlampBeamSwitching,
      required this.series,
      required this.series2,
      required this.steeringLocation,
      required this.suggestedVIN,
      required this.tPMS,
      required this.topSpeedMPH,
      required this.trackWidth,
      required this.tractionControl,
      required this.trailerBodyType,
      required this.trailerLength,
      required this.trailerType,
      required this.transmissionSpeeds,
      required this.transmissionStyle,
      required this.trim,
      required this.trim2,
      required this.turbo,
      required this.vIN,
      required this.valveTrainDesign,
      required this.vehicleType,
      required this.wheelBaseLong,
      required this.wheelBaseShort,
      required this.wheelBaseType,
      required this.wheelSizeFront,
      required this.wheelSizeRear,
      required this.wheels,
      required this.windows});

  VinResults.fromJson(Map<String, dynamic> json) {
    aBS = json['ABS'];
    activeSafetySysNote = json['ActiveSafetySysNote'];
    adaptiveCruiseControl = json['AdaptiveCruiseControl'];
    adaptiveDrivingBeam = json['AdaptiveDrivingBeam'];
    adaptiveHeadlights = json['AdaptiveHeadlights'];
    additionalErrorText = json['AdditionalErrorText'];
    airBagLocCurtain = json['AirBagLocCurtain'];
    airBagLocFront = json['AirBagLocFront'];
    airBagLocKnee = json['AirBagLocKnee'];
    airBagLocSeatCushion = json['AirBagLocSeatCushion'];
    airBagLocSide = json['AirBagLocSide'];
    autoReverseSystem = json['AutoReverseSystem'];
    automaticPedestrianAlertingSound = json['AutomaticPedestrianAlertingSound'];
    axleConfiguration = json['AxleConfiguration'];
    axles = json['Axles'];
    basePrice = json['BasePrice'];
    batteryA = json['BatteryA'];
    batteryATo = json['BatteryA_to'];
    batteryCells = json['BatteryCells'];
    batteryInfo = json['BatteryInfo'];
    batteryKWh = json['BatteryKWh'];
    batteryKWhTo = json['BatteryKWh_to'];
    batteryModules = json['BatteryModules'];
    batteryPacks = json['BatteryPacks'];
    batteryType = json['BatteryType'];
    batteryV = json['BatteryV'];
    batteryVTo = json['BatteryV_to'];
    bedLengthIN = json['BedLengthIN'];
    bedType = json['BedType'];
    blindSpotMon = json['BlindSpotMon'];
    bodyCabType = json['BodyCabType'];
    bodyClass = json['BodyClass'];
    brakeSystemDesc = json['BrakeSystemDesc'];
    brakeSystemType = json['BrakeSystemType'];
    busFloorConfigType = json['BusFloorConfigType'];
    busLength = json['BusLength'];
    busType = json['BusType'];
    cANAACN = json['CAN_AACN'];
    cIB = json['CIB'];
    cashForClunkers = json['CashForClunkers'];
    chargerLevel = json['ChargerLevel'];
    chargerPowerKW = json['ChargerPowerKW'];
    coolingType = json['CoolingType'];
    curbWeightLB = json['CurbWeightLB'];
    customMotorcycleType = json['CustomMotorcycleType'];
    daytimeRunningLight = json['DaytimeRunningLight'];
    destinationMarket = json['DestinationMarket'];
    displacementCC = json['DisplacementCC'];
    displacementCI = json['DisplacementCI'];
    displacementL = json['DisplacementL'];
    doors = json['Doors'];
    driveType = json['DriveType'];
    driverAssist = json['DriverAssist'];
    dynamicBrakeSupport = json['DynamicBrakeSupport'];
    eDR = json['EDR'];
    eSC = json['ESC'];
    eVDriveUnit = json['EVDriveUnit'];
    electrificationLevel = json['ElectrificationLevel'];
    engineConfiguration = json['EngineConfiguration'];
    engineCycles = json['EngineCycles'];
    engineCylinders = json['EngineCylinders'];
    engineHP = json['EngineHP'];
    engineHPTo = json['EngineHP_to'];
    engineKW = json['EngineKW'];
    engineManufacturer = json['EngineManufacturer'];
    engineModel = json['EngineModel'];
    entertainmentSystem = json['EntertainmentSystem'];
    errorCode = json['ErrorCode'];
    errorText = json['ErrorText'];
    forwardCollisionWarning = json['ForwardCollisionWarning'];
    fuelInjectionType = json['FuelInjectionType'];
    fuelTypePrimary = json['FuelTypePrimary'];
    fuelTypeSecondary = json['FuelTypeSecondary'];
    gCWR = json['GCWR'];
    gCWRTo = json['GCWR_to'];
    gVWR = json['GVWR'];
    gVWRTo = json['GVWR_to'];
    keylessIgnition = json['KeylessIgnition'];
    laneDepartureWarning = json['LaneDepartureWarning'];
    laneKeepSystem = json['LaneKeepSystem'];
    lowerBeamHeadlampLightSource = json['LowerBeamHeadlampLightSource'];
    make = json['Make'];
    manufacturer = json['Manufacturer'];
    manufacturerId = json['ManufacturerId'];
    model = json['Model'];
    modelYear = json['ModelYear'];
    motorcycleChassisType = json['MotorcycleChassisType'];
    motorcycleSuspensionType = json['MotorcycleSuspensionType'];
    nCSABodyType = json['NCSABodyType'];
    nCSAMake = json['NCSAMake'];
    nCSAMapExcApprovedBy = json['NCSAMapExcApprovedBy'];
    nCSAMapExcApprovedOn = json['NCSAMapExcApprovedOn'];
    nCSAMappingException = json['NCSAMappingException'];
    nCSAModel = json['NCSAModel'];
    nCSANote = json['NCSANote'];
    note = json['Note'];
    otherBusInfo = json['OtherBusInfo'];
    otherEngineInfo = json['OtherEngineInfo'];
    otherMotorcycleInfo = json['OtherMotorcycleInfo'];
    otherRestraintSystemInfo = json['OtherRestraintSystemInfo'];
    otherTrailerInfo = json['OtherTrailerInfo'];
    parkAssist = json['ParkAssist'];
    pedestrianAutomaticEmergencyBraking =
        json['PedestrianAutomaticEmergencyBraking'];
    plantCity = json['PlantCity'];
    plantCompanyName = json['PlantCompanyName'];
    plantCountry = json['PlantCountry'];
    plantState = json['PlantState'];
    possibleValues = json['PossibleValues'];
    pretensioner = json['Pretensioner'];
    rearCrossTrafficAlert = json['RearCrossTrafficAlert'];
    rearVisibilitySystem = json['RearVisibilitySystem'];
    sAEAutomationLevel = json['SAEAutomationLevel'];
    sAEAutomationLevelTo = json['SAEAutomationLevel_to'];
    seatBeltsAll = json['SeatBeltsAll'];
    seatRows = json['SeatRows'];
    seats = json['Seats'];
    semiautomaticHeadlampBeamSwitching =
        json['SemiautomaticHeadlampBeamSwitching'];
    series = json['Series'];
    series2 = json['Series2'];
    steeringLocation = json['SteeringLocation'];
    suggestedVIN = json['SuggestedVIN'];
    tPMS = json['TPMS'];
    topSpeedMPH = json['TopSpeedMPH'];
    trackWidth = json['TrackWidth'];
    tractionControl = json['TractionControl'];
    trailerBodyType = json['TrailerBodyType'];
    trailerLength = json['TrailerLength'];
    trailerType = json['TrailerType'];
    transmissionSpeeds = json['TransmissionSpeeds'];
    transmissionStyle = json['TransmissionStyle'];
    trim = json['Trim'];
    trim2 = json['Trim2'];
    turbo = json['Turbo'];
    vIN = json['VIN'];
    valveTrainDesign = json['ValveTrainDesign'];
    vehicleType = json['VehicleType'];
    wheelBaseLong = json['WheelBaseLong'];
    wheelBaseShort = json['WheelBaseShort'];
    wheelBaseType = json['WheelBaseType'];
    wheelSizeFront = json['WheelSizeFront'];
    wheelSizeRear = json['WheelSizeRear'];
    wheels = json['Wheels'];
    windows = json['Windows'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ABS'] = aBS;
    data['ActiveSafetySysNote'] = activeSafetySysNote;
    data['AdaptiveCruiseControl'] = adaptiveCruiseControl;
    data['AdaptiveDrivingBeam'] = adaptiveDrivingBeam;
    data['AdaptiveHeadlights'] = adaptiveHeadlights;
    data['AdditionalErrorText'] = additionalErrorText;
    data['AirBagLocCurtain'] = airBagLocCurtain;
    data['AirBagLocFront'] = airBagLocFront;
    data['AirBagLocKnee'] = airBagLocKnee;
    data['AirBagLocSeatCushion'] = airBagLocSeatCushion;
    data['AirBagLocSide'] = airBagLocSide;
    data['AutoReverseSystem'] = autoReverseSystem;
    data['AutomaticPedestrianAlertingSound'] = automaticPedestrianAlertingSound;
    data['AxleConfiguration'] = axleConfiguration;
    data['Axles'] = axles;
    data['BasePrice'] = basePrice;
    data['BatteryA'] = batteryA;
    data['BatteryA_to'] = batteryATo;
    data['BatteryCells'] = batteryCells;
    data['BatteryInfo'] = batteryInfo;
    data['BatteryKWh'] = batteryKWh;
    data['BatteryKWh_to'] = batteryKWhTo;
    data['BatteryModules'] = batteryModules;
    data['BatteryPacks'] = batteryPacks;
    data['BatteryType'] = batteryType;
    data['BatteryV'] = batteryV;
    data['BatteryV_to'] = batteryVTo;
    data['BedLengthIN'] = bedLengthIN;
    data['BedType'] = bedType;
    data['BlindSpotMon'] = blindSpotMon;
    data['BodyCabType'] = bodyCabType;
    data['BodyClass'] = bodyClass;
    data['BrakeSystemDesc'] = brakeSystemDesc;
    data['BrakeSystemType'] = brakeSystemType;
    data['BusFloorConfigType'] = busFloorConfigType;
    data['BusLength'] = busLength;
    data['BusType'] = busType;
    data['CAN_AACN'] = cANAACN;
    data['CIB'] = cIB;
    data['CashForClunkers'] = cashForClunkers;
    data['ChargerLevel'] = chargerLevel;
    data['ChargerPowerKW'] = chargerPowerKW;
    data['CoolingType'] = coolingType;
    data['CurbWeightLB'] = curbWeightLB;
    data['CustomMotorcycleType'] = customMotorcycleType;
    data['DaytimeRunningLight'] = daytimeRunningLight;
    data['DestinationMarket'] = destinationMarket;
    data['DisplacementCC'] = displacementCC;
    data['DisplacementCI'] = displacementCI;
    data['DisplacementL'] = displacementL;
    data['Doors'] = doors;
    data['DriveType'] = driveType;
    data['DriverAssist'] = driverAssist;
    data['DynamicBrakeSupport'] = dynamicBrakeSupport;
    data['EDR'] = eDR;
    data['ESC'] = eSC;
    data['EVDriveUnit'] = eVDriveUnit;
    data['ElectrificationLevel'] = electrificationLevel;
    data['EngineConfiguration'] = engineConfiguration;
    data['EngineCycles'] = engineCycles;
    data['EngineCylinders'] = engineCylinders;
    data['EngineHP'] = engineHP;
    data['EngineHP_to'] = engineHPTo;
    data['EngineKW'] = engineKW;
    data['EngineManufacturer'] = engineManufacturer;
    data['EngineModel'] = engineModel;
    data['EntertainmentSystem'] = entertainmentSystem;
    data['ErrorCode'] = errorCode;

    data['ErrorText'] = errorText;
    data['ForwardCollisionWarning'] = forwardCollisionWarning;
    data['FuelInjectionType'] = fuelInjectionType;
    data['FuelTypePrimary'] = fuelTypePrimary;
    data['FuelTypeSecondary'] = fuelTypeSecondary;
    data['GCWR'] = gCWR;
    data['GCWR_to'] = gCWRTo;
    data['GVWR'] = gVWR;
    data['GVWR_to'] = gVWRTo;
    data['KeylessIgnition'] = keylessIgnition;
    data['LaneDepartureWarning'] = laneDepartureWarning;
    data['LaneKeepSystem'] = laneKeepSystem;
    data['LowerBeamHeadlampLightSource'] = lowerBeamHeadlampLightSource;
    data['Make'] = make;
    data['Manufacturer'] = manufacturer;
    data['ManufacturerId'] = manufacturerId;
    data['Model'] = model;
    data['ModelYear'] = modelYear;
    data['MotorcycleChassisType'] = motorcycleChassisType;
    data['MotorcycleSuspensionType'] = motorcycleSuspensionType;
    data['NCSABodyType'] = nCSABodyType;
    data['NCSAMake'] = nCSAMake;
    data['NCSAMapExcApprovedBy'] = nCSAMapExcApprovedBy;
    data['NCSAMapExcApprovedOn'] = nCSAMapExcApprovedOn;
    data['NCSAMappingException'] = nCSAMappingException;
    data['NCSAModel'] = nCSAModel;
    data['NCSANote'] = nCSANote;
    data['Note'] = note;
    data['OtherBusInfo'] = otherBusInfo;
    data['OtherEngineInfo'] = otherEngineInfo;
    data['OtherMotorcycleInfo'] = otherMotorcycleInfo;
    data['OtherRestraintSystemInfo'] = otherRestraintSystemInfo;
    data['OtherTrailerInfo'] = otherTrailerInfo;
    data['ParkAssist'] = parkAssist;
    data['PedestrianAutomaticEmergencyBraking'] =
        pedestrianAutomaticEmergencyBraking;
    data['PlantCity'] = plantCity;
    data['PlantCompanyName'] = plantCompanyName;
    data['PlantCountry'] = plantCountry;
    data['PlantState'] = plantState;
    data['PossibleValues'] = possibleValues;
    data['Pretensioner'] = pretensioner;
    data['RearCrossTrafficAlert'] = rearCrossTrafficAlert;
    data['RearVisibilitySystem'] = rearVisibilitySystem;
    data['SAEAutomationLevel'] = sAEAutomationLevel;
    data['SAEAutomationLevel_to'] = sAEAutomationLevelTo;
    data['SeatBeltsAll'] = seatBeltsAll;
    data['SeatRows'] = seatRows;
    data['Seats'] = seats;
    data['SemiautomaticHeadlampBeamSwitching'] =
        semiautomaticHeadlampBeamSwitching;
    data['Series'] = series;
    data['Series2'] = series2;
    data['SteeringLocation'] = steeringLocation;
    data['SuggestedVIN'] = suggestedVIN;
    data['TPMS'] = tPMS;
    data['TopSpeedMPH'] = topSpeedMPH;
    data['TrackWidth'] = trackWidth;
    data['TractionControl'] = tractionControl;
    data['TrailerBodyType'] = trailerBodyType;
    data['TrailerLength'] = trailerLength;
    data['TrailerType'] = trailerType;
    data['TransmissionSpeeds'] = transmissionSpeeds;
    data['TransmissionStyle'] = transmissionStyle;
    data['Trim'] = trim;
    data['Trim2'] = trim2;
    data['Turbo'] = turbo;
    data['VIN'] = vIN;
    data['ValveTrainDesign'] = valveTrainDesign;
    data['VehicleType'] = vehicleType;
    data['WheelBaseLong'] = wheelBaseLong;
    data['WheelBaseShort'] = wheelBaseShort;
    data['WheelBaseType'] = wheelBaseType;
    data['WheelBaseType'] = wheelBaseType;
    data['WheelSizeFront'] = wheelSizeFront;
    data['WheelSizeRear'] = wheelSizeRear;
    data['Wheels'] = wheels;
    data['Windows'] = windows;
    return data;
  }
}
