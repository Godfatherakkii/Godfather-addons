FROM Godfatherakkii/Godfather_Userbot:slim-buster

#clonning repo 

RUN git clone https://github.com/Godfatherakkii/Godfather-addons.git /root/GODBOT

#working directory 
WORKDIR /root/GODBOT

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/GODBOT/bin:$PATH"

CMD ["python3","-m","GODBOT"]
