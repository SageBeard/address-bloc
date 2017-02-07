require_relative 'entry'


class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
      # #9
      index = 0
      entries.each do |entry|
      # #10
        if name < entry.name
          break
        end
        index+= 1
      end
      # #11
      entries.insert(index, Entry.new(name, phone_number, email))
    end
  end

  def remove_entry(name, phone_number, email)

    index = 0
    entires.each do |entry| #iterate through array

      if name === entry.name #if name is equal to entry name, remove
        break
      end

      index+= 1 #if not, continue comparing entries
    end

    entries.delete(index, Entry.new(name, phone_number, email)) #delete new entry
  end
