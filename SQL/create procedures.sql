CREATE PROCEDURE sp_TipoCliente @command NVARCHAR(6)
AS

	SET NOCOUNT ON;
	IF(@command = 'SELECT')
	 BEGIN
		SELECT Tipo_ClienteId, Nome FROM Tipo_Cliente
	 END

GO

CREATE PROCEDURE sp_SituacaoCliente @command NVARCHAR(6)
AS

	SET NOCOUNT ON;
	IF(@command = 'SELECT')
	 BEGIN
		SELECT Situacao_ClienteId, Nome FROM Situacao_Cliente
	 END
	
GO

CREATE PROCEDURE sp_Cliente 

	@command NVARCHAR(6), 
	@clienteId INT NULL,
	@nome NVARCHAR(100) NULL,
	@DT_NASCIMENTO Date NULL,
	@tipoClienteId INT NULL,
	@EMAIL NVARCHAR(50) NULL,
	@Estado_Civil CHAR NULL,
	@situacaoClienteId INT NULL

AS

	SET NOCOUNT ON;

	IF(@command = 'INSERT')
	BEGIN
		
		INSERT INTO Cliente VALUES(@nome, @DT_NASCIMENTO , @tipoClienteId, @EMAIL, @Estado_Civil, @situacaoClienteId);

	END
	ELSE IF(@command = 'SELECT')
	BEGIN
		
		SELECT 
			C.ClienteId, 
			C.Nome, 
			C.DT_NASCIMENTO, 
			TC.Tipo_ClienteId, 
			C.EMAIL, 
			C.Estado_Civil, 
			SC.Situacao_ClienteId			
		FROM Cliente C
		INNER JOIN Tipo_Cliente TC ON C.Tipo_ClienteId = TC.Tipo_ClienteId
		INNER JOIN Situacao_Cliente SC ON C.Situacao_ClienteId = SC.Situacao_ClienteId

	END
	ELSE IF(@command = 'UPDATE')
	BEGIN

		UPDATE Cliente SET
			Nome = @nome, 
			DT_NASCIMENTO = @DT_NASCIMENTO, 
			Tipo_ClienteId = @tipoClienteId, 
			EMAIL = @EMAIL,
			Estado_Civil = @Estado_Civil, 
			Situacao_ClienteId = @situacaoClienteId

		WHERE ClienteId = @clienteId;

	END
	ELSE IF(@command = 'DELETE')
	BEGIN
		
		DELETE Cliente WHERE ClienteId = @clienteId;

	END

GO
