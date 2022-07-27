# PostgreSQL and ERD for a Movie Theatre

I created an Entity Relationship Diagram (ERD) and used PostgreSQL to create a database for a fake movie theatre. 

## ERD Thought Process

I have five different tables (Customer, Movie, Ticket, Concession, and Theatre Number). Here's how I understand the relationship between each:

Movies - Tickets - one to many.

* One movie can have several different tickets
* A single ticket can't get you into multiple movies. 

Movies - Theatre number - one to one.

* (In this theatre) only one movie can be in one specific room in the theatre. 

Customers - Tickets - one to one.

* Only one customer can have one ticket
* One ticket can't be shared with multiple customers.

Customers - Concessions - many to many.

* Any number of customers can have as many concessions as they'd like. 
* Many customers can enjoy the same concession. 

Tickets - Theatre number- one to many.

* One ticket can get you into one theatre, not multiple. 
* A single theatre can sell many tickets.

## Questions or Comments
Please direct any questions or comments to [Andre](mailto:aalonardo@gmail.com).
