# hasura-auth-db

Sample hasura database to use with https://github.com/timbophillips/hasura-auth-nodejs-server

Two options to use it:

## 1. Seed to an existing fresh Hasura server
* The /hasura folder contains the migration and metadata needed to seed a fresh new Hasura incidence (locally or in the cloud). 
* https://hasura.io/docs/latest/migrations-metadata-seeds/index/

## 2. Create a docker container with Hasura and the seed migrations applied
, or alternatively you can spin up a docker container using the 
