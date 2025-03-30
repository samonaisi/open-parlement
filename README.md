# open-parlement fullstack repository

## Requirements
- Docker Compose V2

## Usage

### Clone the repository

A repository linked to [open-parlement-backend](https://github.com/samonaisi/open-parlement-backend) and [open-parlement-frontend](https://github.com/samonaisi/open-parlement-frontend) repositories, used to run both front and back locally.

Please clone the repository with the submodules first.

```bash
git clone --recurse-submodules git@github.com:samonaisi/open-parlement.git
cd open-parlement
```

If one of the submodules has changed, you can run : 

```bash
git submodule sync --recursive
```

### Create and populate your .env file

```bash
cp .env.example .env
```

### Run the stack

```bash
docker compose up
```

**Get a shell access to the backend container**
```bash
make backend-bash
```

**Setup the backend**
```bash
python manage.py migrate
python manage.py collectstatic
python manage.py compilemessages
```
