import random

# Definice písmen, čísel a speciálních znaků
mp = "abcdefghijklmnopqrstuvwxyz"
vp = mp.upper()
cc = "123456789"
sz = ".?!-/"
delka = 10

# Spojení všeho dohromady
spojeni = mp + vp + cc + sz
heslo_list = random.sample(spojeni,delka)
heslo = "".join(heslo_list)
print (heslo)
print ("========")

if heslo.count(".") > 0 :
   pass
elif heslo.count("?") > 0 :
    pass
elif heslo.count("!") > 0 :
    pass
elif heslo.count("-") > 0 :
    pass
elif heslo.count("/") > 0 :
    pass
else:
    print ("Vygenerované heslo neobsahuje žádný speciální znak!!!")
    

#for znak in heslo:
#   if(znak in cc):
#        print ("Cislice")
#    if (znak in mp):
#        print ("Malé písmeno")
#    if (znak in vp):
#        print ("Velké písmeno")
#    if (znak in sz):
#        print ("Speciální znak")



