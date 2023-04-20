
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/09/2022 22:31:30
-- Generated from EDMX file: C:\Users\gbaka\dev\ModelFirst.Playground\ModelFirstSample\Model1.edmx
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

IF OBJECT_ID(N'[dbo].[FK_ArtistOscar]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Oscars] DROP CONSTRAINT [FK_ArtistOscar];
GO
IF OBJECT_ID(N'[dbo].[FK_DirectorOscar]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Oscars] DROP CONSTRAINT [FK_DirectorOscar];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Artists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Artists];
GO
IF OBJECT_ID(N'[dbo].[Oscars]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Oscars];
GO
IF OBJECT_ID(N'[dbo].[Directors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Directors];
GO

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
    [Nomination] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Directors'
CREATE TABLE [dbo].[Directors] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ActorToOscarSet'
CREATE TABLE [dbo].[ActorToOscarSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ActorId] int  NOT NULL,
    [Oscar_Id] int  NOT NULL
);
GO

-- Creating table 'DirectorToOscarSet'
CREATE TABLE [dbo].[DirectorToOscarSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DirectorId] int  NOT NULL,
    [Oscar_Id] int  NOT NULL
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

-- Creating primary key on [Id] in table 'ActorToOscarSet'
ALTER TABLE [dbo].[ActorToOscarSet]
ADD CONSTRAINT [PK_ActorToOscarSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DirectorToOscarSet'
ALTER TABLE [dbo].[DirectorToOscarSet]
ADD CONSTRAINT [PK_DirectorToOscarSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ActorId] in table 'ActorToOscarSet'
ALTER TABLE [dbo].[ActorToOscarSet]
ADD CONSTRAINT [FK_ActorActorToOscar]
    FOREIGN KEY ([ActorId])
    REFERENCES [dbo].[Artists]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActorActorToOscar'
CREATE INDEX [IX_FK_ActorActorToOscar]
ON [dbo].[ActorToOscarSet]
    ([ActorId]);
GO

-- Creating foreign key on [DirectorId] in table 'DirectorToOscarSet'
ALTER TABLE [dbo].[DirectorToOscarSet]
ADD CONSTRAINT [FK_DirectorDirectoToOscar]
    FOREIGN KEY ([DirectorId])
    REFERENCES [dbo].[Directors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DirectorDirectoToOscar'
CREATE INDEX [IX_FK_DirectorDirectoToOscar]
ON [dbo].[DirectorToOscarSet]
    ([DirectorId]);
GO

-- Creating foreign key on [Oscar_Id] in table 'ActorToOscarSet'
ALTER TABLE [dbo].[ActorToOscarSet]
ADD CONSTRAINT [FK_ActorToOscarOscar]
    FOREIGN KEY ([Oscar_Id])
    REFERENCES [dbo].[Oscars]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActorToOscarOscar'
CREATE INDEX [IX_FK_ActorToOscarOscar]
ON [dbo].[ActorToOscarSet]
    ([Oscar_Id]);
GO

-- Creating foreign key on [Oscar_Id] in table 'DirectorToOscarSet'
ALTER TABLE [dbo].[DirectorToOscarSet]
ADD CONSTRAINT [FK_DirectorToOscarOscar]
    FOREIGN KEY ([Oscar_Id])
    REFERENCES [dbo].[Oscars]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DirectorToOscarOscar'
CREATE INDEX [IX_FK_DirectorToOscarOscar]
ON [dbo].[DirectorToOscarSet]
    ([Oscar_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------