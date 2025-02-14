# Χρησιμοποιούμε το Python 3.12 ως βάση
FROM python:3.12

# Ορίζουμε τον working directory μέσα στο container
WORKDIR /app

# Αντιγράφουμε όλα τα αρχεία στο container
COPY . /app

# Εγκαθιστούμε τις εξαρτήσεις
RUN pip install --no-cache-dir flask

# Ορίζουμε το port που θα τρέχει η εφαρμογή
EXPOSE 5000

# Τρέχουμε το Flask App
CMD ["python", "app.py"]
