# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "Michele Gozzi", email: "michelegozzi@gmail.com", password: "P@lm&Kn1feS3t", password_confirmation: "P@lm&Kn1feS3t")
#u.errors.full_messages
u1.save

t2 = Topic.create(name: "US Citizenship Civic Test (OREGON) Rev. 01/17", description: "Civics (History and Government) Questions for the Naturalization Test (rev. 01/17)")

j2 = [
  { :num => 1, :q => "What is the supreme law of the land?", :answers => [
  { :a => "the Constitution" } ] },
  { :num => 2, :q => "What does the Constitution do?", :answers => [
  { :a => "sets up the government" },
  { :a => "defines the government" },
  { :a => "protects basic rights of Americans" } ] },
  { :num => 3, :q => "The idea of self-government is in the first three words of the Constitution. What are these words?", :answers => [
  { :a => "We the People" } ] },
  { :num => 4, :q => "What is an amendment?", :answers => [
  { :a => "a change (to the Constitution)" },
  { :a => "an addition (to the Constitution)" } ] },
  { :num => 5, :q => "What do we call the first ten amendments to the Constitution?", :answers => [
  { :a => "the Bill of Rights" } ] },
  { :num => 6, :q => "What is one right or freedom from the First Amendment?*", :answers => [
  { :a => "speech" },
  { :a => "religion" },
  { :a => "assembly" },
  { :a => "press" },
  { :a => "petition the government" } ] },
  { :num => 7, :q => "How many amendments does the Constitution have?", :answers => [
  { :a => "twenty-seven (27)" } ] },
  { :num => 8, :q => "What did the Declaration of Independence do?", :answers => [
  { :a => "announced our independence (from Great Britain)" },
  { :a => "declared our independence (from Great Britain)" },
  { :a => "said that the United States is free (from Great Britain)" } ] },
  { :num => 9, :q => "What are two rights in the Declaration of Independence?", :answers => [
  { :a => "life" },
  { :a => "liberty" },
  { :a => "pursuit of happiness" } ] },
  { :num => 10, :q => "What is freedom of religion?", :answers => [
  { :a => "You can practice any religion, or not practice a religion." } ] },
  { :num => 11, :q => "What is the economic system in the United States?*", :answers => [
  { :a => "capitalist economy" },
  { :a => "market economy" } ] },
  { :num => 12, :q => "What is the 'rule of law'?", :answers => [
  { :a => "Everyone must follow the law." },
  { :a => "Leaders must obey the law." },
  { :a => "Government must obey the law." },
  { :a => "No one is above the law." } ] },
  { :num => 13, :q => "Name one branch or part of the government.*", :answers => [
  { :a => "Congress" },
  { :a => "legislative" },
  { :a => "President" },
  { :a => "executive" },
  { :a => "the courts" },
  { :a => "judicial" } ] },
  { :num => 14, :q => "What stops one branch of government from becoming too powerful?", :answers => [
  { :a => "checks and balances" },
  { :a => "separation of powers" } ] },
  { :num => 15, :q => "Who is in charge of the executive branch?", :answers => [
  { :a => "the President" } ] },
  { :num => 16, :q => "Who makes federal laws?", :answers => [
  { :a => "Congress" },
  { :a => "Senate and House (of Representatives)" },
  { :a => "(U.S. or national) legislature" } ] },
  { :num => 17, :q => "What are the two parts of the U.S. Congress?*", :answers => [
  { :a => "the Senate and House (of Representatives)" } ] },
  { :num => 18, :q => "How many U.S. Senators are there?", :answers => [
  { :a => "one hundred (100)" } ] },
  { :num => 19, :q => "We elect a U.S. Senator for how many years?", :answers => [
  { :a => "six (6)" } ] },
  { :num => 20, :q => "Who is one of your state's U.S. Senators now?*", :answers => [
  { :a => "Ron Wyden (D)" },
  { :a => "and Jeff Merkley" } ] },
  { :num => 21, :q => "The House of Representatives has how many voting members?", :answers => [
  { :a => "four hundred thirty-five (435)" } ] },
  { :num => 22, :q => "We elect a U.S. Representative for how many years?", :answers => [
  { :a => "two (2)" } ] },
  { :num => 23, :q => "Name your U.S. Representative.", :answers => [
  { :a => "Suzanne Bonamici (D) - District 1" },
  { :a => "Greg Walden (R) - District 2" },
  { :a => "Earl Blumenauer (D) - District 3" },
  { :a => "Peter DeFazio (D) - District 4" },
  { :a => "Kurt Schrader (D) - District 5" } ] },
  { :num => 24, :q => "Who does a U.S. Senator represent?", :answers => [
  { :a => "all people of the state" } ] },
  { :num => 25, :q => "Why do some states have more Representatives than other states?", :answers => [
  { :a => "(because of) the state's population" },
  { :a => "(because) they have more people" },
  { :a => "(because) some states have more people" } ] },
  { :num => 26, :q => "We elect a President for how many years?", :answers => [
  { :a => "four (4)" } ] },
  { :num => 27, :q => "In what month do we vote for President?*", :answers => [
  { :a => "November" } ] },
  { :num => 28, :q => "What is the name of the President of the United States now?*", :answers => [
  { :a => "Donald J. Trump" },
  { :a => "Donald Trump" },
  { :a => "Trump" } ] },
  { :num => 29, :q => "What is the name of the Vice President of the United States now?", :answers => [
  { :a => "Michael R. Pence" },
  { :a => "Mike Pence" },
  { :a => "Pence" } ] },
  { :num => 30, :q => "If the President can no longer serve, who becomes President?", :answers => [
  { :a => "the Vice President" } ] },
  { :num => 31, :q => "If both the President and the Vice President can no longer serve, who becomes President?", :answers => [
  { :a => "the Speaker of the House" } ] },
  { :num => 32, :q => "Who is the Commander in Chief of the military?", :answers => [
  { :a => "the President" } ] },
  { :num => 33, :q => "Who signs bills to become laws?", :answers => [
  { :a => "the President" } ] },
  { :num => 34, :q => "Who vetoes bills?", :answers => [
  { :a => "the President" } ] },
  { :num => 35, :q => "What does the President's Cabinet do?", :answers => [
  { :a => "advises the President" } ] },
  { :num => 36, :q => "What are two Cabinet-level positions?", :answers => [
  { :a => "Secretary of Agriculture" },
  { :a => "Secretary of Commerce" },
  { :a => "Secretary of Defense" },
  { :a => "Secretary of Education" },
  { :a => "Secretary of Energy" },
  { :a => "Secretary of Health and Human Services" },
  { :a => "Secretary of Homeland Security" },
  { :a => "Secretary of Housing and Urban Development" },
  { :a => "Secretary of the Interior" },
  { :a => "Secretary of Labor" },
  { :a => "Secretary of State" },
  { :a => "Secretary of Transportation" },
  { :a => "Secretary of the Treasury" },
  { :a => "Secretary of Veterans Affairs" },
  { :a => "Attorney General" },
  { :a => "Vice President" } ] },
  { :num => 37, :q => "What does the judicial branch do?", :answers => [
  { :a => "reviews laws" },
  { :a => "explains laws" },
  { :a => "resolves disputes (disagreements)" },
  { :a => "decides if a law goes against the Constitution" } ] },
  { :num => 38, :q => "What is the highest court in the United States?", :answers => [
  { :a => "the Supreme Court" } ] },
  { :num => 39, :q => "How many justices are on the Supreme Court?", :answers => [
  { :a => "nine (9)" } ] },
  { :num => 40, :q => "Who is the Chief Justice of the United States now?", :answers => [
  { :a => "John Roberts (John G. Roberts, Jr.)" } ] },
  { :num => 41, :q => "Under our Constitution, some powers belong to the federal government. What is one power of the federal government?", :answers => [
  { :a => "to print money" },
  { :a => "to declare war" },
  { :a => "to create an army" },
  { :a => "to make treaties" } ] },
  { :num => 42, :q => "Under our Constitution, some powers belong to the states. What is one power of the states?", :answers => [
  { :a => "provide schooling and education" },
  { :a => "provide protection (police)" },
  { :a => "provide safety (fire departments)" },
  { :a => "give a driver's license" },
  { :a => "approve zoning and land use" } ] },
  { :num => 43, :q => "Who is the Governor of your state now?", :answers => [
  { :a => "Kate Brown (D)" } ] },
  { :num => 44, :q => "What is the capital of your state?*", :answers => [
  { :a => "Salem" } ] },
  { :num => 45, :q => "What are the two major political parties in the United States?*", :answers => [
  { :a => "Democratic and Republican" } ] },
  { :num => 46, :q => "What is the political party of the President now?", :answers => [
  { :a => "Republican (Party)" } ] },
  { :num => 47, :q => "What is the name of the Speaker of the House of Representatives now?", :answers => [
  { :a => "Paul D. Ryan" },
  { :a => "(Paul) Ryan" } ] },
  { :num => 48, :q => "There are four amendments to the Constitution about who can vote. Describe one of them.", :answers => [
  { :a => "Citizens eighteen (18) and older (can vote)." },
  { :a => "You don't have to pay (a poll tax) to vote." },
  { :a => "Any citizen can vote. (Women and men can vote.)" },
  { :a => "A male citizen of any race (can vote)." } ] },
  { :num => 49, :q => "What is one responsibility that is only for United States citizens?*", :answers => [
  { :a => "serve on a jury" },
  { :a => "vote in a federal election" } ] },
  { :num => 50, :q => "Name one right only for United States citizens.", :answers => [
  { :a => "vote in a federal election" },
  { :a => "run for federal office" } ] },
  { :num => 51, :q => "What are two rights of everyone living in the United States?", :answers => [
  { :a => "freedom of expression" },
  { :a => "freedom of speech" },
  { :a => "freedom of assembly" },
  { :a => "freedom to petition the government" },
  { :a => "freedom of religion" },
  { :a => "the right to bear arms" } ] },
  { :num => 52, :q => "What do we show loyalty to when we say the Pledge of Allegiance?", :answers => [
  { :a => "the United States" },
  { :a => "the flag" } ] },
  { :num => 53, :q => "What is one promise you make when you become a United States citizen?", :answers => [
  { :a => "give up loyalty to other countries" },
  { :a => "defend the Constitution and laws of the United States" },
  { :a => "obey the laws of the United States" },
  { :a => "serve in the U.S. military (if needed)" },
  { :a => "serve (do important work for) the nation (if needed)" },
  { :a => "be loyal to the United States" } ] },
  { :num => 54, :q => "How old do citizens have to be to vote for President?*", :answers => [
  { :a => "eighteen (18) and older" } ] },
  { :num => 55, :q => "What are two ways that Americans can participate in their democracy?", :answers => [
  { :a => "vote" },
  { :a => "join a political party" },
  { :a => "help with a campaign" },
  { :a => "join a civic group" },
  { :a => "join a community group" },
  { :a => "give an elected official your opinion on an issue" },
  { :a => "call Senators and Representatives" },
  { :a => "publicly support or oppose an issue or policy" },
  { :a => "run for office" },
  { :a => "write to a newspaper" } ] },
  { :num => 56, :q => "When is the last day you can send in federal income tax forms?*", :answers => [
  { :a => "April 15" } ] },
  { :num => 57, :q => "When must all men register for the Selective Service?", :answers => [
  { :a => "at age eighteen (18)" },
  { :a => "between eighteen (18) and twenty-six (26)" } ] },
  { :num => 58, :q => "What is one reason colonists came to America?", :answers => [
  { :a => "freedom" },
  { :a => "political liberty" },
  { :a => "religious freedom" },
  { :a => "economic opportunity" },
  { :a => "practice their religion" },
  { :a => "escape persecution" } ] },
  { :num => 59, :q => "Who lived in America before the Europeans arrived?", :answers => [
  { :a => "American Indians" },
  { :a => "Native Americans" } ] },
  { :num => 60, :q => "What group of people was taken to America and sold as slaves?", :answers => [
  { :a => "Africans" },
  { :a => "people from Africa" } ] },
  { :num => 61, :q => "Why did the colonists fight the British?", :answers => [
  { :a => "because of high taxes (taxation without representation)" },
  { :a => "because the British army stayed in their houses (boarding, quartering)" },
  { :a => "because they didn't have self-government" } ] },
  { :num => 62, :q => "Who wrote the Declaration of Independence?", :answers => [
  { :a => "(Thomas) Jefferson" } ] },
  { :num => 63, :q => "When was the Declaration of Independence adopted?", :answers => [
  { :a => "July 4, 1776" } ] },
  { :num => 64, :q => "There were 13 original states. Name three.", :answers => [
  { :a => "New Hampshire" },
  { :a => "Massachusetts" },
  { :a => "Rhode Island" },
  { :a => "Connecticut" },
  { :a => "New York" },
  { :a => "New Jersey" },
  { :a => "Pennsylvania" },
  { :a => "Delaware" },
  { :a => "Maryland" },
  { :a => "Virginia" },
  { :a => "North Carolina" },
  { :a => "South Carolina" },
  { :a => "Georgia" } ] },
  { :num => 65, :q => "What happened at the Constitutional Convention?", :answers => [
  { :a => "The Constitution was written." },
  { :a => "The Founding Fathers wrote the Constitution." } ] },
  { :num => 66, :q => "When was the Constitution written?", :answers => [
  { :a => "1787" } ] },
  { :num => 67, :q => "The Federalist Papers supported the passage of the U.S. Constitution. Name one of the writers.", :answers => [
  { :a => "(James) Madison" },
  { :a => "(Alexander) Hamilton" },
  { :a => "(John) Jay" },
  { :a => "Publius" } ] },
  { :num => 68, :q => "What is one thing Benjamin Franklin is famous for?", :answers => [
  { :a => "U.S. diplomat" },
  { :a => "oldest member of the Constitutional Convention" },
  { :a => "first Postmaster General of the United States" },
  { :a => "writer of 'Poor Richard's Almanac'" },
  { :a => "started the first free libraries" } ] },
  { :num => 69, :q => "Who is the 'Father of Our Country'?", :answers => [
  { :a => "(George) Washington" } ] },
  { :num => 70, :q => "Who was the first President?*", :answers => [
  { :a => "(George) Washington" } ] },
  { :num => 71, :q => "What territory did the United States buy from France in 1803?", :answers => [
  { :a => "the Louisiana Territory" },
  { :a => "Louisiana" } ] },
  { :num => 72, :q => "Name one war fought by the United States in the 1800s.", :answers => [
  { :a => "War of 1812" },
  { :a => "Mexican-American War" },
  { :a => "Civil War" },
  { :a => "Spanish-American War" } ] },
  { :num => 73, :q => "Name the U.S. war between the North and the South.", :answers => [
  { :a => "the Civil War" },
  { :a => "the War between the States" } ] },
  { :num => 74, :q => "Name one problem that led to the Civil War.", :answers => [
  { :a => "slavery" },
  { :a => "economic reasons" },
  { :a => "States' rights" } ] },
  { :num => 75, :q => "What was one important thing that Abraham Lincoln did?*", :answers => [
  { :a => "freed the slaves (Emancipation Proclamation)" },
  { :a => "saved (or preserved) the Union" },
  { :a => "led the United States during the Civil War" } ] },
  { :num => 76, :q => "What did the Emancipation Proclamation do?", :answers => [
  { :a => "freed the slaves" },
  { :a => "freed slaves in the Confederacy" },
  { :a => "freed slaves in the Confederate states" },
  { :a => "freed slaves in most Southern states" } ] },
  { :num => 77, :q => "What did Susan B. Anthony do?", :answers => [
  { :a => "fought for women's rights" },
  { :a => "fought for civil rights" } ] },
  { :num => 78, :q => "Name one war fought by the United States in the 1900s.*", :answers => [
  { :a => "World War I" },
  { :a => "World War II" },
  { :a => "Korean War" },
  { :a => "Vietnam War" },
  { :a => "(Persian) Gulf War" } ] },
  { :num => 79, :q => "Who was President during World War I?", :answers => [
  { :a => "(Woodrow) Wilson" } ] },
  { :num => 80, :q => "Who was President during the Great Depression and World War II?", :answers => [
  { :a => "(Franklin) Roosevelt" } ] },
  { :num => 81, :q => "Who did the United States fight in World War II?", :answers => [
  { :a => "Japan, Germany, and Italy" } ] },
  { :num => 82, :q => "Before he was President, Eisenhower was a general. What war was he in?", :answers => [
  { :a => "World War II" } ] },
  { :num => 83, :q => "During the Cold War, what was the main concern of the United States?", :answers => [
  { :a => "Communism" } ] },
  { :num => 84, :q => "What movement tried to end racial discrimination?", :answers => [
  { :a => "civil rights (movement)" } ] },
  { :num => 85, :q => "What did Martin Luther King, Jr. do?*", :answers => [
  { :a => "fought for civil rights" },
  { :a => "worked for equality for all Americans" } ] },
  { :num => 86, :q => "What major event happened on September 11, 2001, in the United States?", :answers => [
  { :a => "Terrorists attacked the United States." } ] },
  { :num => 87, :q => "Name one American Indian tribe in the United States.", :answers => [
  { :a => "Cherokee" },
  { :a => "Navajo" },
  { :a => "Sioux" },
  { :a => "Chippewa" },
  { :a => "Choctaw" },
  { :a => "Pueblo" },
  { :a => "Apache" },
  { :a => "Iroquois" },
  { :a => "Creek" },
  { :a => "Blackfeet" },
  { :a => "Seminole" },
  { :a => "Cheyenne" },
  { :a => "Arawak" },
  { :a => "Shawnee" },
  { :a => "Mohegan" },
  { :a => "Huron" },
  { :a => "Oneida" },
  { :a => "Lakota" },
  { :a => "Crow" },
  { :a => "Teton" },
  { :a => "Hopi" },
  { :a => "Inuit" } ] },
  { :num => 88, :q => "Name one of the two longest rivers in the United States.", :answers => [
  { :a => "Missouri (River)" },
  { :a => "Mississippi (River)" } ] },
  { :num => 89, :q => "What ocean is on the West Coast of the United States?", :answers => [
  { :a => "Pacific (Ocean)" } ] },
  { :num => 90, :q => "What ocean is on the East Coast of the United States?", :answers => [
  { :a => "Atlantic (Ocean)" } ] },
  { :num => 91, :q => "Name one U.S. territory.", :answers => [
  { :a => "Puerto Rico" },
  { :a => "U.S. Virgin Islands" },
  { :a => "American Samoa" },
  { :a => "Northern Mariana Islands" },
  { :a => "Guam" } ] },
  { :num => 92, :q => "Name one state that borders Canada.", :answers => [
  { :a => "Maine" },
  { :a => "New Hampshire" },
  { :a => "Vermont" },
  { :a => "New York" },
  { :a => "Pennsylvania" },
  { :a => "Ohio" },
  { :a => "Michigan" },
  { :a => "Minnesota" },
  { :a => "North Dakota" },
  { :a => "Montana" },
  { :a => "Idaho" },
  { :a => "Washington" },
  { :a => "Alaska" } ] },
  { :num => 93, :q => "Name one state that borders Mexico.", :answers => [
  { :a => "California" },
  { :a => "Arizona" },
  { :a => "New Mexico" },
  { :a => "Texas" } ] },
  { :num => 94, :q => "What is the capital of the United States?*", :answers => [
  { :a => "Washington, D.C." } ] },
  { :num => 95, :q => "Where is the Statue of Liberty?*", :answers => [
  { :a => "New York (Harbor)" },
  { :a => "Liberty Island [Also acceptable are New Jersey, near New York City, and on the Hudson (River).]" } ] },
  { :num => 96, :q => "Why does the flag have 13 stripes?", :answers => [
  { :a => "because there were 13 original colonies" },
  { :a => "because the stripes represent the original colonies" } ] },
  { :num => 97, :q => "Why does the flag have 50 stars?*", :answers => [
  { :a => "because there is one star for each state" },
  { :a => "because each star represents a state" },
  { :a => "because there are 50 states" } ] },
  { :num => 98, :q => "What is the name of the national anthem?", :answers => [
  { :a => "The Star-Spangled Banner" } ] },
  { :num => 99, :q => "When do we celebrate Independence Day?*", :answers => [
  { :a => "July 4" } ] },
  { :num => 100, :q => "Name two national U.S. holidays.", :answers => [
  { :a => "New Year's Day" },
  { :a => "Martin Luther King, Jr. Day" },
  { :a => "Presidents' Day" },
  { :a => "Memorial Day" },
  { :a => "Independence Day" },
  { :a => "Labor Day" },
  { :a => "Columbus Day" },
  { :a => "Veterans Day" },
  { :a => "Thanksgiving" },
  { :a => "Christmas" } ] }
]

j2.each do |q| 
  newq = Question.create(text: q[:q])
  
  q[:answers].each do |a|
    newa = Answer.create(text: a[:a]);
    newq.answers.push(newa)
  end
    
  newq.save
  t2.questions.push(newq)
  t2.save
end

######################

### Principles of American Democracy (1-12)###
j = [
  { :num => 1, :q => "What is the supreme law of the land?", :answers => [
  { :a => "the Constitution" } ] },
  { :num => 2, :q => "What does the Constitution do?", :answers => [
  { :a => "sets up the government" },
  { :a => "defines the government" },
  { :a => "protects basic rights of Americans" } ] },
  { :num => 3, :q => "The idea of self-government is in the first three words of the Constitution. What are these words?", :answers => [
  { :a => "We the People" } ] },
  { :num => 4, :q => "What is an amendment?", :answers => [
  { :a => "a change (to the Constitution)" },
  { :a => "an addition (to the Constitution)" } ] },
  { :num => 5, :q => "What do we call the first ten amendments to the Constitution?", :answers => [
  { :a => "the Bill of Rights" } ] },
  { :num => 6, :q => "What is one right or freedom from the First Amendment?*", :answers => [
  { :a => "speech" },
  { :a => "religion" },
  { :a => "assembly" },
  { :a => "press" },
  { :a => "petition the government" } ] },
  { :num => 7, :q => "How many amendments does the Constitution have?", :answers => [
  { :a => "twenty-seven (27)" } ] },
  { :num => 8, :q => "What did the Declaration of Independence do?", :answers => [
  { :a => "announced our independence (from Great Britain)" },
  { :a => "declared our independence (from Great Britain)" },
  { :a => "said that the United States is free (from Great Britain)" } ] },
  { :num => 9, :q => "What are two rights in the Declaration of Independence?", :answers => [
  { :a => "life" },
  { :a => "liberty" },
  { :a => "pursuit of happiness" } ] },
  { :num => 10, :q => "What is freedom of religion?", :answers => [
  { :a => "You can practice any religion, or not practice a religion." } ] },
  { :num => 11, :q => "What is the economic system in the United States?*", :answers => [
  { :a => "capitalist economy" },
  { :a => "market economy" } ] },
  { :num => 12, :q => "What is the 'rule of law'?", :answers => [
  { :a => "Everyone must follow the law." },
  { :a => "Leaders must obey the law." },
  { :a => "Government must obey the law." },
  { :a => "No one is above the law." } ] }
]
t = Topic.create(name: "A - Principles of American Democracy", description: "Principles of American Democracy - Civics (History and Government) Questions for the Naturalization Test (rev. 01/17)")
j.each do |q| 
  newq = Question.create(text: q[:q])
  
  q[:answers].each do |a|
    newa = Answer.create(text: a[:a]);
    newq.answers.push(newa)
  end
    
  newq.save
  t.questions.push(newq)
  t.save
end

### System of Government (13-47)###
j = [
  { :num => 13, :q => "Name one branch or part of the government.*", :answers => [
  { :a => "Congress" },
  { :a => "legislative" },
  { :a => "President" },
  { :a => "executive" },
  { :a => "the courts" },
  { :a => "judicial" } ] },
  { :num => 14, :q => "What stops one branch of government from becoming too powerful?", :answers => [
  { :a => "checks and balances" },
  { :a => "separation of powers" } ] },
  { :num => 15, :q => "Who is in charge of the executive branch?", :answers => [
  { :a => "the President" } ] },
  { :num => 16, :q => "Who makes federal laws?", :answers => [
  { :a => "Congress" },
  { :a => "Senate and House (of Representatives)" },
  { :a => "(U.S. or national) legislature" } ] },
  { :num => 17, :q => "What are the two parts of the U.S. Congress?*", :answers => [
  { :a => "the Senate and House (of Representatives)" } ] },
  { :num => 18, :q => "How many U.S. Senators are there?", :answers => [
  { :a => "one hundred (100)" } ] },
  { :num => 19, :q => "We elect a U.S. Senator for how many years?", :answers => [
  { :a => "six (6)" } ] },
  { :num => 20, :q => "Who is one of your state's U.S. Senators now?*", :answers => [
  { :a => "Ron Wyden (D)" },
  { :a => "and Jeff Merkley" } ] },
  { :num => 21, :q => "The House of Representatives has how many voting members?", :answers => [
  { :a => "four hundred thirty-five (435)" } ] },
  { :num => 22, :q => "We elect a U.S. Representative for how many years?", :answers => [
  { :a => "two (2)" } ] },
  { :num => 23, :q => "Name your U.S. Representative.", :answers => [
  { :a => "Suzanne Bonamici (D) - District 1" },
  { :a => "Greg Walden (R) - District 2" },
  { :a => "Earl Blumenauer (D) - District 3" },
  { :a => "Peter DeFazio (D) - District 4" },
  { :a => "Kurt Schrader (D) - District 5" } ] },
  { :num => 24, :q => "Who does a U.S. Senator represent?", :answers => [
  { :a => "all people of the state" } ] },
  { :num => 25, :q => "Why do some states have more Representatives than other states?", :answers => [
  { :a => "(because of) the state's population" },
  { :a => "(because) they have more people" },
  { :a => "(because) some states have more people" } ] },
  { :num => 26, :q => "We elect a President for how many years?", :answers => [
  { :a => "four (4)" } ] },
  { :num => 27, :q => "In what month do we vote for President?*", :answers => [
  { :a => "November" } ] },
  { :num => 28, :q => "What is the name of the President of the United States now?*", :answers => [
  { :a => "Donald J. Trump" },
  { :a => "Donald Trump" },
  { :a => "Trump" } ] },
  { :num => 29, :q => "What is the name of the Vice President of the United States now?", :answers => [
  { :a => "Michael R. Pence" },
  { :a => "Mike Pence" },
  { :a => "Pence" } ] },
  { :num => 30, :q => "If the President can no longer serve, who becomes President?", :answers => [
  { :a => "the Vice President" } ] },
  { :num => 31, :q => "If both the President and the Vice President can no longer serve, who becomes President?", :answers => [
  { :a => "the Speaker of the House" } ] },
  { :num => 32, :q => "Who is the Commander in Chief of the military?", :answers => [
  { :a => "the President" } ] },
  { :num => 33, :q => "Who signs bills to become laws?", :answers => [
  { :a => "the President" } ] },
  { :num => 34, :q => "Who vetoes bills?", :answers => [
  { :a => "the President" } ] },
  { :num => 35, :q => "What does the President's Cabinet do?", :answers => [
  { :a => "advises the President" } ] },
  { :num => 36, :q => "What are two Cabinet-level positions?", :answers => [
  { :a => "Secretary of Agriculture" },
  { :a => "Secretary of Commerce" },
  { :a => "Secretary of Defense" },
  { :a => "Secretary of Education" },
  { :a => "Secretary of Energy" },
  { :a => "Secretary of Health and Human Services" },
  { :a => "Secretary of Homeland Security" },
  { :a => "Secretary of Housing and Urban Development" },
  { :a => "Secretary of the Interior" },
  { :a => "Secretary of Labor" },
  { :a => "Secretary of State" },
  { :a => "Secretary of Transportation" },
  { :a => "Secretary of the Treasury" },
  { :a => "Secretary of Veterans Affairs" },
  { :a => "Attorney General" },
  { :a => "Vice President" } ] },
  { :num => 37, :q => "What does the judicial branch do?", :answers => [
  { :a => "reviews laws" },
  { :a => "explains laws" },
  { :a => "resolves disputes (disagreements)" },
  { :a => "decides if a law goes against the Constitution" } ] },
  { :num => 38, :q => "What is the highest court in the United States?", :answers => [
  { :a => "the Supreme Court" } ] },
  { :num => 39, :q => "How many justices are on the Supreme Court?", :answers => [
  { :a => "nine (9)" } ] },
  { :num => 40, :q => "Who is the Chief Justice of the United States now?", :answers => [
  { :a => "John Roberts (John G. Roberts, Jr.)" } ] },
  { :num => 41, :q => "Under our Constitution, some powers belong to the federal government. What is one power of the federal government?", :answers => [
  { :a => "to print money" },
  { :a => "to declare war" },
  { :a => "to create an army" },
  { :a => "to make treaties" } ] },
  { :num => 42, :q => "Under our Constitution, some powers belong to the states. What is one power of the states?", :answers => [
  { :a => "provide schooling and education" },
  { :a => "provide protection (police)" },
  { :a => "provide safety (fire departments)" },
  { :a => "give a driver's license" },
  { :a => "approve zoning and land use" } ] },
  { :num => 43, :q => "Who is the Governor of your state now?", :answers => [
  { :a => "Kate Brown (D)" } ] },
  { :num => 44, :q => "What is the capital of your state?*", :answers => [
  { :a => "Salem" } ] },
  { :num => 45, :q => "What are the two major political parties in the United States?*", :answers => [
  { :a => "Democratic and Republican" } ] },
  { :num => 46, :q => "What is the political party of the President now?", :answers => [
  { :a => "Republican (Party)" } ] },
  { :num => 47, :q => "What is the name of the Speaker of the House of Representatives now?", :answers => [
  { :a => "Paul D. Ryan" },
  { :a => "(Paul) Ryan" } ] }
]
t = Topic.create(name: "B - System of Government", description: "System of Government - Civics (History and Government) Questions for the Naturalization Test (rev. 01/17)")
j.each do |q| 
  newq = Question.create(text: q[:q])
  
  q[:answers].each do |a|
    newa = Answer.create(text: a[:a]);
    newq.answers.push(newa)
  end
    
  newq.save
  t.questions.push(newq)
  t.save
end

### Rights and Responsibilities (48-57) ###
j = [
  { :num => 48, :q => "There are four amendments to the Constitution about who can vote. Describe one of them.", :answers => [
  { :a => "Citizens eighteen (18) and older (can vote)." },
  { :a => "You don't have to pay (a poll tax) to vote." },
  { :a => "Any citizen can vote. (Women and men can vote.)" },
  { :a => "A male citizen of any race (can vote)." } ] },
  { :num => 49, :q => "What is one responsibility that is only for United States citizens?*", :answers => [
  { :a => "serve on a jury" },
  { :a => "vote in a federal election" } ] },
  { :num => 50, :q => "Name one right only for United States citizens.", :answers => [
  { :a => "vote in a federal election" },
  { :a => "run for federal office" } ] },
  { :num => 51, :q => "What are two rights of everyone living in the United States?", :answers => [
  { :a => "freedom of expression" },
  { :a => "freedom of speech" },
  { :a => "freedom of assembly" },
  { :a => "freedom to petition the government" },
  { :a => "freedom of religion" },
  { :a => "the right to bear arms" } ] },
  { :num => 52, :q => "What do we show loyalty to when we say the Pledge of Allegiance?", :answers => [
  { :a => "the United States" },
  { :a => "the flag" } ] },
  { :num => 53, :q => "What is one promise you make when you become a United States citizen?", :answers => [
  { :a => "give up loyalty to other countries" },
  { :a => "defend the Constitution and laws of the United States" },
  { :a => "obey the laws of the United States" },
  { :a => "serve in the U.S. military (if needed)" },
  { :a => "serve (do important work for) the nation (if needed)" },
  { :a => "be loyal to the United States" } ] },
  { :num => 54, :q => "How old do citizens have to be to vote for President?*", :answers => [
  { :a => "eighteen (18) and older" } ] },
  { :num => 55, :q => "What are two ways that Americans can participate in their democracy?", :answers => [
  { :a => "vote" },
  { :a => "join a political party" },
  { :a => "help with a campaign" },
  { :a => "join a civic group" },
  { :a => "join a community group" },
  { :a => "give an elected official your opinion on an issue" },
  { :a => "call Senators and Representatives" },
  { :a => "publicly support or oppose an issue or policy" },
  { :a => "run for office" },
  { :a => "write to a newspaper" } ] },
  { :num => 56, :q => "When is the last day you can send in federal income tax forms?*", :answers => [
  { :a => "April 15" } ] },
  { :num => 57, :q => "When must all men register for the Selective Service?", :answers => [
  { :a => "at age eighteen (18)" },
  { :a => "between eighteen (18) and twenty-six (26)" } ] }
]
t = Topic.create(name: "C - Rights and Responsibilities", description: "Rights and Responsibilities - Civics (History and Government) Questions for the Naturalization Test (rev. 01/17)")
j.each do |q| 
  newq = Question.create(text: q[:q])
  
  q[:answers].each do |a|
    newa = Answer.create(text: a[:a]);
    newq.answers.push(newa)
  end
    
  newq.save
  t.questions.push(newq)
  t.save
end

### AMERICAN HISTORY - Colonial Period and Independence (58-70) ###
j = [
  { :num => 58, :q => "What is one reason colonists came to America?", :answers => [
  { :a => "freedom" },
  { :a => "political liberty" },
  { :a => "religious freedom" },
  { :a => "economic opportunity" },
  { :a => "practice their religion" },
  { :a => "escape persecution" } ] },
  { :num => 59, :q => "Who lived in America before the Europeans arrived?", :answers => [
  { :a => "American Indians" },
  { :a => "Native Americans" } ] },
  { :num => 60, :q => "What group of people was taken to America and sold as slaves?", :answers => [
  { :a => "Africans" },
  { :a => "people from Africa" } ] },
  { :num => 61, :q => "Why did the colonists fight the British?", :answers => [
  { :a => "because of high taxes (taxation without representation)" },
  { :a => "because the British army stayed in their houses (boarding, quartering)" },
  { :a => "because they didn't have self-government" } ] },
  { :num => 62, :q => "Who wrote the Declaration of Independence?", :answers => [
  { :a => "(Thomas) Jefferson" } ] },
  { :num => 63, :q => "When was the Declaration of Independence adopted?", :answers => [
  { :a => "July 4, 1776" } ] },
  { :num => 64, :q => "There were 13 original states. Name three.", :answers => [
  { :a => "New Hampshire" },
  { :a => "Massachusetts" },
  { :a => "Rhode Island" },
  { :a => "Connecticut" },
  { :a => "New York" },
  { :a => "New Jersey" },
  { :a => "Pennsylvania" },
  { :a => "Delaware" },
  { :a => "Maryland" },
  { :a => "Virginia" },
  { :a => "North Carolina" },
  { :a => "South Carolina" },
  { :a => "Georgia" } ] },
  { :num => 65, :q => "What happened at the Constitutional Convention?", :answers => [
  { :a => "The Constitution was written." },
  { :a => "The Founding Fathers wrote the Constitution." } ] },
  { :num => 66, :q => "When was the Constitution written?", :answers => [
  { :a => "1787" } ] },
  { :num => 67, :q => "The Federalist Papers supported the passage of the U.S. Constitution. Name one of the writers.", :answers => [
  { :a => "(James) Madison" },
  { :a => "(Alexander) Hamilton" },
  { :a => "(John) Jay" },
  { :a => "Publius" } ] },
  { :num => 68, :q => "What is one thing Benjamin Franklin is famous for?", :answers => [
  { :a => "U.S. diplomat" },
  { :a => "oldest member of the Constitutional Convention" },
  { :a => "first Postmaster General of the United States" },
  { :a => "writer of 'Poor Richard's Almanac'" },
  { :a => "started the first free libraries" } ] },
  { :num => 69, :q => "Who is the 'Father of Our Country'?", :answers => [
  { :a => "(George) Washington" } ] },
  { :num => 70, :q => "Who was the first President?*", :answers => [
  { :a => "(George) Washington" } ] }
]
t = Topic.create(name: "D - AMERICAN HISTORY - Colonial Period and Independence", description: "AMERICAN HISTORY - Colonial Period and Independence - Civics (History and Government) Questions for the Naturalization Test (rev. 01/17)")
j.each do |q| 
  newq = Question.create(text: q[:q])
  
  q[:answers].each do |a|
    newa = Answer.create(text: a[:a]);
    newq.answers.push(newa)
  end
    
  newq.save
  t.questions.push(newq)
  t.save
end

### AMERICAN HISTORY - 1800s (58-70) ###
j = [
  { :num => 71, :q => "What territory did the United States buy from France in 1803?", :answers => [
  { :a => "the Louisiana Territory" },
  { :a => "Louisiana" } ] },
  { :num => 72, :q => "Name one war fought by the United States in the 1800s.", :answers => [
  { :a => "War of 1812" },
  { :a => "Mexican-American War" },
  { :a => "Civil War" },
  { :a => "Spanish-American War" } ] },
  { :num => 73, :q => "Name the U.S. war between the North and the South.", :answers => [
  { :a => "the Civil War" },
  { :a => "the War between the States" } ] },
  { :num => 74, :q => "Name one problem that led to the Civil War.", :answers => [
  { :a => "slavery" },
  { :a => "economic reasons" },
  { :a => "states' rights" } ] },
  { :num => 75, :q => "What was one important thing that Abraham Lincoln did?*", :answers => [
  { :a => "freed the slaves (Emancipation Proclamation)" },
  { :a => "saved (or preserved) the Union" },
  { :a => "led the United States during the Civil War" } ] },
  { :num => 76, :q => "What did the Emancipation Proclamation do?", :answers => [
  { :a => "freed the slaves" },
  { :a => "freed slaves in the Confederacy" },
  { :a => "freed slaves in the Confederate states" },
  { :a => "freed slaves in most Southern states" } ] },
  { :num => 77, :q => "What did Susan B. Anthony do?", :answers => [
  { :a => "fought for women's rights" },
  { :a => "fought for civil rights" } ] }
]
t = Topic.create(name: "E - AMERICAN HISTORY - 1800s", description: "AMERICAN HISTORY - 1800s - Civics (History and Government) Questions for the Naturalization Test (rev. 01/17)")
j.each do |q| 
  newq = Question.create(text: q[:q])
  
  q[:answers].each do |a|
    newa = Answer.create(text: a[:a]);
    newq.answers.push(newa)
  end
    
  newq.save
  t.questions.push(newq)
  t.save
end

### Recent American History and Other Important Historical Information (78-87) ###
j = [
  { :num => 78, :q => "Name one war fought by the United States in the 1900s.*", :answers => [
  { :a => "World War I" },
  { :a => "World War II" },
  { :a => "Korean War" },
  { :a => "Vietnam War" },
  { :a => "(Persian) Gulf War" } ] },
  { :num => 79, :q => "Who was President during World War I?", :answers => [
  { :a => "(Woodrow) Wilson" } ] },
  { :num => 80, :q => "Who was President during the Great Depression and World War II?", :answers => [
  { :a => "(Franklin) Roosevelt" } ] },
  { :num => 81, :q => "Who did the United States fight in World War II?", :answers => [
  { :a => "Japan, Germany, and Italy" } ] },
  { :num => 82, :q => "Before he was President, Eisenhower was a general. What war was he in?", :answers => [
  { :a => "World War II" } ] },
  { :num => 83, :q => "During the Cold War, what was the main concern of the United States?", :answers => [
  { :a => "Communism" } ] },
  { :num => 84, :q => "What movement tried to end racial discrimination?", :answers => [
  { :a => "civil rights (movement)" } ] },
  { :num => 85, :q => "What did Martin Luther King, Jr. do?*", :answers => [
  { :a => "fought for civil rights" },
  { :a => "worked for equality for all Americans" } ] },
  { :num => 86, :q => "What major event happened on September 11, 2001, in the United States?", :answers => [
  { :a => "Terrorists attacked the United States." } ] },
  { :num => 87, :q => "Name one American Indian tribe in the United States.", :answers => [
  { :a => "Cherokee" },
  { :a => "Navajo" },
  { :a => "Sioux" },
  { :a => "Chippewa" },
  { :a => "Choctaw" },
  { :a => "Pueblo" },
  { :a => "Apache" },
  { :a => "Iroquois" },
  { :a => "Creek" },
  { :a => "Blackfeet" },
  { :a => "Seminole" },
  { :a => "Cheyenne" },
  { :a => "Arawak" },
  { :a => "Shawnee" },
  { :a => "Mohegan" },
  { :a => "Huron" },
  { :a => "Oneida" },
  { :a => "Lakota" },
  { :a => "Crow" },
  { :a => "Teton" },
  { :a => "Hopi" },
  { :a => "Inuit" } ] }

]
t = Topic.create(name: "F - AMERICAN HISTORY - Recent American History and Other Important Historical Information", description: "AMERICAN HISTORY - Recent American History and Other Important Historical Information - Civics (History and Government) Questions for the Naturalization Test (rev. 01/17)")
j.each do |q| 
  newq = Question.create(text: q[:q])
  
  q[:answers].each do |a|
    newa = Answer.create(text: a[:a]);
    newq.answers.push(newa)
  end
    
  newq.save
  t.questions.push(newq)
  t.save
end

### INTEGRATED CIVICS (88-100) ###
j = [
  { :num => 88, :q => "Name one of the two longest rivers in the United States.", :answers => [
  { :a => "Missouri (River)" },
  { :a => "Mississippi (River)" } ] },
  { :num => 89, :q => "What ocean is on the West Coast of the United States?", :answers => [
  { :a => "Pacific (Ocean)" } ] },
  { :num => 90, :q => "What ocean is on the East Coast of the United States?", :answers => [
  { :a => "Atlantic (Ocean)" } ] },
  { :num => 91, :q => "Name one U.S. territory.", :answers => [
  { :a => "Puerto Rico" },
  { :a => "U.S. Virgin Islands" },
  { :a => "American Samoa" },
  { :a => "Northern Mariana Islands" },
  { :a => "Guam" } ] },
  { :num => 92, :q => "Name one state that borders Canada.", :answers => [
  { :a => "Maine" },
  { :a => "New Hampshire" },
  { :a => "Vermont" },
  { :a => "New York" },
  { :a => "Pennsylvania" },
  { :a => "Ohio" },
  { :a => "Michigan" },
  { :a => "Minnesota" },
  { :a => "North Dakota" },
  { :a => "Montana" },
  { :a => "Idaho" },
  { :a => "Washington" },
  { :a => "Alaska" } ] },
  { :num => 93, :q => "Name one state that borders Mexico.", :answers => [
  { :a => "California" },
  { :a => "Arizona" },
  { :a => "New Mexico" },
  { :a => "Texas" } ] },
  { :num => 94, :q => "What is the capital of the United States?*", :answers => [
  { :a => "Washington, D.C." } ] },
  { :num => 95, :q => "Where is the Statue of Liberty?*", :answers => [
  { :a => "New York (Harbor)" },
  { :a => "Liberty Island" } ] },
  { :num => 96, :q => "Why does the flag have 13 stripes?", :answers => [
  { :a => "because there were 13 original colonies" },
  { :a => "because the stripes represent the original colonies" } ] },
  { :num => 97, :q => "Why does the flag have 50 stars?*", :answers => [
  { :a => "because there is one star for each state" },
  { :a => "because each star represents a state" },
  { :a => "because there are 50 states" } ] },
  { :num => 98, :q => "What is the name of the national anthem?", :answers => [
  { :a => "The Star-Spangled Banner" } ] },
  { :num => 99, :q => "When do we celebrate Independence Day?*", :answers => [
  { :a => "July 4" } ] },
  { :num => 100, :q => "Name two national U.S. holidays.", :answers => [
  { :a => "New Year's Day" },
  { :a => "Martin Luther King, Jr. Day" },
  { :a => "Presidents' Day" },
  { :a => "Memorial Day" },
  { :a => "Independence Day" },
  { :a => "Labor Day" },
  { :a => "Columbus Day" },
  { :a => "Veterans Day" },
  { :a => "Thanksgiving" },
  { :a => "Christmas" } ] }
]
t = Topic.create(name: "G - INTEGRATED CIVICS", description: "INTEGRATED CIVICS - Civics (History and Government) Questions for the Naturalization Test (rev. 01/17)")
j.each do |q| 
  newq = Question.create(text: q[:q])
  
  q[:answers].each do |a|
    newa = Answer.create(text: a[:a]);
    newq.answers.push(newa)
  end
    
  newq.save
  t.questions.push(newq)
  t.save
end
