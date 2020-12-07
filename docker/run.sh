docker run --rm -v $PWD/:/liquibase/changelog liquibase:0.1 update

#     --changeLogFile="db.changelog-1.0.xml" \
#     --username="<username>" \
#     --password="<password>" \
#     --url="jdbc:oracle:thin:@127.0.0.1:80/<schema name>" \
#     --classpath=/liquibase/lib/ojdbc8.jar \
#     --driver=oracle.jdbc.OracleDriver

# changeLogFile: dbchangelog.xml
# url: jdbc:postgresql://localhost:5432/MYDATABASE
# username: postgres
# password: password
     

# liquibase
# --driver=oracle.jdbc.OracleDriver
# --classpath=ojdbc14.jar
# --url="jdbc:oracle:thin:@<IP OR HOSTNAME>:<PORT>/<SERVICE NAME OR SID>"  
# --changeLogFile=db.changelog-1.0.xml
# --username=<USERNAME>
# --password=<PASSWORD>generateChangeLog