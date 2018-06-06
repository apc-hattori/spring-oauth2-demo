# Spring OAuth2 Demo

1. Copy environment variables file.
```
cp .env.example .env
```
2. Create a new OAuth application on GigHub.
	1. Visit https://github.com/settings/developers
	2. Press `New OAuth App`.
	3. Input like this.
		- Application name: (App Name)
		- Homepage URL: http://localhost:8080
		- Application description: (Empty)
		- Authorization callback URL: http://localhost:8080/login
3. Update OAuth2 settings in `.env` file.
```
OAUTH2_CLIENT_ID=(Client ID)
OAUTH2_CLIENT_SECRET=(Client Secret)
```
4. Pull and build Docker images.
```
docker-compose pull
docker-compose build
```
5. Build a jar file and start docker-compose.
```
./mvnw package
docker-compose up -d
```
6. Wait a few minutes.
7. Open http://localhost:8080 in your browser
