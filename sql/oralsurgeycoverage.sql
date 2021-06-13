CREATE TABLE `insurance`.`oralsurgerycoverage` (
  `PatientID` varchar(20) DEFAULT NULL,
  `Preventative` varchar(3) DEFAULT NULL,
  `SurgeryCoverage` varchar(3) DEFAULT NULL,
  `BasicFillings` varchar(3) DEFAULT NULL,
  `D6057` varchar(3) DEFAULT NULL,
  `D6104` varchar(3) DEFAULT NULL,
  `EndoRootCanals` varchar(3) DEFAULT NULL,
  `D6056` varchar(3) DEFAULT NULL,
  `D4263` varchar(3) DEFAULT NULL,
  `Periodontics` varchar(3) DEFAULT NULL,
  `D6061` varchar(3) DEFAULT NULL,
  `D4264` varchar(3) DEFAULT NULL,
  `OralSurgeryExtractions` varchar(3) DEFAULT NULL,
  `SurgExt` varchar(3) DEFAULT NULL,
  `SimpleExt` varchar(3) DEFAULT NULL,
  `Major` varchar(3) DEFAULT NULL,
  `D6065` varchar(3) DEFAULT NULL,
  `D4266` varchar(3) DEFAULT NULL,
  `CrownsD2740` varchar(3) DEFAULT NULL,
  `D6010` varchar(3) DEFAULT NULL,
  `D7951` varchar(3) DEFAULT NULL,
  `Bridges` varchar(3) DEFAULT NULL,
  `D7311` varchar(3) DEFAULT NULL,
  `D7952` varchar(3) DEFAULT NULL,
  `Denbures` varchar(3) DEFAULT NULL,
  `FileOralSurg` varchar(200) DEFAULT NULL,
  `ImplantsD6058` varchar(3) DEFAULT NULL,
  `D1351Sealants` varchar(20) DEFAULT NULL,
  `D1351Freq` varchar(20) DEFAULT NULL,
  `D1351Age` varchar(3) DEFAULT NULL,
  `D1351ToothRestrictions` varchar(3) DEFAULT NULL,
  `D1510SpaceMint` varchar(3) DEFAULT NULL,
  `D1510Freq` varchar(20) DEFAULT NULL,
  `D1510Age` varchar(3) DEFAULT NULL,
  `D1208Flouride` varchar(3) DEFAULT NULL,
  `D1208Freq` varchar(20) DEFAULT NULL,
  `D1208Age` varchar(3) DEFAULT NULL,
  `D0150Exam` varchar(3) DEFAULT NULL,
  `D0150Freq` varchar(20) DEFAULT NULL,
  `D0150LastDos` varchar(20) DEFAULT NULL,
  `D1110Prophy` varchar(3) DEFAULT NULL,
  `D1110Freq` varchar(20) DEFAULT NULL,
  `D1110LastDos` varchar(20) DEFAULT NULL,
  `D0274BiteWings` varchar(3) DEFAULT NULL,
  `D0274Freq` varchar(3) DEFAULT NULL,
  `D0274LastDos` varchar(20) DEFAULT NULL,
  `D0330Pano` varchar(3) DEFAULT NULL,
  `D0330Freq` varchar(20) DEFAULT NULL,
  `D0330LastDos` varchar(3) DEFAULT NULL,
  `D0220PAS` varchar(3) DEFAULT NULL,
  `D0220Freq` varchar(3) DEFAULT NULL,
  `D0220LastDos` varchar(3) DEFAULT NULL,
  `Xrays` varchar(20) DEFAULT NULL,
  `D0140SDTXAllowed` varchar(3) DEFAULT NULL,
  UNIQUE KEY `idx_oralsurgerycoverage_PatientID` (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
