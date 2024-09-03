
zumbis_1_$galoes_por_morador<-zumbis_1_$agua/zumbis_1_$moradores

zumbis_1_$zumbi<-factor(zumbis_1_$zumbi)

zumbis_1_$comida<-factor(zumbis_1_$comida)
zumbis_1_$sexo<-factor(zumbis_1_$sexo,levels = c(0,1),labels = c('masculino','feminino'))

esquisser(zumbis_1_)

ggplot(data=zumbis_1_,aes(y=galoes_por_morador,fill=zumbi))+
  geom_boxplot()


esquisser(zumbis_1_)

dados_sobreviveram<-zumbis_1_%>%filter(zumbi==0)
mean(dados_sobreviveram$galoes_por_morador)
max(dados_sobreviveram$galoes_por_morador)
min(dados_sobreviveram$galoes_por_morador)





dados_morreram<-zumbis_1_%>%filter(zumbi>0)
mean(dados_morreram$galoes_por_morador)
max(dados_morreram$galoes_por_morador)
min(dados_morreram$galoes_por_morador)

esquisser(zumbis_1_)

mean(dados_sobreviveram$idade)

mean(dados_morreram$idade)

table(zumbis_1_$sexo,zumbis_1_$zumbi)
table(zumbis_1_$area_residencia,zumbis_1_$zumbi)
table(zumbis_1_$comida,zumbis_1_$zumbi)
table(zumbis_1_$medicamentos,zumbis_1_$zumbi)
table(zumbis_1_$ferramentas,zumbis_1_$zumbi)
table(zumbis_1_$primeiros_socorros,zumbis_1_$zumbi)
table(zumbis_1_$sanitizacao,zumbis_1_$zumbi)
table(zumbis_1_$roupas,zumbis_1_$zumbi)
table(zumbis_1_$documentos,zumbis_1_$zumbi)






esquisser(zumbis_1_)







