exercise-1...

create schema Marketing

create table Marketing.DirectMarketing(DirectMarketingId int ,DirectMarketingType varchar(50));


alter table Marketing.DirectMarketing add CompanyPolicy varchar(50);
alter table Marketing.DirectMarketing add ClientId int NOT NULL;


ALTER TABLE Marketing.DirectMarketing
ADD CONSTRAINT PK_DirectMarketing PRIMARY KEY (DirectMarketingId );

ALTER TABLE Marketing.DirectMarketing
ADD CONSTRAINT FK_DirectMarketing FOREIGN KEY (ClientId) REFERENCES Clients(ClientId);


ALTER TABLE Marketing.DirectMarketing
ADD CONSTRAINT df_DirectMarketingType
DEFAULT 'Regular' FOR DirectMarketingType;

exercise-2...

insert into Marketing.DirectMarketing values ('regular','isurance policy',1);

insert into Clients values ('abc','address');

