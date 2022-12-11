import psycopg2
import seaborn as sns
import matplotlib.pyplot as plt

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
#1
    cur.execute(query_1)
    category = []
    category_count = []

    for row in cur:
        category.append(row[0])
        category_count.append(row[1])
    sns.barplot(x = category , y = category_count)
    plt.show()
#2
    cur.execute(query_2)
    country = []
    cn_count = []

    for row in cur:
        country.append(row[0])
        cn_count.append(row[1])

    fig1, ax1 = plt.subplots()
    ax1.pie(cn_count, labels=country, autopct='%1.1f%%',
           shadow=True, startangle=90)
    ax1.axis('equal')
    plt.show()
#3
    cur.execute(query_3)
    channel = []
    channel_count = []

    for row in cur:
        channel.append(row[0])
        channel_count.append(row[1])
    sns.lineplot(x = channel, y = channel_count)
    plt.show()