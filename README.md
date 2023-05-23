# litter-docker

The `litter` web application set up as `docker-compose` containers.

## Project setup

### Build

```
docker-compose build
```

### Run in the background

```
docker-compose up -d
```

### Shut down

```
docker-compose down
```

## Environment variables

### For the frontend (`litter.dockerfile`)

- `VUE_APP_MAX_FILE_SIZE` - maximum allowed file size in bytes, should have the same value as maximum file size allowed by the backend (defaults to `104857600` - 100 MiB)
- `VUE_APP_API_URL` - URL of the backend

### For the backend (`litter-api.dockerfile`)

- `PORT` - which port to use (defaults to `3000`)
- `BASE_PATH` - path to a directory where files should be saved (defaults to `'./uploads'`)
- `MAX_SIZE` - maximum allowed file size in bytes, should have the same value as maximum file size allowed by the frontend (defaults to `104857600` - 100 MiB)
- `CORS_ALLOWED_ORIGIN` - URL of frontend
- `RATE_LIMIT_WINDOW` - time window in which user requests are remembered (defaults to `60 * 60 * 1000` - 1 hour)
- `MAX_FILE_AMOUNT` - maximum number of files uploaded per user in the specified time window (defaults to `25`)
- `REDIS_URL` - URL of running Redis database instance
