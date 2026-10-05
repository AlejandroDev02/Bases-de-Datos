/*DATA TYPES*/

create table test(

/*TEXT TYPES*/

/*a field designated space gets pre-loaded on memory*/
/*sufix n before a data type allows unicode insertion at the cost of less space*/

Nombre nvarchar(5), /*any numeric value, sizeable*/
/*Test nvarchar() -- "unlimited" reserved space on disk, around 512MB*/
Fixed nchar(5), /*fixed size data, constants*/
Descr ntext, /*greater designated size, around 2Million characters, paragraphs*/

/*MATH TYPES*/

edad tinyint, /*stores numeric values btween 0 to 255*/
cantidad smallint, /*between -320000 to 32000+*/
/*budget Bigint*/ /*unnecesarily oversized, nobody using ts lol*/

/*DECIMAL*/
altura decimal(4,4), /*1st arg: number of integers, 2nd arg: number of decimals*/ /*ROUNDS UP OR DOWN*/

/*SPECIAL MISC*/

/*Monetary*/
/*budget money -- thought in USD, unnecesarily oversized*/

/*TIMEZONES*/

/*data set format allows us to set up any mdy combination for data types*/

/*tiempo datetime -- stores data values between 01/01/1753 to 31/12/9999+*/
/*modern smalldatetime -- stores date values between 01/01/1900 to 06/07/2079*/

/*DEFAULT VALUES*/

);