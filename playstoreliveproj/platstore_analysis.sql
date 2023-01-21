SELECT app, rating FROM app_data where Rating> 4.8;

SELECT app, Installs, Reviews FROM app_data where Rating> 4.8;

SELECT app, Category, Reviews FROM app_data where Reviews=(SELECT max(Reviews) FROM app_data);

SELECT SUM(price*installs) FROM app_data;

SELECT category, SUM(Installs) FROM app_data GROUP BY category ORDER BY SUM(Installs) desc;

SELECT Genres, SUM(Installs) FROM app_data GROUP BY Genres ORDER BY SUM(Installs) desc;

SELECT Genres, count(app) FROM app_data GROUP BY Genres ORDER BY COUNT(app) desc;

SELECT DISTINCT app, Installs FROM app_data WHERE Category = 'Game'  ORDER BY Installs desc;

SELECT DISTINCT app FROM app_data WHERE `Android Ver` = '4.0.3 and UP';

SELECT DISTINCT COUNT(app), Type FROM app_data GROUP BY Type;

SELECT app FROM app_data WHERE category  = 'Dating' AND Reviews = (SELECT max(Reviews) FROM app_data WHERE Category = 'Dating');

SELECT Sentiment, COUNT(Sentiment)  FROM reviews_data WHERE app = '10 best foods for you' GROUP BY Sentiment;

SELECT Translated_Review  FROM reviews_data WHERE app = 'ASUS SuperNote' AND Sentiment_Polarity = 1 AND Sentiment_Subjectivity = 1;

SELECT Translated_Review  FROM reviews_data WHERE app = 'Abs Training-Burn belly fat' AND Sentiment = 'Neutral';

SELECT Translated_Review, Sentiment_Polarity, Sentiment_Subjectivity  FROM reviews_data WHERE app = 'Adobe Acrobat Reader' AND Sentiment = 'Negative';
