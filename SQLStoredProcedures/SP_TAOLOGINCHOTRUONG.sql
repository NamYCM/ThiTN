USE [THITN]
GO

/****** Object:  StoredProcedure [dbo].[SP_TAOLOGINCHOTRUONG]    Script Date: 09/10/2021 4:29:04 CH ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[SP_TAOLOGINCHOTRUONG]
  @LGNAME VARCHAR(50),
  @PASS VARCHAR(50),
  @TeacherID VARCHAR(50),
  @LastName nvarchar(40),
	@FirstName nvarchar(10),
	@Address nvarchar(40),
	@DepartmentID nchar(8)
AS
  DECLARE @RET INT
  EXEC @RET= SP_ADDLOGIN @LGNAME, @PASS,'THITN'
  IF (@RET =1)  -- LOGIN NAME BI TRUNGF
     RETURN 1
 
  EXEC @RET= SP_GRANTDBACCESS @LGNAME, @TeacherID
  IF (@RET =1)  -- USER  NAME BI TRUNG
  BEGIN
       EXEC SP_DROPLOGIN @LGNAME
       RETURN 2
  END
  EXEC sp_addrolemember 'TRUONG', @TeacherID
  

	EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
	EXEC sp_addsrvrolemember @LGNAME, 'ProcessAdmin'
	DECLARE @ReturnTaoLogin int
	EXEC @ReturnTaoLogin = LINK1.THITN.DBO.SP_TAOLOGIN @LGNAME, @PASS, @TeacherID, 'TRUONG', @LastName, @FirstName, @Address, @DepartmentID
	IF @ReturnTaoLogin != 0
	BEGIN
		--EXEC LINK1.THITN.DBO.Xoa_Login @LGNAME, @PASS
		EXEC Xoa_Login @LGNAME, @PASS
		return 3
	END
RETURN 0  -- THANH CONG


GO

