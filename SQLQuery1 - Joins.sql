create database Shop
use Shop

-- Task 1

create table Categories(
Id int primary key identity(1,1),
Name nvarchar(50)
)

create table Products(
Id int primary key identity(1,1),
Name nvarchar(50),
Count int,
Price decimal,
CategoryId int foreign key references Categories(Id)
)

select * from Categories
select * from Products

select ca.Name as 'Category Name', p.Name as 'Product Name', p.Count,p.Price from Categories ca inner join 
Products p on ca.Id = p.CategoryId

select ca.Name as 'Category Name', p.Name as 'Product Name', p.Count,p.Price from Categories ca left join 
Products p on ca.Id = p.CategoryId

select ca.Name as 'Category Name', p.Name as 'Product Name', p.Count,p.Price from Categories ca right join 
Products p on ca.Id = p.CategoryId

select ca.Name as 'Category Name', p.Name as 'Product Name', p.Count,p.Price from Categories ca full outer join 
Products p on ca.Id = p.CategoryId

-- Task 2

create table Users(
Id int primary key identity(1,1),
Name nvarchar(50),
Surname nvarchar(50),
Age int
)

create table Roles(
Id int primary key identity(1,1),
Name nvarchar(50)
)

create table UsersRoles(
Id int primary key identity(1,1),
UserId int foreign key references Users(Id),
RoleId int foreign key references Roles(Id)
)

select * from Users
select * from UsersRoles
select * from Roles

select u.Name,u.Surname,u.Age,r.Name as 'Role Name' from Users u inner join 
UsersRoles ur on u.Id = ur.UserId inner join Roles r on ur.RoleId = r.Id

