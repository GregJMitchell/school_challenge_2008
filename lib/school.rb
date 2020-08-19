class School
  attr_reader :start_time, :hours_in_school_day, :student_names, :end_of_school
  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
    @end_of_school = end_of_school
  end
  def end_time
    @end_of_school = @start_time.to_i + @hours_in_school_day
    "#{@end_of_school}:00"
  end
  def add_student_name(name)
    @student_names << name
  end
  def is_full_time?
    if @hours_in_school_day > 4
      true
    else
      false
    end
  end
  def standard_student_name
    standard_names = []
    @student_names.each do |student|
      standard_names << student.capitalize
    end
    standard_names
  end
  def convert_end_time_to_clock_time
    new_time = @end_of_school
  if new_time > 12
    return "#{new_time - 12}:00"
  elsif new_time == 12 || 0
      "12:00"
  else
    return "#{new_time}:00"
  end
  end
end
