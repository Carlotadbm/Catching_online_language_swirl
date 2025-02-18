# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

wa <- read_lines(file.path(.get_course_path(), "Catching_online_language_swirl-main", "Reading_WhatsApp_chats", "WhatsApp_multilingual.txt"))