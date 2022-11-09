
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/09/2022 20:57:48
-- Generated from EDMX file: C:\Users\gbaka\dev\ModelFirstSample\ModelFirstSample\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [modeltest];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Artists'
CREATE TABLE [dbo].[Artists] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Oscars'
CREATE TABLE [dbo].[Oscars] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nomination] nvarchar(max)  NOT NULL,
    [ArtistId] int  NOT NULL,
    [DirectorId] int  NOT NULL
);
GO

-- Creating table 'Directors'
CREATE TABLE [dbo].[Directors] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Artists'
ALTER TABLE [dbo].[Artists]
ADD CONSTRAINT [PK_Artists]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Oscars'
ALTER TABLE [dbo].[Oscars]
ADD CONSTRAINT [PK_Oscars]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Directors'
ALTER TABLE [dbo].[Directors]
ADD CONSTRAINT [PK_Directors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ArtistId] in table 'Oscars'
ALTER TABLE [dbo].[Oscars]
ADD CONSTRAINT [FK_ArtistOscar]
    FOREIGN KEY ([ArtistId])
    REFERENCES [dbo].[Artists]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ArtistOscar'
CREATE INDEX [IX_FK_ArtistOscar]
ON [dbo].[Oscars]
    ([ArtistId]);
GO

-- Creating foreign key on [DirectorId] in table 'Oscars'
ALTER TABLE [dbo].[Oscars]
ADD CONSTRAINT [FK_DirectorOscar]
    FOREIGN KEY ([DirectorId])
    REFERENCES [dbo].[Directors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DirectorOscar'
CREATE INDEX [IX_FK_DirectorOscar]
ON [dbo].[Oscars]
    ([DirectorId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------