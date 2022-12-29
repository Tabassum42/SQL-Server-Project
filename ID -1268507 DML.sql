---DML---
USE privatetutors
GO
DECLARE @newid INT
EXEC InstLocations 'MIRPUR', @newid OUTPUT
EXEC InstLocations 'DHANMONDI', @newid OUTPUT
EXEC InstLocations 'GULSHAN', @newid OUTPUT
EXEC InstLocations 'BANANI', @newid OUTPUT
EXEC InstLocations 'TAJGAO', @newid OUTPUT
EXEC InstLocations 'UTTARA', @newid OUTPUT
EXEC InstLocations 'RAMPURA', @newid OUTPUT
SELECT @newid
GO
GO
EXEC UpdateLocation 7,'MALIBAG'
GO 
EXEC deleteLocation 7
GO
EXEC InstClassLevel 'A-LEVEL', 1 
EXEC InstClassLevel  'HSC', 2
EXEC InstClassLevel  'SSC',3
EXEC InstClassLevel  'O-LEVEL', 4
GO
EXEC UpdateClassLevel 4,'JSC'
GO
EXEC deleteClassLevel 4
GO
DECLARE @newid INT
EXEC InstTutor 'Shizan Rehman', '01850054848', '01775004848', 'rehman@gmail.com' ,1, @newid OUTPUT
EXEC InstTutor 'Naser Babul', '01711386445', NULL, 'nasar@gmail.com', 2, @newid OUTPUT
EXEC InstTutor 'Jamal', '01985522221', '01778521211', NULL, 3, @newid OUTPUT
EXEC InstTutor 'Abul', '01785655522', '01854556582', NULL, 4, 4
SELECT @newid
GO
---Update procedure---
EXEC UpdatetTutor 4,'NIROB', 01795582271, NULL,NULL,4
GO
---Delete procedure---
EXEC DeleteTutor 4
GO
EXEC Insttutorlocations 1,1
EXEC Insttutorlocations 2,2
EXEC Insttutorlocations 3,3
EXEC Insttutorlocations 4,1
EXEC Insttutorlocations 3,4
GO
EXEC Updatetutorlocations 3, 2
GO
---Delete procedure---
EXEC deleteTutorLocations 4
---Insert procedure--- 
GO
EXEC InstSubjects 101, 'Mathematics'
EXEC InstSubjects 102, 'Physics'
EXEC InstSubjects 103, 'Chemistry'
EXEC InstSubjects 155, 'ENGLISH'
GO
EXEC UpdateSubjects 155,'ENGLISH-2'
GO
EXEC deleteSubjects 155
GO
EXEC InstTutorSubjects 1,101
EXEC InstTutorSubjects 2,102
EXEC InstTutorSubjects 3,103
EXEC InstTutorSubjects 4,103
GO
EXEC UpdateTutorSubjects 4,102
GO
EXEC deleteTutorSubjects 4
GO
EXEC InstSubjectLimits 101,3
EXEC InstSubjectLimits 102,2
EXEC InstSubjectLimits 103,2
EXEC InstSubjectLimits 121,1
GO
EXEC UpdareSubjectLimits 101, 1
GO
EXEC deleteSubjectLimits 121
GO
---Trigger[dbo].[Functiontutor]---
EXEC InstTutorSubjects 2,101
EXEC InstTutorSubjects 3,101
EXEC InstTutorSubjects 2,102
---Udf---
SELECT [dbo].[Functiontutor]('Sharif Ahmed')
GO
SELECT * FROM fnTutor()
---View---
SELECT * FROM vtutors 
GO