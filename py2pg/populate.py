import psycopg2 as pg
import os
import pdb
# This is a function to use the "copy_from" command to add a                   4
# csv to a database table

def copy_from_file(conn, df, table, columns=None, null=''):
    """
    Use "copy_from" command to add a pandas dataframe to a database table.
    
    conn:    database connection (with psycopg2)
    df:      source pandas dataframe (becomes a temporary csv)
    table:   destination table in the database connection
    columns: list of columns in destination table to fill with source data 
             (match n of coluns in df/csv
    null:    value in df/csv to fill with NULL in destination table

    Order is 1) save the dataframe on disk as a csv file, 
             2)load the csv file
             3) use copy_from() to copy it to the destination table

    psycopg2 docs:
    https://www.psycopg.org/docs/cursor.html#cursor.copy_from

    More here: 
    https://naysan.ca/2020/06/21/pandas-to-postgresql-using-psycopg2-copy_from/

    """
    # Save the dataframe to disk, then open file
    tmp_df = "./tmp_dataframe.csv"
    df.to_csv(tmp_df, index=False, sep=';', header=False)
    f = open(tmp_df, 'r')
    # set cursor and try COPY FROM
    cursor = conn.cursor()
    try:
        cursor.copy_from(f, table, sep=";", columns=columns, null=null)
        conn.commit()
    except (Exception, pg.DatabaseError) as error:
        # Errors will be printed out if the operation can't complete
        os.remove(tmp_df)
        print("Error: %s" % error)
        conn.rollback()
        cursor.close()
        return 1
    print("copy_from_file() done")
    # Close cursor and remove temporary csv
    cursor.close()
    os.remove(tmp_df)
