# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Trainer.create(name: 'John Cena', 
              description: 'Cena is a five-time United States Champion, four-time world tag team champion, and a 16-time world champion. He is tied with Ric Flair for the most world championship reigns in WWE history, including 13 with the WWE Championship, a record for the title. He is also a two-time Royal Rumble match winner, a one-time Money in the Bank winner, and has headlined several major WWE pay-per-view events, including their flagship event, WrestleMania, five times.',
              fightingStyle: 'Boxing',
              trainerImg: 'https://raw.githubusercontent.com/Oxford-G/boxing-coaches-database/develope/app/assets/SeekPng.com_john-cena-png-2015_3862108.png')

Trainer.create(name: 'Dave Bautista',
              description: "Six-time world champion by winning the World Heavyweight Championship four times and the WWE Championship twice. His first reign with the World Heavyweight Championship is the longest reign for that title at 282 days. He has also held the World Tag Team Championship three times (twice with Ric Flair and once with John Cena) and the WWE Tag Team Championship once (with Rey Mysterio). He was the winner of the 2005 Royal Rumble match and went on to headline WrestleMania 21, one of the top five highest-grossing pay-per-view events in professional wrestling history. After leaving WWE in 2010, he re-signed in December 2013, making his first appearance back in January 2014 and won that year's Royal Rumble match. He headlined WrestleMania XXX before again departing that June. In October 2018, Bautista made his second return to WWE and faced Triple H at WrestleMania 35 in April 2019, before retiring from wrestling.",
              fightingStyle: 'Mixed Martial Arts',
              trainerImg: 'https://raw.githubusercontent.com/Oxford-G/boxing-coaches-database/develope/app/assets/batista.png')

Trainer.create(name: 'The Big Show',
              description: "A seven-time world champion, having held the WCW World Heavyweight Championship twice, the WWF/WWE Championship twice, WWE's World Heavyweight Championship twice and the ECW World Heavyweight Championship once, making him the only wrestler who has won all four titles.[12] He is also an 11-time world tag team champion, holding the WWF/World, WWE and WCW World Tag Team Championships multiple times with various partners. Having also won the Intercontinental, United States and Hardcore championships, he is the 24th Triple Crown and 12th Grand Slam winner in WWE history.[13][14] He also won the 60-man battle royal at World War 3 and the 30-man André the Giant Memorial Battle Royal at WrestleMania 31. He has headlined multiple pay-per-view events for WCW and WWF/WWE since 1995, including the 2000 edition of WWE's premier annual event, WrestleMania.",
              fightingStyle: 'Traditional',
              trainerImg: 'https://raw.githubusercontent.com/Oxford-G/boxing-coaches-database/develope/app/assets/big_show.png')

Trainer.create(name: 'Kofi Kingston',
              description: "Regarded as one of the most decorated superstars in WWE history, Kingston became a four-time Intercontinental Champion and a three-time United States Champion. In 2014, he formed The New Day with Big E and Xavier Woods. The trio went on to break the record for the longest Tag Team Championship reign in WWE history when they held the WWE Raw Tag Team Championship from August 2015 to December 2016, while defending the titles under the Freebird rule. All totaled, Kingston is a 14-time Tag Team Champion in WWE. In April 2019, Kingston defeated Daniel Bryan at WrestleMania 35 to win the WWE Championship, giving him 22 total championships in WWE.",
              fightingStyle: 'Krav magá',
              trainerImg: 'https://raw.githubusercontent.com/Oxford-G/boxing-coaches-database/develope/app/assets/kofi.png')

Trainer.create(name: 'Rey Misterio (Mystery King)',
              description: "Won the Cruiserweight Championship three times, the World Heavyweight Championship twice, the Intercontinental Championship and United States Championship twice each, and the WWE Championship once. Mysterio also won the Tag Team Championship four times, becoming WWE's 21st Triple Crown and Grand Slam champion, is a Royal Rumble match winner, and has headlined several WWE pay-per-view events.",
              fightingStyle: 'Taekwondo',
              trainerImg: 'https://raw.githubusercontent.com/Oxford-G/boxing-coaches-database/develope/app/assets/rey_misterio.png')

Trainer.create(name: 'Triple H',
              description: "won a number of championships in his career, being a five-time Intercontinental Champion, a three-time world tag team champion (two World Tag Team Championship reigns, and one Unified WWE Tag Team Championship reign), a two-time European Champion, and a fourteen-time world champion, making him the company's seventh Triple Crown Champion and second Grand Slam Champion. He is also a two-time Royal Rumble match winner, and a King of the Ring tournament winner. Later in his career, Triple H gained notability for his behind-the-scenes work at WWE, creating the developmental branch NXT, and gaining praise for his business acumen in professional wrestling.",
              fightingStyle: 'Judo',
              trainerImg: 'https://raw.githubusercontent.com/Oxford-G/boxing-coaches-database/develope/app/assets/tripleH.png')
