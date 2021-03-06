USE [master]
GO
/****** Object:  Database [Karavan_4453]    Script Date: 10/23/2020 6:20:16 PM ******/
CREATE DATABASE [Karavan_4453]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Karavan_4453', FILENAME = N'/var/opt/mssql/data/Karavan_4453.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Karavan_4453_log', FILENAME = N'/var/opt/mssql/data/Karavan_4453_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Karavan_4453] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Karavan_4453].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Karavan_4453] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Karavan_4453] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Karavan_4453] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Karavan_4453] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Karavan_4453] SET ARITHABORT OFF 
GO
ALTER DATABASE [Karavan_4453] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Karavan_4453] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Karavan_4453] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Karavan_4453] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Karavan_4453] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Karavan_4453] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Karavan_4453] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Karavan_4453] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Karavan_4453] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Karavan_4453] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Karavan_4453] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Karavan_4453] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Karavan_4453] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Karavan_4453] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Karavan_4453] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Karavan_4453] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Karavan_4453] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Karavan_4453] SET RECOVERY FULL 
GO
ALTER DATABASE [Karavan_4453] SET  MULTI_USER 
GO
ALTER DATABASE [Karavan_4453] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Karavan_4453] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Karavan_4453] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Karavan_4453] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Karavan_4453] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Karavan_4453', N'ON'
GO
ALTER DATABASE [Karavan_4453] SET QUERY_STORE = OFF
GO
USE [Karavan_4453]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[id_posetitel] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ime] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_posetitel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email_Grupa]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email_Grupa](
	[id_grupa] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[jazik_id_jazikm] [numeric](18, 0) NULL,
	[naziv] [nvarchar](50) NULL,
	[aktivna] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_grupa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email_Poraka]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email_Poraka](
	[id_poraka] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[grupa_id_grupa] [numeric](18, 0) NULL,
	[datum] [datetime] NULL,
	[naslov] [nvarchar](50) NULL,
	[tekst] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_poraka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galerija]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galerija](
	[id_galerija] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[preview] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_galerija] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galerija_Opis]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galerija_Opis](
	[gal_id_galerija] [numeric](18, 0) NULL,
	[jazik_id_jazikg] [numeric](18, 0) NULL,
	[naslov] [nvarchar](50) NULL,
	[opis] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galerija_Slika]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galerija_Slika](
	[id_slika] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[gal_id_galerijas] [numeric](18, 0) NULL,
	[opisslika] [nvarchar](50) NULL,
	[slika] [nvarchar](50) NULL,
	[opisslikaeng] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_slika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jazik]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jazik](
	[id_jazik] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[jazik] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_jazik] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kadministrator]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kadministrator](
	[id_admin] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[ime] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kdokument]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kdokument](
	[id_dokument] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[naslov] [nvarchar](50) NULL,
	[jazik_id_jazikd] [numeric](18, 0) NULL,
	[dokument] [nvarchar](50) NULL,
	[prikaz] [numeric](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_dokument] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Knovost]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Knovost](
	[id_novost] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[adm_id_admin] [numeric](18, 0) NULL,
	[jazik_id_jazik] [numeric](18, 0) NULL,
	[naslov] [nvarchar](50) NULL,
	[opis] [nvarchar](1500) NULL,
	[datum_od] [datetime] NULL,
	[datum_do] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_novost] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mailing]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mailing](
	[email_id_posetitel] [numeric](18, 0) NULL,
	[email_id_grupa] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Email_Grupa]  WITH CHECK ADD  CONSTRAINT [FK_Email_Grupa_Jazik] FOREIGN KEY([jazik_id_jazikm])
REFERENCES [dbo].[Jazik] ([id_jazik])
GO
ALTER TABLE [dbo].[Email_Grupa] CHECK CONSTRAINT [FK_Email_Grupa_Jazik]
GO
ALTER TABLE [dbo].[Email_Poraka]  WITH CHECK ADD  CONSTRAINT [FK_Email_Poraka_Email_Grupa] FOREIGN KEY([grupa_id_grupa])
REFERENCES [dbo].[Email_Grupa] ([id_grupa])
GO
ALTER TABLE [dbo].[Email_Poraka] CHECK CONSTRAINT [FK_Email_Poraka_Email_Grupa]
GO
ALTER TABLE [dbo].[Galerija_Opis]  WITH CHECK ADD  CONSTRAINT [FK_Galerija_Opis_Galerija] FOREIGN KEY([gal_id_galerija])
REFERENCES [dbo].[Galerija] ([id_galerija])
GO
ALTER TABLE [dbo].[Galerija_Opis] CHECK CONSTRAINT [FK_Galerija_Opis_Galerija]
GO
ALTER TABLE [dbo].[Galerija_Opis]  WITH CHECK ADD  CONSTRAINT [FK_Galerija_Opis_Jazik] FOREIGN KEY([jazik_id_jazikg])
REFERENCES [dbo].[Jazik] ([id_jazik])
GO
ALTER TABLE [dbo].[Galerija_Opis] CHECK CONSTRAINT [FK_Galerija_Opis_Jazik]
GO
ALTER TABLE [dbo].[Galerija_Slika]  WITH CHECK ADD  CONSTRAINT [FK_Galerija_Slika_Galerija] FOREIGN KEY([gal_id_galerijas])
REFERENCES [dbo].[Galerija] ([id_galerija])
GO
ALTER TABLE [dbo].[Galerija_Slika] CHECK CONSTRAINT [FK_Galerija_Slika_Galerija]
GO
ALTER TABLE [dbo].[Kdokument]  WITH CHECK ADD  CONSTRAINT [FK_Kdokument_Jazik] FOREIGN KEY([jazik_id_jazikd])
REFERENCES [dbo].[Jazik] ([id_jazik])
GO
ALTER TABLE [dbo].[Kdokument] CHECK CONSTRAINT [FK_Kdokument_Jazik]
GO
ALTER TABLE [dbo].[Knovost]  WITH CHECK ADD  CONSTRAINT [FK_Knovost_Jazik] FOREIGN KEY([jazik_id_jazik])
REFERENCES [dbo].[Jazik] ([id_jazik])
GO
ALTER TABLE [dbo].[Knovost] CHECK CONSTRAINT [FK_Knovost_Jazik]
GO
ALTER TABLE [dbo].[Knovost]  WITH CHECK ADD  CONSTRAINT [FK_Knovost_Kadministrator] FOREIGN KEY([adm_id_admin])
REFERENCES [dbo].[Kadministrator] ([id_admin])
GO
ALTER TABLE [dbo].[Knovost] CHECK CONSTRAINT [FK_Knovost_Kadministrator]
GO
ALTER TABLE [dbo].[Mailing]  WITH CHECK ADD  CONSTRAINT [FK_Mailing_Email] FOREIGN KEY([email_id_posetitel])
REFERENCES [dbo].[Email] ([id_posetitel])
GO
ALTER TABLE [dbo].[Mailing] CHECK CONSTRAINT [FK_Mailing_Email]
GO
ALTER TABLE [dbo].[Mailing]  WITH CHECK ADD  CONSTRAINT [FK_Mailing_Email_Grupa] FOREIGN KEY([email_id_grupa])
REFERENCES [dbo].[Email_Grupa] ([id_grupa])
GO
ALTER TABLE [dbo].[Mailing] CHECK CONSTRAINT [FK_Mailing_Email_Grupa]
GO
/****** Object:  StoredProcedure [dbo].[Ex1]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ex1]
	-- Add the parameters for the stored procedure here
@JazikID AS INT
AS
BEGIN
	SET NOCOUNT ON;
SELECT naslov,opis,gal_id_galerija
FROM Galerija_Opis As G
	INNER JOIN
	Jazik As J
		On G.jazik_id_jazikg = J.id_jazik
WHERE J.id_jazik = @JazikID

END
GO
/****** Object:  StoredProcedure [dbo].[Ex2]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ex2]
-- Add the parameters for the stored procedure here
@Article AS nvarchar (50)
AS
BEGIN
	SET NOCOUNT ON;


SELECT ime,naslov,id_admin
FROM Kadministrator As K
	INNER JOIN
	Knovost As Kn
		On Kn.adm_id_admin = K.id_admin
WHERE Kn.naslov = @Article


END
GO
/****** Object:  StoredProcedure [dbo].[Ex3]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ex3]
@affiliation as nvarchar(50)
AS
SELECT E.ime, COUNT(M.Email_Id_Grupa) as GroupNum
FROM Email AS E
    INNER JOIN
    Mailing AS M
    on E.id_posetitel = M.Email_Id_Posetitel
GROUP BY ime
ORDER BY GroupNum
GO
/****** Object:  StoredProcedure [dbo].[Ex4]    Script Date: 10/23/2020 6:20:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Ex4]
AS
SELECT e.naslov, e.tekst
FROM Email_Poraka AS E
    INNER JOIN
    Email_Grupa AS G
        on E.Grupa_Id_Grupa = g.id_grupa
WHERE G.aktivna = 1
GO
USE [master]
GO
ALTER DATABASE [Karavan_4453] SET  READ_WRITE 
GO
