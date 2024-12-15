ID=c(1,2,3,4)
emp.name=c("Man","Rag","Sha","Din")
num.emp=4
emp.list=list(ID,emp.name,num.emp)
print(emp.list)
# accessing components by name
emp.list=list("ID"=ID,
              "Names"=emp.name,
              "TotalStaff"=num.emp)
print(emp.list$Names)
print(emp.list$ID)
#manipulation
emp.list["TotalStaff"]=5
emp.list[[2]][5]="Nir"
emp.list[[1]][5]=5
print(emp.list)
# concatenation
emp.ages=list("ages"=
              c(23,48,64,30,32))
emp.list=c(emp.list, emp.ages)
print(emp.list)