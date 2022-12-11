import psycopg2

username = 'alexeyog'
password = '111'
database = 'alexeyog_DB'
host = 'localhost'
port = '5432'

query_1 = '''
select category_name, count(title) from video 
inner join category on video.category_id=category.category_id 
group by category_name
'''

query_2 = '''
select country_name, count(title) from video 
inner join country on video.country_id=country.country_id 
group by country_name
'''

query_3 = '''
select channel_title, count(title) from video 
inner join channel on video.channel_id=channel.channel_id 
group by channel_title
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
with conn:
    cur = conn.cursor()

    print('Query 1:')
    cur.execute(query_1)
    for row in cur:
        print(row)

    print('\nQuery 2:')
    cur.execute(query_2)
    for row in cur:
        print(row)

    print('\nQuery 3:')
    cur.execute(query_3)
    for row in cur:
        print(row)
