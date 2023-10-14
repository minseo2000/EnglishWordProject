import pymysql
import openpyxl
import data_loader

HOST = ''
USER = ''
PASSWORD = ''

def connect_to_database():
    host = '127.0.0.1'
    user = 'root'
    password = '1693'

    connection = pymysql.connect(
        host=host,
        user=user,
        password=password
    )
    return connection

def connect_to_english_database():
    host = '127.0.0.1'
    user = 'root'
    password = '1693'

    connection = pymysql.connect(
        host=host,
        user=user,
        password=password,
        database = 'english_word'
    )
    return connection

def makeEnglishWordDatabase():

    try:
        connection = connect_to_database()
        cursor = connection.cursor()

        sql = '''
            create database if not exists english_word  
        '''

        cursor.execute(sql)

        print('english_word 데이터베이스가 정상적으로 생생되었습니다.')
    except pymysql.Error as e:
        print('에러 발생:', e)
    finally:
        cursor.close()
        connection.close()

def makeEnglishWordTable():
    try:
        connection = connect_to_english_database()
        cursor = connection.cursor()

        sql = '''
            create table if not exists english_word_table(
                id int primary key auto_increment,
                english varchar(255) not null,
                korea varchar(255) not null
            );  
        '''

        cursor.execute(sql)

        print('english_word 테이블이 정상적으로 생생되었습니다.')
    except pymysql.Error as e:
        print('에러 발생:', e)
    finally:
        cursor.close()
        connection.close()

def makeEnglishSpeakTable():
    try:
        connection = connect_to_english_database()
        cursor = connection.cursor()

        sql = '''
            create table if not exists english_speak_table(
                id int primary key auto_increment,
                english varchar(255) not null,
                korea varchar(255) not null
            );  
        '''

        cursor.execute(sql)

        print('english_speak 테이블이 정상적으로 생생되었습니다.')
    except pymysql.Error as e:
        print('에러 발생:', e)
    finally:
        cursor.close()
        connection.close()

def makeEnglishTipTable():
    try:
        connection = connect_to_english_database()
        cursor = connection.cursor()

        sql = '''
            create table if not exists english_tip_table(
                id int primary key auto_increment,
                tip varchar(255) not null,
                description varchar(255) not null
            );  
        '''

        cursor.execute(sql)

        print('english_tip 테이블이 정상적으로 생생되었습니다.')
    except pymysql.Error as e:
        print('에러 발생:', e)
    finally:
        cursor.close()
        connection.close()

def makeWrongWordTable():
    try:
        connection = connect_to_english_database()
        cursor = connection.cursor()

        sql = '''
            create table if not exists english_wrong_table(
                id int primary key auto_increment,
                english varchar(255) not null,
                korea varchar(255) not null
            );  
        '''

        cursor.execute(sql)

        print('english_wrong 테이블이 정상적으로 생생되었습니다.')
    except pymysql.Error as e:
        print('에러 발생:', e)
    finally:
        cursor.close()
        connection.close()

def showTables():
    try:
        connection = connect_to_english_database()
        cursor = connection.cursor()

        sql = '''
            show tables;
        '''

        cursor.execute(sql)
        tables = cursor.fetchall()
        print('테이블 내용은 조회 완료')
        print(tables)
    except pymysql.Error as e:
        print('에러 발생:', e)
    finally:
        cursor.close()
        connection.close()


def insertWord():
    word_list = data_loader.read_excel('./word.xlsx')
    print('입력 할 데이터 리스트')
    print(word_list)
    try:
        connection = connect_to_english_database()
        cursor = connection.cursor()

        for i in word_list:
            sql = '''
                insert into english_word_table(english, korea) values(%s, %s)
            '''
            cursor.execute(sql, i)

        connection.commit()

        print('word table에 데이터 추가 완료!')
    except pymysql.Error as e:
        print('에러 발생:', e)
    finally:
        cursor.close()
        connection.close()

def insertSpeakWord():
    word_list = data_loader.read_excel('./sentence.xlsx')
    print('입력 할 데이터 리스트')
    print(word_list)
    try:
        connection = connect_to_english_database()
        cursor = connection.cursor()

        for i in word_list:
            sql = '''
                insert into english_speak_table(english, korea) values(%s, %s)
            '''
            cursor.execute(sql, i)

        connection.commit()

        print('word speak table에 데이터 추가 완료!')
    except pymysql.Error as e:
        print('에러 발생:', e)
    finally:
        cursor.close()
        connection.close()

def insertTipWord():
    word_list = data_loader.read_excel('./tip.xlsx')
    print('입력 할 데이터 리스트')
    print(word_list)
    try:
        connection = connect_to_english_database()
        cursor = connection.cursor()

        for i in word_list:
            sql = '''
                insert into english_tip_table(tip, description) values(%s, %s)
            '''
            cursor.execute(sql, i)

        connection.commit()

        print('english tip table에 데이터 추가 완료!')
    except pymysql.Error as e:
        print('에러 발생:', e)
    finally:
        cursor.close()
        connection.close()

if __name__ == "__main__":

    insertWord()
    insertSpeakWord()
    insertTipWord()

