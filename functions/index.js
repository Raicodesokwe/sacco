/* eslint-disable */

const functions = require("firebase-functions");

const express = require('express')
const path = require("path");
const unirest = require("unirest");

const app = express();
require('dotenv').config()
app.use(express.static(path.join(__dirname, "public")));
app.use(express.json());
app.use(express.urlencoded({
    extended: true,
}));
app.set("views", path.join(__dirname, "views"));
app.set("view engine", "ejs");
app.get("/", (req, res) => res.render("pages/index"));


app.get("/mbesha", function (req, resp) {

    var data = req.query;


    var req = unirest('POST', 'https://sandbox.safaricom.co.ke/mpesa/b2c/v1/paymentrequest')
        .headers({
            'Content-Type': 'application/json',
            'Authorization': process.env.AUTH_KEY
        })
        .send(JSON.stringify({
            "InitiatorName": "testapi",
            "SecurityCredential": "Dvb9CfvPAvJMDtEXwo+Ft9DCcnkoagUmo1/x8KUy48Q+BDJGMu7OnhrwIZWxnw32yYb44o4QyUrrz81bSID7g4yp+sFba/rV2FqGYRcXorxfx/Vzo/Nmf1LyCrIik2g8mq60uIdQ6ldFFltXiuGy+/ZzGJBmn9pdEyBlK5e63dpWNVUByeoH6iLCu1fzl//H7LYi9YqgFj6OejcyraCWGGlGrAVsytfvHyqmfzXAq1DusojCcObR3EomSqt366OusyLdzMm0La6oiALw2NHHVa6AnW/OezZvOiP/oERiJEdh5NTxIh7qi3K6KS0RRTicAMpJAESzw11Dsxgxosc+rA==",
            "CommandID": "BusinessPayment",
            "Amount": data.Amount,
            "PartyA": 600995,
            "PartyB": data.PartyB,
            "Remarks": "Test remarks",
            "QueueTimeOutURL": "https://mydomain.com/b2c/queue",
            "ResultURL": "https://mydomain.com/b2c/result",
            "Occassion": "",
        })).end(function (res) {
            if (res.error) throw new Error(res.error);
            console.log(res.raw_body);
            resp.send(res.raw_body)
        });
});

exports.nyap = functions.https.onRequest(app);
