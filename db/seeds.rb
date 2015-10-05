# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def create_user(options)
  if User.exists?(:email => options[:email])
    puts "Ignoring - User already exists for: #{options[:email]}"
  else
    user = User.create!(options)
    puts "Successfully created User: #{options[:email]}"
  end
end



def create_story_part(options)
  name = "#{options[:category]}: #{options[:description]}"
  if StoryPart.exists?(category: options[:category], description: options[:description])
    puts "Ignoring - StoryPart already exists for: #{name}"
  else
    sp = StoryPart.create!(options)
    puts "Succesfully create StoryPart: #{name}"
  end
end


# -------------------- Story Types -------------------

story_type_options = {category: "Your First Boodle!", description: "My Breasts Are"}
create_story_part(story_type_options)

story_type_options = {category: "As a Kid", description: "Mom Mom's Take on Breasts"}
create_story_part(story_type_options)

story_type_options = {category: "As a Kid", description: "My Dads Take on Breasts"}
create_story_part(story_type_options)

story_type_options = {category: "Awkward Adolecense", description: "The Day I Got My First Bra"}
create_story_part(story_type_options)

story_type_options = {category: "Awkward Adolecense", description: "First Touch By Someone Else"}
create_story_part(story_type_options)

story_type_options = {category: "These Days", description: "My Breasts Love it When"}
create_story_part(story_type_options)

story_type_options = {category: "These Days", description: "My Breasts Dream of the Day"}
create_story_part(story_type_options)

story_type_options = {category: "These Days", description: "My Breasts Are Scared Of"}
create_story_part(story_type_options)

story_type_options = {category: "These Days", description: "My Breasts Are Working Hard to"}
create_story_part(story_type_options)


