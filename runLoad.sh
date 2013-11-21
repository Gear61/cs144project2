#!/bin/bash

# Run the drop.sql batch file to drop existing tables
# Inside the drop.sql, you should check whether the table exists. Drop them ONLY if they exists.
mysql --user=cs144 < drop.sql

# Run the create.sql batch file to create the database and tables
mysql --user=cs144 < create.sql

# Compile and run the parser to generate the appropriate load files
ant
ant run-all

# If the Java code does not handle duplicate removal, do this now
sort < User.csv > TempUser.csv
uniq < TempUser.csv > User.csv

sort < Category.csv > TempCat.csv
uniq < TempCat.csv > Category.csv

# Run the load.sql batch file to load the data
mysql --user=cs144 < load.sql

# Remove all temporary files
rm *.csv
