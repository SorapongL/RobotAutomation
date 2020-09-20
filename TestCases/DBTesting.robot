***Settings***
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup       Connect To Database         pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database

***Variables***
${DBName}    mydb
${DBUser}    root
${DBPass}    root
${DBHost}    127.0.0.1
${DBPort}    3306 

***Test Cases***
# Create person table
#     ${output} = Exececute SQL String  Create table person(id integer,first_name varchar(20),Last_name varchar(20));
#     log to console ${output}
#     Should Be Equal as String    ${output}    None

# Inserting Data in person Table
#     #Single Record
#     #${output} = Exececute SQL String  Insert into person values(101,"John","candy");
#     #Multiple Record
#     ${output} = Exececute SQL Script  ./TestData/mydb_person_insertData.sql
#     log to console ${output}
#     Should Be Equal as String    ${output}    None

Check David Record present in Person Table 
    Check if exists in database  select id from mydb.person where first_name="David";

Check Jio Record Not present in Person Table
    Check if not exists in database  select id from mydb.person where first_name="Jio";

Check Person Table exists in mydb database
    table must exist person

Verify Row Count is Zero
    row Count is 0  select * from mydb.person where first_name = "xyz";
    
Verify Row Count is Equal to Some value
    row Count is Equal to x  select * from mydb.person where first_name = "David";      1

Verify Row Count is Greater than Some value
    row Count is Greater than x  select * from mydb.person where first_name = "David";    0

Verify Row Count is less than Some value
    roe Count is less than x  select * from mydb.person where first_name = "David";      5

Update Record in person table
    ${output} = Exececute SQL String  Update mydb.person set first_name = "Jio" where id=104;
    log to console  ${output}
    Should Be Equal as String     ${output}    None

Retrieve Record from Person Table
    @{queryResults}  =   query     select * from mydb.person;
    log to console   many   @{queryResults}

Delete Record from person table
    ${output} =  Exececute SQL String      Delete from mydb.person;
    Should be Equal as Strings   ${output}   None


