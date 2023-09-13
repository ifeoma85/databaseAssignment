// To create collection
db.createCollection("items");
db.createCollection("order");
db.createCollection("users");
db.createCollection("staff");
db.createCollection("customers");
db.createCollection("category");

// To insert items
db.items.insertOne({
"name": "white shirt",
"item category": "wears",
"quantity": 3,
"size": "large",
"price": "#1500",
"date produced": "2012-6-20"
})

db.orders.insertOne({
    "name": "white shirt",
    "quantity": 3,
    "product id": 89479,
    "status": "fairly used",
    "date of order": 2023-9-10,
    "user id": 60,
    "delivery date": 2023-10-10
})

db.customers.insertOne({
    "name": "Otavie Ellah",
    "gender": "female",
    "contact": 80373933938,
    "customer id":  1,
    "location": "Abuja"
    })

    db.category.insertOne({
        "name": "white shirt",
        "description": "a sparkling blue diamond white shirt",
        "size": "large",
        "price":  "#1500",
        "location": "Abuja"
    })

    db.users.insertOne({
        "name": "Otavie Ellah",
        "gender": "female",
        "phone number": 8067884380,
        "email": "ellahbay@gmail.com",
        "password": "goodness",
        "created at":  2001-8-9,
        "status": "single"
        })

        db.staff.insertOne({
            "name": "Ifeoma Ugwu",
            "gender": "female",
            "contact": 80373933938,
                "role": "Backend Developer",
            "date of employment":  2001-8-9,
                "staff id": 29,
                "dob": 1988-7-9
            })

// to query records

db.category.find({"name": "white shirt"})

db.staff.findOne({"contact": 80373933938})

//to update record
db.staff.updateMany(
    {_id: ObjectId('64fdd98110f3dbee9d58ceb1')},
    {$set: {contact: 8067884380, role: 'Driver'}}
  );


//to delete record
db.items.deleteOne({_id: ObjectId('64fd31f0fd50a7c18ebd6414')
})