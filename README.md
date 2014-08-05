grailsCollectionsDebugApp
=========================
Minimal Application for debugging Nodes collection not being persisted to the Container in the join table: NODE_CONTAINERS

http://stackoverflow.com/questions/24870689/hasmany-save-not-working-on-grails-2-4-2-upgrade/25130218?noredirect=1#comment39135012_25130218

1. go to http://localhost:8080/ttiDebugApp/container/create
2. Fill in all fields
3. Show view displays all fields except the Nodes
4. Go to http://localhost:8080/ttiDebugApp/dbconsole   w/ jdbc:h2:mem:devDb  AND username: sa  password: 
5. select * from NODE_CONTAINERS   -> shows no rows
