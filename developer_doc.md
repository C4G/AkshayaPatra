## Architecture

The application was bootstraped using the JHipster framework. It uses the Spring Java framework along with PostgreSQL on the backend. On the frontend it uses Angular.

## Development

Development instructions for local development are linked in [README](./README.md).


## Deployment
The deployment uses Docker/Docker compose and is a two step process.

1. The first phase involves building the docker containers. You can do this locally by calling `./build.sh`. The sript builds and pushes the containers to Docker hub.
2. You may need to be added to the Docker Hub repo to push containers. If you are forking this project, then you'll need to replace the Docker hub repo in `build.sh` with your own Docker Image repo.
3. 
4. The next phases involves deploying the containers. Currently we're using `docker-compose` as a way to validate the production deployment. To deploy, ensure that you have the prodoction equivalent of `app.yml` as well as the enviornment variables.
5. The variables can be stored in `.env` file with the following contents
```
EMAIL_SENDING_ADDRESS=<insert>
EMAIL_SENDING_PASS=<insert>
JHIPSTER_SECURITY_AUTHENTICATION_JWT_BASE64_SECRET=<insert>
```
