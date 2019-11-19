#which.max(video_data_merged$)

plot(video_data_merged$video_duration, video_data_merged$viewed_onehundred_percent)


plot(video_data_merged$step_position, video_data_merged$viewed_onehundred_percent)

plot(video_data_merged$step_position, video_data_merged$total_views)

g = ggplot(data=video_data_merged, aes(x=step_position, y=total_views))
g + geom_point() + geom_smooth(method=lm)+ ggtitle("Plot of total views vs step position") + xlab("Step position") + ylab("Total views")

cor(video_data_merged$step_position,video_data_merged$total_views)

g = ggplot(data=video_data_merged)
g1 = g + geom_point(aes(x=step_position, y=total_views))
