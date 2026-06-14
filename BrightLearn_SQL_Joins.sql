-- Databricks notebook source
----Question 1---
---Show every user who has a subscription. Match users to subscriptions.-----
 SELECT
        `user_name`, `subscription_id`, `start_date`, A.`user_id`
FROM brightlearn_sql_joins_.default.users AS A
INNER JOIN brightlearn_sql_joins_.default.subscriptions AS B
on A.`user_id` = B.`user_id`;

--Question 2--
--Show every subscription with its matching plan name and monthly price--
SELECT
        `subscription_id`,`User_id`, A.`plan_name`, A.`monthly_price`, A.`plan_id`
FROM brightlearn_sql_joins_.default.plans AS A
INNER JOIN brightlearn_sql_joins_.default.subscriptions AS B
ON A.`plan_id`= B.`plan_id`;

--Quesion3 --
--Show every viewing session that has a matching show. Include the show title and genre.--
SELECT 
        `session_id`, `user_id`, `show_title`, genre, `watch_minutes`, A.`show_id`
FROM brightlearn_sql_joins_.default.shows AS A
INNER JOIN brightlearn_sql_joins_.default.viewing_sessions AS B
ON A.`show_id`= B.`show_id`;

--Qustion 4--Show every viewing session with the user who watched it. Only show sessions with a matching user--
SELECT 
        `user_name`, country, `session_id`,`show_id`,`watch_minutes`, A. `user_id`
FROM brightlearn_sql_joins_.default.users AS A
INNER JOIN brightlearn_sql_joins_.default.viewing_sessions AS B
ON A.`user_id`= B.`user_id`;

--the above table(Question 4) did not return the selected cloums as per the SELECT Statement????----

--Question 5- Show users along with their subscriptions, the plan name, and the price. Use only users who have both a subscription and a valid plan----
SELECT `user_name`,country,`plan_name`, `monthly_price`, `start_date`,A.`user_id`
FROM brightlearn_sql_joins_.default.users AS A
INNER JOIN brightlearn_sql_joins_.default.subscriptions AS B
ON A.`user_id`= B.`user_id`
INNER JOIN brightlearn_sql_joins_.default.plans AS C
ON C.`plan_id`= B.`plan_id`;


