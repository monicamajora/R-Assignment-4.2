df1 = data.frame(CustId = c(1:6), Product = c(rep("TV", 3), rep("Radio", 3)))
df2 = data.frame(CustId = c(2, 4, 6), State = c(rep("Texas", 2), rep("NYC", 1)))
df1 #left table
df2 #right table
#1a
df_left_only <- merge(x = df1,y = df2,by.x = "CustId")
#1b
df_inner<-merge(x=df1,y=df2,by="CustId")
#1c
df_Left_outer<-merge(x=df1,y=df2,by="CustId",all.x=TRUE)
#1d
df_right_outer<-merge(x=df1,y=df2,by="CustId",all.y=TRUE)


#2a
df_cross_join <-merge(x = df1, y = df2, by = NULL)

#2b.
df3<-merge(x=df1,y=df2,by="CustId")
df4 <- subset(df3, select = -State)

#2c
df5<-merge(x=df1,y=df2,by="CustId",all.x=TRUE)
df6 <- df5[!complete.cases(df5), ]
df7 <- subset(df6, select = -State)


