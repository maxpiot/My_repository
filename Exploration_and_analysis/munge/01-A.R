## Merge all the files for use in analysis
## Video data
video_data_merged = merge(cyber.security.3.video.stats, cyber.security.4.video.stats, all.x=TRUE, all.y=TRUE)
video_data_merged = merge(video_data_merged, cyber.security.5.video.stats, all.x=TRUE, all.y=TRUE)
video_data_merged = merge(video_data_merged, cyber.security.6.video.stats, all.x=TRUE, all.y=TRUE)
video_data_merged = merge(video_data_merged, cyber.security.7.video.stats, all.x=TRUE, all.y=TRUE)

## Question response data
question_data_merged = merge(cyber.security.1.question.response, cyber.security.2.question.response,
                             all.x=TRUE, all.y=TRUE )
question_data_merged = merge(question_data_merged, cyber.security.3.question.response,
                             all.x=TRUE, all.y=TRUE )
question_data_merged = merge(question_data_merged, cyber.security.4.question.response,
                             all.x=TRUE, all.y=TRUE )
question_data_merged = merge(question_data_merged, cyber.security.5.question.response,
                             all.x=TRUE, all.y=TRUE )
question_data_merged = merge(question_data_merged, cyber.security.6.question.response,
                             all.x=TRUE, all.y=TRUE )
question_data_merged = merge(question_data_merged, cyber.security.7.question.response,
                             all.x=TRUE, all.y=TRUE )

## Archetype data, remove all columns other than learner ID and archetype
archetype_7 = cyber.security.7.archetype.survey.responses[,c(2,4)]
archetype_6 = cyber.security.6.archetype.survey.responses[,c(2,4)]
archetype_5 = cyber.security.5.archetype.survey.responses[,c(2,4)]
archetype_4 = cyber.security.4.archetype.survey.responses[,c(2,4)]
archetype_3 = cyber.security.3.archetype.survey.responses[,c(2,4)]


