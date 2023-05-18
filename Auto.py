class Auto:
# do vlasností třídy Auto uložím hodnoty, kam uložím hodnoty z instance třídy
    def __init__(self,znacka,model,rok_vyroby, pocetkw):
        self.znacka = znacka
        self.model = model
        self.rok_vyroby = rok_vyroby
        self.najeto = 0
        self.pocetkw = pocetkw
# Metoda, která představí informace o autě
    def info_o_aute(self):
        print (f"Značka:{self.znacka} Model:{self.model} rok výroby {self.rok_vyroby} a počet najetých {self.najeto} km a má {self.pocetkw} kw")
# Metoda, která naučí auto jet do nějaké vzdálenosti
    def jede(self,pocetkm):
        self.najeto = self.najeto + pocetkm
        print(f"Najeto: {self.najeto}")
# Metoda která "nachipuje auto"
    def zmenkw(self,novekw):
        self.pocetkw = novekw
        print(f"Auto má nově {self.pocetkw} kw")

Audi = Auto ("Audi","A4",2006,103)
Audi.jede(550)
Audi.info_o_aute()
Audi.zmenkw(125)
Audi.info_o_aute()