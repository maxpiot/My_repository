##CRISP_DM_3

## Have investigated the 

## Merge the data frames 
archetype_3_merged = merge(x = student_stats_3, y = archetype_3, by = 'learner_id')
archetype_4_merged = merge(x = student_stats_4, y = archetype_4, by = 'learner_id')
archetype_5_merged = merge(x = student_stats_5, y = archetype_5, by = 'learner_id')
archetype_6_merged = merge(x = student_stats_6, y = archetype_6, by = 'learner_id')
archetype_7_merged = merge(x = student_stats_7, y = archetype_7, by = 'learner_id')

all_archetype_df = do.call("rbind", list(archetype_3_merged,archetype_4_merged, archetype_5_merged,
                                         archetype_6_merged, archetype_7_merged))

p <- ggplot(all_archetype_df, aes(x=archetype, y=percent)) + 
  geom_boxplot() 
  p


plot(archetype_6_merged$archetype, archetype_6_merged$percent)

p <- ggplot(archetype_6_merged, aes(x=archetype, y=percent)) + 
  geom_boxplot() 
p

p <- ggplot(archetype_7_merged, aes(x=archetype, y=percent)) + 
  geom_boxplot() 
  p

  
  
archetype_all = merge(archetype_7_merged, archetype_6_merged, all.x=TRUE, all.y=TRUE)
  
  
p <- ggplot(archetype_all, aes(x=archetype, y=percent)) + 
  geom_boxplot() 
p

  
  
  
  
  
  