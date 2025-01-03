# Directus Custom
Directus with Custom extension that will allow you to create a custom API.

## The Idea
When you're using the free version of Directus, they're packaging it using Docker Image as default.

The problem is:
- You're can't run Directus in most shared hosting providers.
- You're hard to create or test a custom extension.
- You're limited, you can't create a boilerplate for your project  
and you will always redesign your new project with fresh/empty directus collections.

The purpose of this project is to make you easier to develop your project with Directus.
Just code like the way you did to other NodeJS apps.

## About Directus
[Directus](https://directus.io/) is an open-source headless CMS that provides a powerful and flexible interface for managing your content and databases. It allows you to create, customize, and manage your content models and data with ease, making it a great choice for building content-driven applications - supercharged with APIs.

## Requirement
- NodeJS 18+
- MySQL 8

## Usage

**1. Setup Database**  
You have to setup database MySQL 8.  
Then import the `database/default_db.sql` to your MySQL.

**2. Create `.env`**  
You can just copy the `.env-sample` to `.env`  
then, edit the `.env`, take a look at database configuration in there.

**3. Give executable permission**  
Go to the source code directory, then  
```bash
sudo chmod +x build.sh
```

then, run this project  
```bash
npm install
npm run dev
```

**DONE**, now open your browser to [http://localhost:8055](http://localhost:8055).

email: admin@example.com
password: d3m0d3m0

**For more information**
- Server is running on http://localhost:8055
- api on :  http://localhost:8055/api


## Can I change the database ?
Absolutely you can, just edit your `.env`, make sure change the database connection.

then now import the database structure:

**1. Fresh Database**
```bash
npx directus database install
```

**2. Migrate to latest version**
```bash
npx directus database migrate:latest
```

**3. Fresh Latest Database Version**
Make sure you have the latest Directus version.
```bash
npx directus bootstrap
```

## Extension Development

This project includes the tools and structure for developing extensions for Directus.
1. **Develop Your Extension**:
Add your custom code and logic to your extension directory. You can use the provided examples as a reference.
2. **Test Your Extension**:
Run "npm run dev" it will build, move and start project with your extension.

Follow Official Documentation Here [Directus Bundle Extension](https://docs.directus.io/extensions/bundles.html)

## Deployment
There are two ways to deploy this project:

**1. Using NodeJS**  
Treat this project as just another Node.js project and follow standard deployment procedures. No special actions are needed.
Simply update your database configuration accordingly in the .env file.

VPS with a minimum of 2 GB of RAM should be sufficient to run both MySQL and the Node.js project for moderately heavy traffic.

**2. Using Docker**  
This project included `Dockerfile` and `docker-compose.yml`.  
Simply run this command in current directory.
```bash
docker compose up -d
```

## Credits
This project is inspired by the idea of [directus-project-with-extensions-quickstart](https://github.com/yohita/directus-project-with-extensions-quickstart).

## Disclaimer
You're using the original version of Directus. I don't modify any single code from Directus.
