from flask import Flask, render_template
import mysql.connector

app = Flask(__name__, template_folder='templates')



@app.route('/')
def index():
    try:
        conn = mysql.connector.connect(
            host='mysql',  
            user='root',
            password='example',
            database='testdb',
            port=3306
        )
        cursor = conn.cursor()
        cursor.execute("SELECT NOW();")
        result = cursor.fetchone()
        cursor.close()
        conn.close()
        return f"Connected to MySQL! Current time: {result[0]}"
    except mysql.connector.Error as err:
        return f"Error: {err}"
    
if __name__ == "__main__":
    app.run(debug=True, host="0.0.0.0", port=5000)  # Flask will listen on port 5000

