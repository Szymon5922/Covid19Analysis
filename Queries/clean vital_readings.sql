BEGIN TRANSACTION;

BEGIN TRY
	ALTER TABLE Vital_readings
	DROP COLUMN ID;

	DROP INDEX ix_Vital_readings_index ON vital_readings;

	ALTER TABLE vital_readings
	ALTER COLUMN [index] bigint NOT NULL;

	EXEC sp_rename 'Vital_readings.index',  'ID', 'COLUMN';

	ALTER TABLE Vital_readings
	ADD CONSTRAINT PK_vital_readings PRIMARY KEY (ID);

	COMMIT TRANSACTION;
END TRY

BEGIN CATCH
	ROLLBACK TRANSACTION;
END CATCH;