const functions = require('firebase-functions');
const fetch = require('node-fetch');

exports.getReviews = functions.https.onRequest(async (req, res) => {
  const apiKey = 'AIzaSyDtLFeS4uf2FNy40aN-dJGgB3gnxYMzmAw';
  const placeId = req.query.placeId;
  const url = `https://maps.googleapis.com/maps/api/place/details/json?place_id=${placeId}&fields=reviews&key=${apiKey}`;

  try {
    const response = await fetch(url);
    const data = await response.json();
    res.status(200).send(data);
  } catch (error) {
    res.status(500).send({ error: error.message });
  }
});
