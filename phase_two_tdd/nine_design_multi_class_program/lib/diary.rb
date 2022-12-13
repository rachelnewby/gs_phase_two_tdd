class Diary
  def initialize
    @entries = []
  end
  def add(diary_entry) # diary_entry is an instance of DiaryEntry
    # DiaryEntry gets added to the diary
    # Returns nothing
    @entries << diary_entry
  end
  def read
    @entries.map(&:read_entry)
  end
  def readable(reading_speed, time) # Both integers
    # Returns list of diary entries that are readable in the legnth of time available
    wpm = reading_speed * time
    can_read = []
    @entries.map { |item| item.word_count <= wpm ? can_read << item.read_date : nil } 
    return can_read
  end
  def select(diary_entry) # String - instance of DiaryEntry
    # Returns date and contents of diary entry inputted
  end
end