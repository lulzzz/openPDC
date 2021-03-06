INSERT INTO Node(Name, CompanyID, Description, Settings, MenuType, MenuData, Master, LoadOrder, Enabled) 
	VALUES('Default', NULL, 'Default node', 'RemoteStatusServerConnectionString={server=localhost:8500;integratedSecurity=true};dataPublisherPort=6165', 'File', 'Menu.xml', 1, 0, 1);

UPDATE Node SET ID='e7a5235d-cb6f-4864-a96e-a8686f36e599' WHERE Name='Default';

INSERT INTO Historian(NodeID, Acronym, Name, AssemblyName, TypeName, ConnectionString, IsLocal, Description, LoadOrder, Enabled) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 'PPA', 'Primary Phasor Archive', 'HistorianAdapters.dll', 'HistorianAdapters.LocalOutputAdapter', '', 1, 'Primary Phasor Archive', 0, 1);
INSERT INTO Device(NodeID, Acronym, Name, IsConcentrator, CompanyID, HistorianID, AccessID, VendorDeviceID, ProtocolID, Longitude, Latitude, InterconnectionID, ConnectionString, MeasuredLines, LoadOrder, Enabled) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 'SHELBY', 'Shelby', 0, 30, 1, 2, 2, 3, -89.8038, 35.3871, 1, 'transportProtocol=File; file=Sample1344.PmuCapture; useHighResolutionInputTimer=True', 3, 0, 1);

INSERT INTO Phasor(DeviceID, Label, Type, Phase, SourceIndex) VALUES(1, '500 kV Bus 1', 'V', '+', 1);
INSERT INTO Phasor(DeviceID, Label, Type, Phase, SourceIndex) VALUES(1, '500 kV Bus 2', 'V', '+', 2);
INSERT INTO Phasor(DeviceID, Label, Type, Phase, SourceIndex) VALUES(1, 'Cordova', 'I', '+', 3);
INSERT INTO Phasor(DeviceID, Label, Type, Phase, SourceIndex) VALUES(1, 'Dell', 'I', '+', 4);
INSERT INTO Phasor(DeviceID, Label, Type, Phase, SourceIndex) VALUES(1, 'Lagoon Creek', 'I', '+', 5);

INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY:ABBS', 8, NULL, 'SHELBY-SF', 'Shelby ABB-521 Status Flags', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY:ABBF', 5, NULL, 'SHELBY-FQ', 'Shelby ABB-521 Frequency', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY:ABBD1', 9, NULL, 'SHELBY-DV1', 'Shelby ABB-521 Digital Value 1', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY:ABBDF', 6, NULL, 'SHELBY-DF', 'Shelby ABB-521 Frequency Delta (dF/dt)', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY-BUS1:ABBV', 3, 1, 'SHELBY-PM1', 'Shelby ABB-521 500 kV Bus 1 Positive Sequence Voltage Magnitude', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY-BUS1:ABBVH', 4, 1, 'SHELBY-PA1', 'Shelby ABB-521 500 kV Bus 1 Positive Sequence Voltage Phase Angle', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY-BUS2:ABBV', 3, 2, 'SHELBY-PM2', 'Shelby ABB-521 500 kV Bus 2 Positive Sequence Voltage Magnitude', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY-BUS2:ABBVH', 4, 2, 'SHELBY-PA2', 'Shelby ABB-521 500 kV Bus 2 Positive Sequence Voltage Phase Angle', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY-CORD:ABBI', 1, 3, 'SHELBY-PM3', 'Shelby ABB-521 Cordova Positive Sequence Current Magnitude', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY-CORD:ABBIH', 2, 3, 'SHELBY-PA3', 'Shelby ABB-521 Cordova Positive Sequence Current Phase Angle', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY-DELL:ABBI', 1, 4, 'SHELBY-PM4', 'Shelby ABB-521 Dell Positive Sequence Current Magnitude', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY-DELL:ABBIH', 2, 4, 'SHELBY-PA4', 'Shelby ABB-521 Dell Positive Sequence Current Phase Angle', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY-LAGO:ABBI', 1, 5, 'SHELBY-PM5', 'Shelby ABB-521 Lagoon Creek Positive Sequence Current Magnitude', 1);
INSERT INTO Measurement(HistorianID, DeviceID, PointTag, SignalTypeID, PhasorSourceIndex, SignalReference, Description, Enabled) VALUES(1, 1, 'TVA_SHELBY-LAGO:ABBIH', 2, 5, 'SHELBY-PA5', 'Shelby ABB-521 Lagoon Creek Positive Sequence Current Phase Angle', 1);

-- Use common signal ID's for sample data
UPDATE Measurement SET SignalID='7aaf0a8f-3a4f-4c43-ab43-ed9d1e64a255' WHERE PointTag='TVA_SHELBY:ABBS';
UPDATE Measurement SET SignalID='93673c68-d59d-4926-b7e9-e7678f9f66b4' WHERE PointTag='TVA_SHELBY:ABBF';
UPDATE Measurement SET SignalID='65ac9cf6-ae33-4ece-91b6-bb79343855d5' WHERE PointTag='TVA_SHELBY:ABBD1';
UPDATE Measurement SET SignalID='3647f729-d0ed-4f79-85ad-dae2149cd432' WHERE PointTag='TVA_SHELBY:ABBDF';
UPDATE Measurement SET SignalID='069c5e29-f78a-46f6-9dff-c92cb4f69371' WHERE PointTag='TVA_SHELBY-BUS1:ABBV';
UPDATE Measurement SET SignalID='25355a7b-2a9d-4ef2-99ba-4dd791461379' WHERE PointTag='TVA_SHELBY-BUS1:ABBVH';
UPDATE Measurement SET SignalID='ee130f0f-8c94-414f-b081-9551ffb73753' WHERE PointTag='TVA_SHELBY-BUS2:ABBV';
UPDATE Measurement SET SignalID='96cb33be-f7e4-4dfe-a20a-50976aa507fd' WHERE PointTag='TVA_SHELBY-BUS2:ABBVH';
UPDATE Measurement SET SignalID='34172112-0565-4ad7-b314-f0876d978751' WHERE PointTag='TVA_SHELBY-CORD:ABBI';
UPDATE Measurement SET SignalID='70e72607-dbbc-458b-9c66-5fd32b447a03' WHERE PointTag='TVA_SHELBY-CORD:ABBIH';
UPDATE Measurement SET SignalID='28bbb1fc-3434-48d3-87a8-bf5024c089d5' WHERE PointTag='TVA_SHELBY-DELL:ABBI';
UPDATE Measurement SET SignalID='c635e906-8bfb-486d-901e-46c8e07afdc3' WHERE PointTag='TVA_SHELBY-DELL:ABBIH';
UPDATE Measurement SET SignalID='ed6def67-54c4-4e74-af95-c95fa6915fbc' WHERE PointTag='TVA_SHELBY-LAGO:ABBI';
UPDATE Measurement SET SignalID='bcd7aa41-32f1-4d3c-96d5-9e1da2c9469e' WHERE PointTag='TVA_SHELBY-LAGO:ABBIH';

INSERT INTO OutputStream(NodeID, Acronym, Name, Type, ConnectionString, DataChannel, CommandChannel, IDCode, AutoPublishConfigFrame, AutoStartDataChannel, NominalFrequency, FramesPerSecond, LagTime, LeadTime, UseLocalClockAsRealTime, AllowSortsByArrival, LoadOrder, Enabled) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 'TESTSTREAM', 'Test Stream', 0, '', 'Port=-1;Clients=localhost:8800', 'Port=8900', 235, 0, 1, 60, 30, 0.001, 2, 0, 1, 0, 1);

INSERT INTO OutputStreamDevice(NodeID, AdapterID, IDCode, Acronym, BpaAcronym, Name, LoadOrder, Enabled) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 2, 'SHELBY', 'SHEL', 'Shelby', 0, 1);

INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 1, 'SHELBY-SF');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 2, 'SHELBY-FQ');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 3, 'SHELBY-DV1');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 4, 'SHELBY-DF');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 5, 'SHELBY-PM1');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 6, 'SHELBY-PA1');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 7, 'SHELBY-PM2');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 8, 'SHELBY-PA2');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 9, 'SHELBY-PM3');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 10, 'SHELBY-PA3');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 11, 'SHELBY-PM4');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 12, 'SHELBY-PA4');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 13, 'SHELBY-PM5');
INSERT INTO OutputStreamMeasurement(NodeID, AdapterID, HistorianID, PointID, SignalReference) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 1, 14, 'SHELBY-PA5');

INSERT INTO OutputStreamDevicePhasor(NodeID, OutputStreamDeviceID, Label, Type, Phase, LoadOrder) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, '500 kV Bus 1', 'V', '+', 0);
INSERT INTO OutputStreamDevicePhasor(NodeID, OutputStreamDeviceID, Label, Type, Phase, LoadOrder) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, '500 kV Bus 2', 'V', '+', 1);
INSERT INTO OutputStreamDevicePhasor(NodeID, OutputStreamDeviceID, Label, Type, Phase, LoadOrder) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 'Cordova', 'I', '+', 2);
INSERT INTO OutputStreamDevicePhasor(NodeID, OutputStreamDeviceID, Label, Type, Phase, LoadOrder) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 'Dell', 'I', '+', 3);
INSERT INTO OutputStreamDevicePhasor(NodeID, OutputStreamDeviceID, Label, Type, Phase, LoadOrder) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 'Lagoon Creek', 'I', '+', 4);

INSERT INTO OutputStreamDeviceDigital(NodeID, OutputStreamDeviceID, Label, LoadOrder) VALUES('e7a5235d-cb6f-4864-a96e-a8686f36e599', 1, 'Digital1', 0);

INSERT INTO ApplicationRole (Name, Description, NodeID) VALUES ('Administrator', 'Administrator Role', 'e7a5235d-cb6f-4864-a96e-a8686f36e599');
INSERT INTO ApplicationRole (Name, Description, NodeID) VALUES ('Editor', 'Editor Role', 'e7a5235d-cb6f-4864-a96e-a8686f36e599');
INSERT INTO ApplicationRole (Name, Description, NodeID) VALUES ('Viewer', 'Viewer Role', 'e7a5235d-cb6f-4864-a96e-a8686f36e599');
