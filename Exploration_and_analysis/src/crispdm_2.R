question_data_7 = cyber.security.7.question.response
question_data_6 = cyber.security.6.question.response
question_data_5 = cyber.security.5.question.response
question_data_4 = cyber.security.4.question.response
question_data_3 = cyber.security.3.question.response
question_data_2 = cyber.security.2.question.response
question_data_1 = cyber.security.1.question.response

## Create a list of unique students and a dataframe to hold the statistics created

student_dataframe = function(question_data){
students = unique(question_data$learner_id)
student_stats = data.frame("learner_id" = students, "true" = integer(length(students)),
                           "false" = integer(length(students)), 
                           "questions_answered" =integer(length(students)),
                           "percent" =integer(length(students)))
return(student_stats)
}


student_statistics = function(question_data, student_stats){
  for (i in 1:(nrow(student_stats))){
    a = filter(question_data, learner_id == student_stats$learner_id[i])
    student_stats$true[i] = sum(a$correct == 'true')
    student_stats$false[i] = sum(a$correct == 'false')
    student_stats$questions_answered[i] = nrow(a)
    student_stats$percent[i] = 100*student_stats$true[i]/(student_stats$true[i]+student_stats$false[i])
  }
  return(student_stats)
}


student_stats_7 = student_dataframe(question_data_7)
student_stats_6 = student_dataframe(question_data_6)
student_stats_5 = student_dataframe(question_data_5)
student_stats_4 = student_dataframe(question_data_4)
student_stats_3 = student_dataframe(question_data_3)
student_stats_2 = student_dataframe(question_data_2)
student_stats_1 = student_dataframe(question_data_1)

student_stats_7 = student_statistics(question_data_7, student_stats_7)
student_stats_6 = student_statistics(question_data_6, student_stats_6)
student_stats_5 = student_statistics(question_data_5, student_stats_5)
student_stats_4 = student_statistics(question_data_4, student_stats_4)
student_stats_3 = student_statistics(question_data_3, student_stats_3)
student_stats_2 = student_statistics(question_data_2, student_stats_2)
student_stats_1 = student_statistics(question_data_1, student_stats_1)

all_student_stats = list(student_stats_1, student_stats_2, student_stats_3, student_stats_4,
                         student_stats_5, student_stats_6, student_stats_7)

stud_stats_df = do.call("rbind", list(student_stats_1, student_stats_2, student_stats_3, student_stats_4,
                                      student_stats_5, student_stats_6, student_stats_7))

stud_stats_df = filter(stud_stats_df, learner_id != '')

plot_distr = function(questions){
graph = ggplot(questions, aes(x=percent), size=5) + geom_density() +
  geom_vline((aes(xintercept=mean(questions$percent))), color="red", linetype="dashed", size=1)
return(graph)
}


plot(student_stats$questions_answered,student_stats$percent)

p <- ggplot(questions_1, aes(y=percent)) + 
  geom_boxplot()
p

## Standard deviation
standard_deviation = sd(student_stats$percent)


low_mark = mean_percent - 2*standard_deviation

bad_students = filter(student_stats, percent < low_mark)

nrow(stud_stats_df)










