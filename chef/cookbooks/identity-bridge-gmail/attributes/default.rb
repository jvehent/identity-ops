default["browserid-bridge-gmail"]["secret"] = "DB3kkcihabPd7RT7oq2xjc7Nvfa15isuPPVHsRdUCqjGx5WWXziux95zDrIpk0KlHYN36ShGyf6dOawq7YCSntflep9PyjRDdvGPUYq4eckNL1EtlXEIkfH5l4g4NptB"
default["browserid-bridge-gmail"]["browserid_server"] = "https://login.example.com/"

# Note these is an example key pair that will be overwritten by your actual keypair
default["browserid-bridge-gmail"]["secretkey"] = "{\"algorithm\":\"RS\",\"n\":\"25403083476471354072970196767610738339893897616254800890844808803176651690385852113112531735719179840809924636239929183923258741670222012324669433050051821622806906683257477272878032788749040011529714597667384385571461405593544109226232087779501456376538254224198736550330366744055822846438162234239396685343436339188790674839865214419692558293052321984440219705477170098306934342483896279717730848587070170903448216399820853264658015963091191730836728573099847001935814474834440172445474864298550303188520606782885666104854861370041845638892297495164528429185100528230521050813980012543460442743110312217270184317677\",\"e\":\"65537\",\"d\":\"1903574209270348350586029820189150189774004473708398724002301845253834268451179024482287003587544321501099224691003436566323201860665888010230123223656934189688339696987617237394205090644163380939353775564101571898949402060971590405572818149825772498972784327861208099221392970078858446356376012517351681061385771970497033875190828070613632303752470320944792801978703237370709057513703584314341481542428509913917638651118841810326576494010277811409777212039242543923198439046672666793515698271766997143219975334459057109786885452692364836290835341304892267054924661293784995732761289215728036356068176468382719694753\"}"
default["browserid-bridge-gmail"]["publickey"] = "{\"algorithm\":\"RS\",\"n\":\"25403083476471354072970196767610738339893897616254800890844808803176651690385852113112531735719179840809924636239929183923258741670222012324669433050051821622806906683257477272878032788749040011529714597667384385571461405593544109226232087779501456376538254224198736550330366744055822846438162234239396685343436339188790674839865214419692558293052321984440219705477170098306934342483896279717730848587070170903448216399820853264658015963091191730836728573099847001935814474834440172445474864298550303188520606782885666104854861370041845638892297495164528429185100528230521050813980012543460442743110312217270184317677\",\"e\":\"65537\"}"

# Setting these to false bypasses the proxy
# default["proxy"]["host"] = "proxy.example.com"
# default["proxy"]["port"] = 3128
default["proxy"]["host"] = false
default["proxy"]["port"] = false

default["browserid-bridge-gmail"]["rpms"]["browserid-bridge-gmail"] = 'browserid-bridge-gmail-master.54e85c5-1.el6.x86_64.rpm'
default["browserid-bridge-gmail"]["rpms"]["nodejs"] = 'nodejs-0.8.24-1.el6.x86_64.rpm'
