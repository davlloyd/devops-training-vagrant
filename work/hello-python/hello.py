import os
import uuid
from flask import Flask


app = Flask(__name__)
my_uuid = str(uuid.uuid1())
BLUE = "#0099FF"
GREEN = "#33CC33"

COLOR = BLUE


@app.route('/')
def hello():
<<<<<<< HEAD
    
=======

>>>>>>> 1a6919627a1f63f8710e3362b42734290a464505
    return """
    <html>
    <body bgcolor="{}">

    <center><h1><font color="pink">Hi, I'm GUID:<br/>
    {}</br>
    
    <br>
<<<<<<< HEAD
    
=======
>>>>>>> 1a6919627a1f63f8710e3362b42734290a464505

    </body>
    </html>
    """.format(COLOR,my_uuid)

if __name__ == "__main__":
	app.run(debug=True,host='0.0.0.0', port=int(os.getenv('PORT', '5000')))
