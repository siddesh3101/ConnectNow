const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./user/auth");
const cors = require("cors");


const PORT = process.env.PORT | 3001; 
const app = express();

app.use(express.json());
app.use(cors());


app.use(authRouter);

const DB = "mongodb+srv://siddushetty30:Ik7rqAAoNdZLtIVL@cluster0.8flbiys.mongodb.net/?retryWrites=true&w=majority";
mongoose.connect(DB).then(()=>{
console.log('connected');
}).catch((err)=>{
console.log(err);
});


app.listen(PORT,"0.0.0.0",()=>{
    console.log('connected at 3001');
})