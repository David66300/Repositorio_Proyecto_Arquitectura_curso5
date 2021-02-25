#data frame
Proyecto = as.data.frame(Projecto_DATA)
View(Proyecto)


#chile
filter1_Chile = filter(Proyecto, Country == "Chile")
filter(Proyecto, Country !="Chile")
View(filter1)

ggplot(data=filter1_Chile, aes(Car_type, Color_vehiculo, color=Car_Model)) + geom_point()


#mexico

filter2_mexico = filter(Proyecto, Country == "Mexico")
ggplot(data=filter2_mexico, aes(City, Car_type, color=Car_Model)) + geom_bar(stat="identity", position="dodge")
ggplot(data=filter2_mexico, aes(City, Car_type, color=Car_Model)) + geom_point()


#group by removiendo ciudad de mexico

filter3_mexico_city = filter(filter2_mexico, City != "Ciudad de Mexico")

Group_CarType_mexico = group_by(filter3_mexico_city, Car_type, City)

data_Agrupada_MX = summarise(Group_CarType_mexico,
                           CantidadCartype_Country = n())

Ordenar_mexico_city = arrange(data_Agrupada_MX, City)
View(Ordenar_mexico_city)

ggplot(data = Ordenar_mexico_city, aes(Car_type, CantidadCartype_Country, color=City)) + geom_bar(stat="identity", position="dodge")

#Group By 2 Ciudad de Mexico

filter4_mexico_city = filter(filter2_mexico, City == "Ciudad de Mexico")

Group_CarType_Ciudaddemexico = group_by(filter4_mexico_city, Car_type, City)

data_Agrupada_MX_2 = summarise(Group_CarType_Ciudaddemexico,
                             Cantidad_Cartype_CiudadMex = n())

Ordenar_ciudad_de_Mex = arrange(data_Agrupada_MX_2, Cantidad_Cartype_CiudadMex)
View(Ordenar_ciudad_de_Mex)

ggplot(data = Ordenar_ciudad_de_Mex, aes(Car_type, Cantidad_Cartype_CiudadMex, color=City)) + geom_bar(stat="identity", position="dodge")


#group by 3 toyota

filter5_Toyota = filter(filter2_mexico, Car_type == "Toyota")

Group_CarType_Toyota = group_by(filter5_Toyota, Car_type, City)

data_Agrupada_MX_3 = summarise(Group_CarType_Toyota,
                               Cantidad_Cartype_Mex = n())

Ordenar_Toyota = arrange(data_Agrupada_MX_3, Cantidad_Cartype_Mex)
View(Ordenar_ciudad_de_Mex)

ggplot(data = Ordenar_Toyota, aes(City, Cantidad_Cartype_Mex, color=Car_type)) + geom_bar(stat="identity", position="dodge")


distinct()
select ()
distinct ()

