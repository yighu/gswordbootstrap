import java.util.Random  
def selectEvoke(){

def txt=["psa 16:8","psa 27:4", "psa 27:9-10","psa 40:16-19","psa 63:1-3","psa 84:5-7","psa 103:1-2", "psa 139:7-10","isa 57:15","matt 11:28-30","john 4:23", "eph 1:17-19","eph 3:16-20"]
def max= txt.size()
def rand = new Random()  
def idx=rand.nextInt(max)-1
def chosen="gen 1"
txt.eachWithIndex{v,id->
if (id==idx)chosen=v
}
println "first="+txt[0]
println "last="+txt[max-1]
chosen
}
println selectEvoke()

