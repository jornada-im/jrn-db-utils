import psycopg2 as pg


def connect(jsonpath):
    """ 
    Connect to a database. 
    The connection info in jsonpath should be stored in dict form like this:
    
        {
        "host"      : "hostname",
        "database"  : "databasename",
        "user"      : "username",
        "password"  : "password"
        }
    """
    import json

    with open(jsonpath) as f: 
        data = f.read()

    conninfo = json.loads(data)
    conn = pg.connect(**conninfo)
    
    return conn
