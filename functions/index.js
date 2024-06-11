const functions = require("firebase-functions");
const fetch = require("node-fetch");
const cors = require("cors")({origin: true});


exports.getReviews = functions.https.onRequest((req, res) => {
  cors(req, res, async () => {
    const apiKey = "AIzaSyDtLFeS4uf2FNy40aN-dJGgB3gnxYMzmAw";
    const placeId = req.query.placeId;
    const url = `https://maps.googleapis.com/maps/api/place/details/json?place_id=${placeId}&fields=reviews&key=${apiKey}`;

    try {
      const response = await fetch(url);
      const data = await response.json();
      res.status(200).send(data);
    } catch (error) {
      res.status(500).send({error: error.message});
    }
  });
});
