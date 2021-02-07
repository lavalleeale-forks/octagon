local repo = ...
assert(repo)
oczip=require("oczip")
print("Clone Github repositories in OC!")
os.execute("wget "..repo:gsub("%.git","").."/archive/master.zip")
oczip.unzip("./","master.zip")
os.execute("rm master.zip")