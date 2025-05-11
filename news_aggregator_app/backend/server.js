const express = require('express');
const axios = require('axios');
require('dotenv').config();

const app = express();
const port = process.env.PORT || 3000;

const API_KEY = process.env.NEWS_API_KEY;
const BASE_URL = 'https://newsapi.org/v2/top-headlines';

// Endpoint to fetch news
app.get('/news', async (req, res) => {
  try {
    const { category = '', query = '' } = req.query;
    const response = await axios.get(BASE_URL, {
      params: {
        apiKey: API_KEY,
        country: 'us',
        category: category,
        q: query,
      },
    });
    res.json(response.data);
  } catch (error) {
    console.error(error);
    res.status(500).send('Error fetching news');
  }
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
