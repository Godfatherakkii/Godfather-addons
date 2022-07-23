FROM Godfatherakkii/Godfather_Userbot:slim-buster

#clonning repo 

RUN git clone https://github.com/Godfatherakkii/Godfather-addons.git /root/Godbot

#working directory 
WORKDIR /root/Godbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/Godbot/bin:$PATH"

CMD ["python3","-m","Godbot"]
