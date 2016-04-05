require 'fileutils'

hackers = ['Bart Simpson', 'Homer Simpson', 'Ned Flanders', 'Dr Zoidberg']

# clean up the names
# create folders

['bart','simpson'].first

hackers.each do |hacker|
  # new scope

  new_name = hacker.downcase.split(' ').first
  FileUtils.mkdir new_name

end