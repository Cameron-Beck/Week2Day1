class Student


  def initialize(name, cohort, language)
    @name = name
    @cohort = cohort
    @language = language
  end

  def get_student_name()
    return @name
  end

  def get_student_cohort()
    return @cohort
  end

  def set_student_name(name)
    return @name = name
  end

  def set_student_cohort(cohort)
    return @cohort = cohort
  end

  
  def talk()
     return "Hello my name is #{@name} and I'm in cohort #{@cohort}"
  end

  def fav_language()
    return "I am #{@name} and my fav language is #{@language}"
  end
end


class Team

# attr_reader  :name, :players
# attr_accessor :coach

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
  end

  def get_team_name
    return @name
  end

  def get_players_names
    return @players
  end

  def get_coach_name
    return @coach
  end

  def set_coach_name(coach)
    return @coach = coach
  end
end
