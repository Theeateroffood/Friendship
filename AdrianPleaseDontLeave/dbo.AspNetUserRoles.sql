﻿CREATE TABLE [dbo].[AspNetUserRoles] (
    [UserId]            NVARCHAR (128) NOT NULL,
    [RoleId]            NVARCHAR (128) NOT NULL,
    [AspNetUserRolesId] INT            NOT NULL,
    CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY ([AspNetUserRolesId] ASC),
    CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UserId]
    ON [dbo].[AspNetUserRoles]([UserId] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RoleId]
    ON [dbo].[AspNetUserRoles]([RoleId] ASC);
