# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Superhero.destroy_all

batman_bio = %Q(Batman is a fictional superhero appearing in American comic books published by DC Comics.
  The character was created by artist Bob Kane and writer Bill Finger, and first appeared in Detective Comics #27 (May 1939).
    Originally named "the Bat-Man," the character is also referred to by such epithets as the "Caped Crusader", the "Dark Knight", and the "World's Greatest Detective".
    Batman's secret identity is Bruce Wayne, an American billionaire, playboy, philanthropist, and owner of Wayne Enterprises.
    After witnessing the murder of his parents as a child, he swore revenge on criminals, an oath tempered by a sense of justice.
    Wayne trains himself both physically and intellectually and crafts a bat-inspired persona to fight crime. Batman operates in the fictional Gotham City,
    with assistance from various supporting characters, including his butler Alfred, police commissioner Jim Gordon, and vigilante allies such as Robin.
    Unlike most superheroes, Batman does not possess any superpowers.
    Rather, he relies on his genius intellect, physical prowess, martial arts abilities,
    detective skills, science and technology, vast wealth, provocation of fear and intimidation, and an indomitable will in his continuous war on crime.
    A large assortment of villains make up Batman's rogues gallery, including his archenemy the Joker.</p>
)
batman = Superhero.create!(name: 'Batman', photo_url: 'batman.jpeg', body: batman_bio)

superman_bio = %Q(Superman is a fictional superhero appearing in American comic books published by DC Comics.
  The character is considered an American cultural icon.
  The Superman character was created by writer Jerry Siegel and artist Joe Shuster in 1933;
  later, in 1938, the character was sold to Detective Comics, Inc. (later DC Comics).
  Superman first appeared in Action Comics #1 (June 1938) and subsequently appeared in various radio serials, newspaper strips, television programs, films, and video games.
   With the character's success, Superman helped to create the superhero genre and establish its primacy within the American comic book.

Superman's appearance is distinctive and iconic; he usually wears a blue costume, red cape, and stylized red-and-yellow "S" shield on his chest.
This shield is used in a myriad of media to symbolize the character.
The origin story of Superman relates that he was born Kal-El on the planet Krypton, before being rocketed to Earth as an infant by his scientist father Jor-El,
moments before Krypton's destruction.
Discovered and adopted by a Kansas farmer and his wife, the child is raised as Clark Kent and imbued with a strong moral compass.
Very early on he started to display superhuman abilities, which, upon reaching maturity, he resolved to use for the benefit of humanity.
Superman resides and operates in the fictional American city of Metropolis. As Clark Kent,
Superman's secret identity, he is a journalist for the Daily Planet, a Metropolis newspaper.
Superman's primary love interest is Lois Lane, and his archenemy is supervillain Lex Luthor.</p>
)
superman = Superhero.create!(name: 'Superman', photo_url: 'superman.jpeg', body: superman_bio)

the_flash_bio = %Q(The Flash is a superhero appearing in American comic books published by DC Comics. Created by writer Gardner Fox and artist Harry Lampert,
  the original Flash first appeared in Flash Comics #1 (January 1940).[1]

Nicknamed the "Scarlet Speedster", the "Crimson Comet", "The Blur", and "The Streak", all incarnations of the Flash possess "super speed",
which includes the ability to run and move extremely fast, use superhuman reflexes, and seemingly violate certain laws of physics.
Thus far, four different characters—each of whom somehow gained the power of "super-speed"—have assumed the identity of the Flash: Jay Garrick (1940–present),
Barry Allen (1956–1985, 2008–present), Wally West (1986–2006, 2007–2012, 2013–present), and Bart Allen (2006–2007).
Before Wally and Bart's ascension to the mantle of the Flash, they were both Flash protégés under the same name Kid Flash (Bart was also known as Impulse).)
the_flash = Superhero.create!(name: 'The Flash', photo_url: 'the_flash.jpeg', body: the_flash_bio)
