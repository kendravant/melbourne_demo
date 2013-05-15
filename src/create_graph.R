library('ProjectTemplate')
load.project()

ggplot(data=outdoor.furniture.assets,aes(easting.coord,northing.coord)) +
  geom_point(aes(colour=factor(category)),size = 1) +
  theme(axis.title.x = element_blank(), axis.text.x = element_blank()) +
  theme(axis.title.y = element_blank(), axis.text.y = element_blank()) +
  theme(axis.ticks=element_blank()) + theme(legend.title=element_blank())

ggsave(file.path('graphs', 'plot1.pdf'))