-- Кількість відео у кожній категорії?	
select category_name, count(title) from video 
inner join category on video.category_id=category.category_id 
group by category_name

-- Кількість відео по країні автора?
select country_name, count(title) from video 
inner join country on video.country_id=country.country_id 
group by country_name

-- Кількість відео від певного автора?
select channel_title, count(title) from video 
inner join channel on video.channel_id=channel.channel_id 
group by channel_title
