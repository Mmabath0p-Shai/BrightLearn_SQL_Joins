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
        `subscription_id`,`User_id`, `plan_name`, `monthly_price`, A.`plan_id`
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

--QU E S T I ON  0 5--Show users along with their subscriptions, the plan name, and the price. Use only users who have both a subscription and a valid plan--





