# References

https://github.com/liquibase/liquibase-gradle-plugin

https://github.com/stevesaliman/liquibase-workshop

https://github.com/salerno-rafael/liquibase-sandbox

https://dzone.com/articles/managing-your-database-with-liquibase-and-gradle

`gradle wrapper`

#Liquibase Sandbox
- IDs cannot be repeated, otherwise they will not run
- Scripts should be smalls
- Should be added script Rollback whenever possible
- Must be added new scripts on the changelog.xml
- Everything that was executed is registered on table DATABASECHANGELOG
- Documentation http://www.liquibase.org/documentation/index.html
- To execute:
	* <b>gradle task dev update</b>
	* <b>gradle task qa update</b>
	* <b>gradle task prod update</b>	
