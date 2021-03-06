USE [OHCC_db]
GO
/****** Object:  StoredProcedure [dbo].[sp_answerQuestion]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_answerQuestion]
@questionId int,
@doctorEmail NVARCHAR(100),
@answerDetails NVARCHAR(MAX),
@ansPhoto NVARCHAR(100)
AS
BEGIN
	INSERT [dbo].[answerQuestion_tbl]
	(
	questionId,
	doctorEmail,
	answerDetails,
	ansPhoto
	)
	VALUES
	(
	@questionId,
	@doctorEmail,
	@answerDetails,
	@ansPhoto
	)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_appointment]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_appointment]
@doctorEmail NVARCHAR(100),
@patientName  NVARCHAR(50),
@appointmentDate  NVARCHAR(20),
@patientEmail  NVARCHAR(100),
@paitentPhone  NVARCHAR(50)

AS
BEGIN
	INSERT INTO appointment_tbl
        ( 
		doctorEmail,
		patientName,
        appointmentDate ,
        patientEmail,
		paitentPhone

		
        )
VALUES  (
@doctorEmail ,
@patientName ,
@AppointmentDate ,
@patientEmail ,
@paitentPhone

        )
END

GO
/****** Object:  StoredProcedure [dbo].[sp_askQuestion]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_askQuestion] 
	@userFullName NVARCHAR(50),
	@userPhoneNo NVARCHAR(15),
	@userEmail NVARCHAR(100),
	@userQuestion NVARCHAR(MAX)
AS
BEGIN Insert [dbo].[askQuestion_tbl]
(
userFullName,
userPhoneNo,
userEmail,
userQuestion

)
Values(
@userFullName,
@userPhoneNo,
@userEmail,
@userQuestion
)

	
END

GO
/****** Object:  StoredProcedure [dbo].[sp_borrowarInfotbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_borrowarInfotbl] 
	@fullName NVARCHAR(50),
	@phoneNo NVARCHAR(15),
	@serviceCategory NVARCHAR(100),
	@divission NVARCHAR(50),
	@distric NVARCHAR(50),
	@thana NVARCHAR(50),
	@addresses NVARCHAR(200),
	@email NVARCHAR(50),
	@clientPhoto Image
	
AS

BEGIN
	INSERT INTO dbo.borrowarInfotbl
	        ( 
	          fullName,
			  phoneNo,
	          serviceCategory,	          
	          divission,
			  distric,
			  thana,
			  addresses,
			   email,
			   clientPhoto
	         
	        )
	VALUES  ( 
			@fullName,
			  @phoneNo,
	          @serviceCategory,	          
	          @divission,
			  @distric,
			  @thana,
			  @addresses,
			  @email,
			  @clientPhoto
	
	        )
END




GO
/****** Object:  StoredProcedure [dbo].[sp_consulting]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_consulting]
@doctorEmail NVARCHAR(50),
	@days  NVARCHAR(50),
	@tConsult NVARCHAR(50),
	@tPrice int,
	@tStartTime NVARCHAR(10),
	@tEndTime NVARCHAR(10),
	@pConsult NVARCHAR(50),
	@pPrice int,
	@pStartTime NVARCHAR(10),
	@pEndtime NVARCHAR(10),
	@vConsult NVARCHAR(50),
	@vPrice int,
	@vStartTime NVARCHAR(10),
	@vEndtime NVARCHAR(10)
AS
BEGIN
INSERT INTO [dbo].[consulting_tbl]
	        (
			doctorEmail,
			days,
			tConsult,
			tPrice ,			
			tStartTime ,
			tEndTime ,
			pConsult ,
			pPrice,
			pStartTime ,
			pEndtime ,
			vConsult ,
			vPrice ,
			vStartTime ,
			vEndtime 
	        )
	VALUES  ( 
	@doctorEmail,
	@days,
	@tConsult,
	@tPrice ,	
	@tStartTime ,
	@tEndTime ,
	@pConsult ,
	@pPrice,
	@pStartTime ,
	@pEndtime ,
	@vConsult ,
	@vPrice ,
	@vStartTime ,
	@vEndtime 

	        )
END

GO
/****** Object:  StoredProcedure [dbo].[sp_ConsultPatient]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ConsultPatient] 
	@doctorEmail NVARCHAR(50),
@patientName NVARCHAR(50),
@phoneNo NVARCHAR(15),
@patientEmail NVARCHAR(100),
@consultType NVARCHAR(50)
AS
BEGIN
INSERT INTO consultPatient_tbl
(
doctorEmail,
patientName,
phoneNo,
patientEmail,
consultType
)
Values
(@doctorEmail,
@patientName,
@phoneNo,
@patientEmail,
@consultType
)

END

GO
/****** Object:  StoredProcedure [dbo].[sp_doctorProcess1]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_doctorProcess1] 

	@doctoFullName NVARCHAR(50),
	@doctorPhone int,	
	@doctorEmail NVARCHAR(50)
	

AS

BEGIN
	INSERT INTO dbo.doctorProcess1_tbl
	        ( 
	          doctorFullName,
			doctorPhone,
	          doctorEmail 
	   

	         
	        )
	VALUES  ( 
	@doctoFullName ,
	@doctorPhone,
	@doctorEmail 

	
	        )
END



GO
/****** Object:  StoredProcedure [dbo].[sp_DoctorProcess2]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DoctorProcess2] 
	@birthDate NVARCHAR(20),
	@nId  NVARCHAR(20),
	@category NVARCHAR(100),
	@designation NVARCHAR(30),
	@about NVARCHAR(MAX),
	@bmdcNo NVARCHAR(30),
	@country NVARCHAR(30),
	@district NVARCHAR(30),
	@cityOrVillage NVARCHAR(30),
	@DocPassword NVARCHAR(20),
	@doctorEmail NVARCHAR(50),
	@photo NVARCHAR(50)

	
AS

BEGIN
	INSERT INTO dbo.doctorProcess2_tbl
	        (birthDate,
			  nId,
			  category,	         
	          designation ,
			  bmdcNo,
	          about ,
	          country ,
	          district ,
	          cityOrVillage ,
	          DocPassword ,
	          doctorEmail ,
			  photo
	
	         
	        )
	VALUES  ( 
	@birthDate ,
	@nId,
	@category,
	@designation ,
	@about ,
	@bmdcNo,
	@country ,
	@district ,
	@cityOrVillage ,
	@DocPassword ,
	@doctorEmail ,
	@photo

	
	        )
END



GO
/****** Object:  StoredProcedure [dbo].[sp_doctorProcess3]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_doctorProcess3] 
	@doctorEmail NVARCHAR(50),
	@days  NVARCHAR(50),
	@hospitalNmae NVARCHAR(50),
	@chamberName NVARCHAR(50),
	@startTime NVARCHAR(15),
	@endTime NVARCHAR(15),
	@newVisit NVARCHAR(10),
	@oldVisit NVARCHAR(10),
	@district NVARCHAR(50),
	@subDistrict NVARCHAR(50)
	
AS

BEGIN
	INSERT INTO dbo.doctorProcess3_tbl
	        (doctorEmail,
			  days,       
	          hospitalNmae ,
			  chamberName,
	          startTime ,
	          endTime ,
	          newVisit ,
	          oldVisit ,
			  district,
			  subDistrict
	
	         
	        )
	VALUES  ( 
	@doctorEmail,
			  @days,       
	          @hospitalNmae ,
			  @chamberName,
	          @startTime ,
	          @endTime ,
	          @newVisit ,
	          @oldVisit ,
			  @district,
			  @subDistrict

	
	        )
END



GO
/****** Object:  StoredProcedure [dbo].[sp_labTest]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_labTest]
 @lab_name NVARCHAR(200),
 @test_name NVARCHAR(100),
 @district_or_city NVARCHAR(50),
 @address_or_location NVARCHAR(MAX),
 @about NVARCHAR(MAX)
AS
BEGIN
INSERT INTO dbo.lab_Test_tbl(
lab_name ,
 test_name ,
 district_or_city,
 address_or_location,
 about 
)
VALUES(
 @lab_name ,
 @test_name ,
 @district_or_city,
 @address_or_location,
 @about 
)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_packagetbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_packagetbl]
 @packageName NVARCHAR(50),
 @packageDescription NVARCHAR(200),
 @packagePrice NVARCHAR(10),
 @photo NVARCHAR(100)
AS
BEGIN
INSERT INTO dbo.packagetbl(
packageName ,
 packageDescription ,
 packagePrice,
 photo 
)
VALUES(
 @packageName ,
 @packageDescription ,
 @packagePrice,
 @photo 
)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_subLabTest]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_subLabTest]
 @test_id int,
 @sub_test_name NVARCHAR(100),
 @test_price int
AS
BEGIN
INSERT INTO dbo.lab_sub_test_tbl(
test_id ,
 sub_test_name,
 test_price

)
VALUES(
 @test_id ,
 @sub_test_name ,
 @test_price 
)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATE _DOCTORINFO]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_UPDATE _DOCTORINFO]  
	@UserId Nvarchar(60),
	@fullName NVARCHAR(50),
	@category NVARCHAR(60),
	@designation NVARCHAR(30),
	@about NVARCHAR(100),
	@hospital NVARCHAR(50),
	@country NVARCHAR(30),
	@district NVARCHAR(30),
	@cityOrVillage NVARCHAR(30),
	@email NVARCHAR(50),
	@phoneNo NVARCHAR(15)
	as
	set nocount on
BEGIN
	UPDATE tbl_doctorinfo set fullName=@fullName, category=@category,designation=@designation,about=@about,hospital=@hospital, country=@country,
	district=@district, cityOrVillage=@cityOrVillage,email=@email, phoneNo=@phoneNo where docUserId=@UserId
END



GO
/****** Object:  StoredProcedure [dbo].[tbl_doctoprInfo]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_doctoprInfo] 
	@doctorUserId NVARCHAR(30),
	@fullName NVARCHAR(50),
	@biorthDay NVARCHAR(20),  ---- wrong spelling
	@nId  NVARCHAR(20),
	@category	NVARCHAR(100),
	@designation NVARCHAR(30),
	@about NVARCHAR(100),
	@hospital NVARCHAR(50),
	@chember NVARCHAR(50),
	@country NVARCHAR(30),
	@district NVARCHAR(30),
	@cityOrVillage NVARCHAR(30),
	@DocPassword NVARCHAR(20),
	@email NVARCHAR(50),
	@phoneNo NVARCHAR(15),
	@photo Nvarchar(50)
	
AS

BEGIN
	INSERT INTO dbo.tbl_doctorInfo
	        ( docUserId ,
	          fullName ,
	          birthday ,
			  nId,
			  category,	         
	          designation ,
	          about ,
	          hospital ,
			  chember,
	          country ,
	          district ,
	          cityOrVillage ,
	          DocPassword ,
	          email ,
	          phoneNo,
			  photo 
	         
	        )
	VALUES  ( 
	@doctorUserId ,
	@fullName ,
	@biorthDay ,
	@nId,
	@category,
	@designation ,
	@about ,
	@hospital ,
	@chember,
	@country ,
	@district ,
	@cityOrVillage ,
	@DocPassword ,
	@email ,
	@phoneNo, 
	@photo
	
	        )
END



GO
/****** Object:  StoredProcedure [dbo].[wsp_aboutChairman]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wsp_aboutChairman]
@ChairmanName NVARCHAR(50),
@ChairmanDesignation NVARCHAR(50),
@ChairmanEmail NVARCHAR(200),
@ChairmanPhoto NVARCHAR(100)

AS
BEGIN
INSERT INTO tbl_aboutChairman
        ( chairmanName ,
          chairmanDesignation ,
          chairmanEmail ,
         chairmanPhoto
         
        )
VALUES  (
@ChairmanName ,
@ChairmanDesignation ,
@ChairmanEmail ,
@ChairmanPhoto  

        )
END




GO
/****** Object:  StoredProcedure [dbo].[wsp_aboutDirector]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wsp_aboutDirector]
@DirectorName NVARCHAR(50),
@DirectorDesignation NVARCHAR(50),
@DirectorEmail NVARCHAR(200),
@DirectorPhoto NVARCHAR(100)
AS
BEGIN
INSERT INTO tbl_aboutDirector
        ( directorName ,
          directorDesignation ,
          directorEmail,
		  directorPhoto         
        )
VALUES  (
@DirectorName ,
@DirectorDesignation ,
@DirectorEmail,
@DirectorPhoto  
        )
END




GO
/****** Object:  StoredProcedure [dbo].[wsp_addOrganization]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wsp_addOrganization]
@AboutOrganization NVARCHAR(Max),
@OrgPhoto NVarchar(100)


AS
BEGIN
INSERT INTO tbl_addOrganization
        (
		aboutOrganization,
		orgPhoto
         
        )
VALUES  (
@AboutOrganization, 
@OrgPhoto

        )
END




GO
/****** Object:  StoredProcedure [dbo].[wsp_admin]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wsp_admin]
@UserId NVARCHAR(60),
@FullName NVARCHAR(100),
@AdPassword NVARCHAR(40),
@Email NVARCHAR(200),
@Phone NVARCHAR(30),
@Photo NVARCHAR(100)

AS
BEGIN
INSERT INTO tbl_admin
        ( userId ,
          fullName ,
          Adpassword ,
          email ,
          phoneNo ,
          Photo
        )
VALUES  (
@UserId ,
@FullName ,
@AdPassword ,
@Email ,
@Phone , 
@Photo
        )
END




GO
/****** Object:  StoredProcedure [dbo].[wsp_appoinment]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[wsp_appoinment]
@DocUserId  NVARCHAR(30),
@PaitenUserId  NVARCHAR(30),
@AppointmentDate  NVARCHAR(20),
@DoctorName  NVARCHAR(50),
@PatientName  NVARCHAR(30),
@Place  NVARCHAR(100),
@Hospital NVARCHAR(50),
@Duration NVARCHAR(30),
@CurrentDate NVARCHAR(20),
@PatientPhoneNo NVARCHAR(15)


AS
BEGIN
INSERT INTO tbl_appointment
        ( docUserId ,
          paitenUserId ,
          appointmentDate ,
          doctorName ,
          patientName ,
          place,
		  hospital,
		  duration,
		  currentDate,
		  patientPhoneNo
		
        )
VALUES  (
@DocUserId ,
@PaitenUserId ,
@AppointmentDate ,
@DoctorName ,
@PatientName , 
@Place,
@Hospital,
@Duration,
@CurrentDate,
@PatientPhoneNo
        )
END




GO
/****** Object:  StoredProcedure [dbo].[wsp_service]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[wsp_service] 
	@category NVARCHAR(100),
	@hospital NVARCHAR(100)
	
AS

BEGIN
	INSERT INTO dbo.tbl_service
	        ( category,
	          hospitalName
	        )
	VALUES  ( 
	@category ,
	@hospital 
	
	   )
END

GO
/****** Object:  StoredProcedure [dbo].[wsp_tbl_userInfo]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wsp_tbl_userInfo]
@patientUserId NVARCHAR(30),
@fullName NVARCHAR(50),
@birthday NVARCHAR(20),
@country NVARCHAR(30),
@UserPassword  NVARCHAR(30),
@email NVARCHAR(50),
@phoneNo NVARCHAR(15)

AS
BEGIN
 INSERT INTO dbo.tbl_userInfo
         ( paitenUserId ,
           fullName ,
           birthday ,
           country ,
           UserPassword ,
           email ,
           phoneNo
         )
 VALUES  ( 
 @patientUserId,
 @fullName,
 
 @birthday,
 @country,
 @UserPassword,
 @email,
 @phoneNo
         )
		
END



GO
/****** Object:  Table [dbo].[answerQuestion_tbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[answerQuestion_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[questionId] [int] NOT NULL,
	[doctorEmail] [nvarchar](100) NOT NULL,
	[answerDetails] [nvarchar](max) NULL,
	[ansPhoto] [nvarchar](100) NULL,
 CONSTRAINT [PK_answerQuestion_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[appointment_tbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appointment_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctorEmail] [nvarchar](100) NOT NULL,
	[patientName] [nvarchar](50) NOT NULL,
	[appointmentDate] [nvarchar](50) NOT NULL,
	[patientEmail] [nvarchar](100) NOT NULL,
	[paitentPhone] [nvarchar](15) NOT NULL,
	[hospitalName] [nvarchar](max) NULL,
 CONSTRAINT [PK_appointment_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[askQuestion_tbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[askQuestion_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userFullName] [nvarchar](50) NOT NULL,
	[userPhoneNo] [nvarchar](15) NOT NULL,
	[userEmail] [nvarchar](100) NOT NULL,
	[userQuestion] [nvarchar](max) NOT NULL,
	[status] [nvarchar](20) NULL,
 CONSTRAINT [PK_askQuestion_tbl_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[borrowarInfotbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[borrowarInfotbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](50) NOT NULL,
	[phoneNo] [nvarchar](15) NOT NULL,
	[serviceCategory] [nvarchar](200) NOT NULL,
	[divission] [nvarchar](50) NOT NULL,
	[distric] [nvarchar](50) NOT NULL,
	[thana] [nvarchar](50) NOT NULL,
	[addresses] [nvarchar](200) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[approvedYN] [nvarchar](1) NOT NULL,
	[clientPhoto] [image] NULL,
 CONSTRAINT [PK_borrowarInfotbl] PRIMARY KEY CLUSTERED 
(
	[phoneNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[consulting_tbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consulting_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctorEmail] [nvarchar](50) NOT NULL,
	[days] [nvarchar](50) NULL,
	[tConsult] [nvarchar](50) NULL,
	[tPrice] [int] NULL,
	[tStartTime] [nvarchar](10) NULL,
	[tEndTime] [nvarchar](10) NULL,
	[pConsult] [nvarchar](50) NULL,
	[pPrice] [int] NULL,
	[pStartTime] [nvarchar](10) NULL,
	[pEndTime] [nvarchar](10) NULL,
	[vConsult] [nvarchar](50) NULL,
	[vPrice] [int] NULL,
	[vStartTime] [nvarchar](10) NULL,
	[vEndTime] [nvarchar](10) NULL,
 CONSTRAINT [PK_consulting_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[consultPatient_tbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[consultPatient_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctorEmail] [nvarchar](50) NOT NULL,
	[patientName] [nvarchar](50) NOT NULL,
	[phoneNo] [nvarchar](15) NOT NULL,
	[patientEmail] [nvarchar](100) NOT NULL,
	[consultType] [nvarchar](50) NOT NULL,
	[duration] [nvarchar](50) NULL,
	[doctorFee] [nvarchar](50) NULL,
	[hospitalName] [nvarchar](max) NULL,
 CONSTRAINT [PK_consultPatient_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[doctorProcess1_tbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doctorProcess1_tbl](
	[doctorFullName] [nvarchar](50) NOT NULL,
	[doctorPhone] [int] NOT NULL,
	[doctorEmail] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_doctorProcess1_tbl_1] PRIMARY KEY CLUSTERED 
(
	[doctorEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[doctorProcess2_tbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doctorProcess2_tbl](
	[birthDate] [nchar](15) NOT NULL,
	[nId] [nvarchar](20) NOT NULL,
	[category] [nvarchar](50) NOT NULL,
	[designation] [nvarchar](50) NOT NULL,
	[bmdcNo] [nvarchar](20) NOT NULL,
	[about] [nvarchar](max) NOT NULL,
	[country] [nvarchar](50) NOT NULL,
	[district] [nvarchar](50) NOT NULL,
	[cityOrVillage] [nvarchar](50) NOT NULL,
	[DocPassword] [nvarchar](50) NOT NULL,
	[doctorEmail] [nvarchar](50) NOT NULL,
	[photo] [nvarchar](50) NULL,
	[approverYN] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_doctorProcess2_tbl] PRIMARY KEY CLUSTERED 
(
	[nId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[doctorProcess3_tbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doctorProcess3_tbl](
	[doctorEmail] [nvarchar](50) NOT NULL,
	[days] [nvarchar](50) NOT NULL,
	[hospitalNmae] [nvarchar](50) NOT NULL,
	[chamberName] [nvarchar](50) NOT NULL,
	[startTime] [nvarchar](15) NOT NULL,
	[endTime] [nvarchar](15) NOT NULL,
	[newVisit] [nvarchar](10) NULL,
	[oldVisit] [nvarchar](10) NULL,
	[district] [nvarchar](50) NULL,
	[subDistrict] [nvarchar](50) NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_doctorProcess3_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Events]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[text] [nvarchar](256) NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EventScheduler]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventScheduler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[doctorEmail] [nvarchar](50) NOT NULL,
	[description] [nvarchar](256) NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NOT NULL,
 CONSTRAINT [PK_EventScheduler] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[image_tbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[photo] [image] NOT NULL,
 CONSTRAINT [PK_image_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lab_sub_test_tbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lab_sub_test_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[test_id] [int] NOT NULL,
	[sub_test_name] [nvarchar](100) NOT NULL,
	[test_price] [int] NULL,
 CONSTRAINT [PK_lab_sub_test_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lab_Test_tbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lab_Test_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[lab_name] [nvarchar](200) NOT NULL,
	[test_name] [nvarchar](100) NOT NULL,
	[district_or_city] [nvarchar](50) NOT NULL,
	[address_or_location] [nvarchar](max) NULL,
	[about] [nvarchar](max) NULL,
 CONSTRAINT [PK_lab_Test_tbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[packagetbl]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[packagetbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[packageName] [nvarchar](50) NOT NULL,
	[packageDescription] [nvarchar](200) NOT NULL,
	[packagePrice] [nvarchar](10) NOT NULL,
	[photo] [nchar](100) NULL,
 CONSTRAINT [PK_packagetbl] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_aboutChairman]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_aboutChairman](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[chairmanName] [nvarchar](50) NULL,
	[chairmanDesignation] [nvarchar](50) NULL,
	[chairmanEmail] [nvarchar](50) NULL,
	[chairmanPhoto] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_aboutChairman] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_aboutDirector]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_aboutDirector](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[directorName] [nvarchar](50) NULL,
	[directorDesignation] [nvarchar](50) NULL,
	[directorEmail] [nvarchar](50) NULL,
	[directorPhoto] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_aboutDirector] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_addOrganization]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_addOrganization](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[aboutOrganization] [nvarchar](max) NOT NULL,
	[orgPhoto] [nvarchar](100) NULL,
 CONSTRAINT [PK_tbl_addOrganization] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_admin]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_admin](
	[sl] [int] IDENTITY(1,1) NOT NULL,
	[userId] [nvarchar](20) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[Adpassword] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[phoneNo] [nvarchar](15) NULL,
	[photo] [nvarchar](200) NULL,
 CONSTRAINT [PK__tbl_admi__CB9A1CFFB3625EEA] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__tbl_admi__3214186B06CED72D] UNIQUE NONCLUSTERED 
(
	[sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_doctorInfo]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_doctorInfo](
	[sl] [int] IDENTITY(1,1) NOT NULL,
	[docUserId] [nvarchar](30) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[birthday] [nvarchar](15) NULL,
	[nId] [nvarchar](20) NULL,
	[category] [nvarchar](50) NULL,
	[designation] [nvarchar](50) NULL,
	[about] [nvarchar](200) NULL,
	[hospital] [nvarchar](50) NULL,
	[chember] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[district] [nvarchar](50) NULL,
	[cityOrVillage] [nvarchar](50) NULL,
	[DocPassword] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[phoneNo] [nvarchar](15) NULL,
	[photo] [nvarchar](50) NULL,
	[publisedYN] [nchar](1) NULL,
 CONSTRAINT [PK__tbl_doct__8879E3249C573B98] PRIMARY KEY CLUSTERED 
(
	[docUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__tbl_doct__3214186B8398EE90] UNIQUE NONCLUSTERED 
(
	[sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_service]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [nvarchar](100) NULL,
	[hospitalName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_userInfo]    Script Date: 10/3/2018 11:03:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_userInfo](
	[sl] [int] IDENTITY(1,1) NOT NULL,
	[paitenUserId] [nvarchar](20) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[gender] [nvarchar](10) NULL,
	[birthday] [nvarchar](15) NULL,
	[country] [nvarchar](50) NULL,
	[UserPassword] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[phoneNo] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[paitenUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[askQuestion_tbl] ADD  CONSTRAINT [DF_askQuestion_tbl_status]  DEFAULT ('N') FOR [status]
GO
ALTER TABLE [dbo].[borrowarInfotbl] ADD  CONSTRAINT [DF_borrowarInfotbl_approvedYN]  DEFAULT ('N') FOR [approvedYN]
GO
ALTER TABLE [dbo].[consultPatient_tbl] ADD  CONSTRAINT [DF_consultPatient_tbl_doctorFee]  DEFAULT ('UnPaid') FOR [doctorFee]
GO
ALTER TABLE [dbo].[doctorProcess2_tbl] ADD  CONSTRAINT [DF_doctorProcess2_tbl_approverYN]  DEFAULT ('Pending') FOR [approverYN]
GO
ALTER TABLE [dbo].[tbl_doctorInfo] ADD  CONSTRAINT [DF_tbl_doctorInfo_publisedYN]  DEFAULT ('N') FOR [publisedYN]
GO
ALTER TABLE [dbo].[consulting_tbl]  WITH CHECK ADD  CONSTRAINT [FK_consulting_tbl_doctorProcess1_tbl] FOREIGN KEY([doctorEmail])
REFERENCES [dbo].[doctorProcess1_tbl] ([doctorEmail])
GO
ALTER TABLE [dbo].[consulting_tbl] CHECK CONSTRAINT [FK_consulting_tbl_doctorProcess1_tbl]
GO
ALTER TABLE [dbo].[consultPatient_tbl]  WITH CHECK ADD  CONSTRAINT [FK_consultPatient_tbl_doctorProcess1_tbl] FOREIGN KEY([doctorEmail])
REFERENCES [dbo].[doctorProcess1_tbl] ([doctorEmail])
GO
ALTER TABLE [dbo].[consultPatient_tbl] CHECK CONSTRAINT [FK_consultPatient_tbl_doctorProcess1_tbl]
GO
ALTER TABLE [dbo].[doctorProcess2_tbl]  WITH CHECK ADD  CONSTRAINT [FK_doctorProcess2_tbl_doctorProcess2_tbl] FOREIGN KEY([doctorEmail])
REFERENCES [dbo].[doctorProcess1_tbl] ([doctorEmail])
GO
ALTER TABLE [dbo].[doctorProcess2_tbl] CHECK CONSTRAINT [FK_doctorProcess2_tbl_doctorProcess2_tbl]
GO
ALTER TABLE [dbo].[doctorProcess3_tbl]  WITH CHECK ADD  CONSTRAINT [FK_doctorProcess3_tbl_doctorProcess1_tbl] FOREIGN KEY([doctorEmail])
REFERENCES [dbo].[doctorProcess1_tbl] ([doctorEmail])
GO
ALTER TABLE [dbo].[doctorProcess3_tbl] CHECK CONSTRAINT [FK_doctorProcess3_tbl_doctorProcess1_tbl]
GO
