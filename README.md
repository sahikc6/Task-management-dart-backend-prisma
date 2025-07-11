Task Management Backend (Dart + Prisma + MySQL)

This is a full-featured Task Management REST API built with Dart, Prisma ORM, MySQL, and Shelf as the backend server framework.

Tech Stack:-

- Dart – Clean backend language with strong async support  
- Prisma ORM – Type-safe database client for Dart  
- Shelf – Lightweight HTTP server for building APIs  
- MySQL – Relational database  
- JWT – Token-based authentication  
- Crypto – SHA256 password hashing

Features:-

- User Registration & Login (with JWT)  
- Passwords hashed using SHA-256  
- Authenticated Task CRUD (Create, Read, Update, Delete)  
- Tasks associated with specific users  
- Structured error handling and clean response formatting

Setup:-

Prerequisites:-

- Dart SDK installed
- MySQL running locally or on server
- Node.js (for running Prisma CLI)
- Prisma Dart generator installed

Installation:-

1.Clone the repository:-

Run:-
   git clone https://github.com/sahikc6/Task-management-dart-backend-prisma.git
   cd Task-management-dart-backend-prisma

2.Install Dart dependencies:-

Run:-
   dart pub get

3.Configure `.env`:-

   Create a `.env` file in root:

   DATABASE_URL="mysql://username:password@localhost:3306/mydb"
   JWT_SECRET="your_jwt_secret"

4.Set up the database:-

Run:-
   npx prisma migrate dev --name init
   dart run orm generate

5.Run the server:-

Run:-
   dart run bin/backend.dart

API Endpoints:-

User:-

| Method | Endpoint    | Description       |
| ------ | ----------- | ----------------- |
| POST   | `/register` | Register new user |
| POST   | `/login`    | Login with JWT    |

Tasks:-

| Method | Endpoint               | Description             |
| ------ | ---------------------- | ----------------------- |
| GET    | `/tasks?userId=1`      | Get all tasks of a user |
| POST   | `/tasks/`              | Create a new task       |
| PUT    | `/tasks/<id>`          | Update a task           |
| DELETE | `/tasks/<id>?userId=1` | Delete a specific task  |

Authentication:-

JWT is issued at login.
Use the token as `Authorization: Bearer <token>` in headers for protected routes.

Postman Testing:-

Register: `POST /register`

json:-
  {
    "email": "user@example.com",
    "password": "secret123"
  }

Login: `POST /login`

json:-
  {
    "email": "user@example.com",
    "password": "secret123"
  }


Create Task: `POST /tasks/`

json:-
  {
    "userId": 1,
    "title": "Finish backend",
    "description": "Complete task API with auth",
    "dueDate": "2025-07-30T18:00:00",
    "isDone": false
  }

Author:-
Sahil Kule
[GitHub](https://github.com/sahikc6)

---

License:-
This project is open-source and free to use.