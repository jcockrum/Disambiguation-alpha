# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

Character.create([
  { :name => "The Corrupted Emerald King", :universe_id => 4, :created_at => "2013-04-23 17:08:43", :updated_at => "2013-04-23 17:08:43" },
  { :name => "Glenda the Wicked Witch of the North", :universe_id => 4, :created_at => "2013-04-23 17:09:08", :updated_at => "2013-04-23 17:09:08" },
  { :name => "Good Witch of the West", :universe_id => 4, :created_at => "2013-04-23 17:09:27", :updated_at => "2013-04-23 17:09:27" },
  { :name => "Harry Dresden", :universe_id => 5, :created_at => "2013-05-06 23:51:29", :updated_at => "2013-05-06 23:51:29" },
  { :name => "Karrin Murphy", :universe_id => 5, :created_at => "2013-05-06 23:54:11", :updated_at => "2013-05-06 23:54:11" },
  { :name => "Bob", :universe_id => 5, :created_at => "2013-05-06 23:55:19", :updated_at => "2013-05-06 23:55:19" },
  { :name => "Susan Rodriguez", :universe_id => 5, :created_at => "2013-05-06 23:59:22", :updated_at => "2013-05-06 23:59:22" },
  { :name => "Redd Heart", :universe_id => 6, :created_at => "2013-05-07 17:25:06", :updated_at => "2013-05-07 17:25:06" },
  { :name => "Alyce Heart", :universe_id => 6, :created_at => "2013-05-07 17:25:19", :updated_at => "2013-05-07 17:25:19" },
  { :name => "Marsh Hare", :universe_id => 6, :created_at => "2013-05-07 17:25:42", :updated_at => "2013-05-07 17:25:42" }
], :without_protection => true )



Event.create([
  { :location_id => 3, :scene_id => 7, :created_at => "2013-04-19 09:32:57", :updated_at => "2013-04-19 09:32:57" },
  { :location_id => 6, :scene_id => 8, :created_at => "2013-04-19 23:55:02", :updated_at => "2013-04-19 23:55:02" },
  { :location_id => 2, :scene_id => 3, :created_at => "2013-04-22 06:56:18", :updated_at => "2013-04-22 06:56:18" },
  { :location_id => 1, :scene_id => 4, :created_at => "2013-04-23 14:43:18", :updated_at => "2013-04-23 14:43:18" },
  { :location_id => 29, :scene_id => 5, :created_at => "2013-04-23 17:11:54", :updated_at => "2013-04-23 17:11:54" },
  { :location_id => 4, :scene_id => 6, :created_at => "2013-05-02 07:11:57", :updated_at => "2013-05-02 07:11:57" },
  { :location_id => 3, :scene_id => 4, :created_at => "2013-05-02 07:25:04", :updated_at => "2013-05-02 07:25:04" },
  { :location_id => 8, :scene_id => 1, :created_at => "2013-05-02 07:28:23", :updated_at => "2013-05-02 07:28:23" },
  { :location_id => 10, :scene_id => 1, :created_at => "2013-05-02 07:28:23", :updated_at => "2013-05-02 07:28:23" },
  { :location_id => 11, :scene_id => 1, :created_at => "2013-05-02 07:28:23", :updated_at => "2013-05-02 07:28:23" },
  { :location_id => 12, :scene_id => 1, :created_at => "2013-05-02 07:28:23", :updated_at => "2013-05-02 07:28:23" },
  { :location_id => 13, :scene_id => 2, :created_at => "2013-05-02 07:29:19", :updated_at => "2013-05-02 07:29:19" },
  { :location_id => 14, :scene_id => 8, :created_at => "2013-05-02 08:04:38", :updated_at => "2013-05-02 08:04:38" },
  { :location_id => 15, :scene_id => 8, :created_at => "2013-05-02 08:04:38", :updated_at => "2013-05-02 08:04:38" },
  { :location_id => 21, :scene_id => 8, :created_at => "2013-05-02 08:04:38", :updated_at => "2013-05-02 08:04:38" },
  { :location_id => 26, :scene_id => 8, :created_at => "2013-05-02 08:04:38", :updated_at => "2013-05-02 08:04:38" },
  { :location_id => 27, :scene_id => 8, :created_at => "2013-05-02 08:04:38", :updated_at => "2013-05-02 08:04:38" },
  { :location_id => 28, :scene_id => 8, :created_at => "2013-05-02 08:04:38", :updated_at => "2013-05-02 08:04:38" },
  { :location_id => 32, :scene_id => 10, :created_at => "2013-05-07 00:26:02", :updated_at => "2013-05-07 00:26:02" },
  { :location_id => 33, :scene_id => 11, :created_at => "2013-05-07 16:56:50", :updated_at => "2013-05-07 16:56:50" }
], :without_protection => true )



Location.create([
  { :name => "Yellow Brick Road", :universe_id => 4, :created_at => "2013-04-23 17:10:26", :updated_at => "2013-04-23 17:10:26" },
  { :name => "West Village", :universe_id => 4, :created_at => "2013-04-23 17:10:36", :updated_at => "2013-04-23 17:10:36" },
  { :name => "Mushroom Forest", :universe_id => 4, :created_at => "2013-04-23 17:10:51", :updated_at => "2013-04-23 17:10:51" },
  { :name => "Harry Dresden's office", :universe_id => 5, :created_at => "2013-05-07 00:07:00", :updated_at => "2013-05-07 00:07:00" },
  { :name => "Madison Hotel", :universe_id => 5, :created_at => "2013-05-07 15:00:51", :updated_at => "2013-05-07 15:00:51" },
  { :name => "Yellow Brick Road", :universe_id => 6, :created_at => "2013-05-07 17:38:00", :updated_at => "2013-05-07 17:38:00" }
], :without_protection => true )



Npc.create([
  { :character_id => 1, :scene_id => 2, :created_at => "2013-04-19 08:57:10", :updated_at => "2013-04-19 08:57:10" },
  { :character_id => 2, :scene_id => 2, :created_at => "2013-04-19 08:57:10", :updated_at => "2013-04-19 08:57:10" },
  { :character_id => 1, :scene_id => 3, :created_at => "2013-04-19 08:58:20", :updated_at => "2013-04-19 08:58:20" },
  { :character_id => 2, :scene_id => 3, :created_at => "2013-04-19 08:58:20", :updated_at => "2013-04-19 08:58:20" },
  { :character_id => 1, :scene_id => 4, :created_at => "2013-04-19 09:06:44", :updated_at => "2013-04-19 09:06:44" },
  { :character_id => 1, :scene_id => 7, :created_at => "2013-04-19 09:32:57", :updated_at => "2013-04-19 09:32:57" },
  { :character_id => 2, :scene_id => 7, :created_at => "2013-04-19 09:32:57", :updated_at => "2013-04-19 09:32:57" },
  { :character_id => 3, :scene_id => 7, :created_at => "2013-04-19 09:32:57", :updated_at => "2013-04-19 09:32:57" },
  { :character_id => 6, :scene_id => 8, :created_at => "2013-04-19 23:55:02", :updated_at => "2013-04-19 23:55:02" },
  { :character_id => 6, :scene_id => 9, :created_at => "2013-04-19 23:56:55", :updated_at => "2013-04-19 23:56:55" },
  { :character_id => 7, :scene_id => 4, :created_at => "2013-04-22 05:43:59", :updated_at => "2013-04-22 05:43:59" },
  { :character_id => 8, :scene_id => 4, :created_at => "2013-04-22 05:43:59", :updated_at => "2013-04-22 05:43:59" },
  { :character_id => 9, :scene_id => 4, :created_at => "2013-04-22 05:43:59", :updated_at => "2013-04-22 05:43:59" },
  { :character_id => 10, :scene_id => 4, :created_at => "2013-04-22 05:43:59", :updated_at => "2013-04-22 05:43:59" },
  { :character_id => 11, :scene_id => 4, :created_at => "2013-04-22 05:43:59", :updated_at => "2013-04-22 05:43:59" },
  { :character_id => 1, :scene_id => 6, :created_at => "2013-04-22 06:24:28", :updated_at => "2013-04-22 06:24:28" },
  { :character_id => 7, :scene_id => 6, :created_at => "2013-04-22 06:28:36", :updated_at => "2013-04-22 06:28:36" },
  { :character_id => 10, :scene_id => 6, :created_at => "2013-04-22 06:28:36", :updated_at => "2013-04-22 06:28:36" },
  { :character_id => 12, :scene_id => 6, :created_at => "2013-04-22 06:28:36", :updated_at => "2013-04-22 06:28:36" },
  { :character_id => 13, :scene_id => 6, :created_at => "2013-04-22 06:28:36", :updated_at => "2013-04-22 06:28:36" },
  { :character_id => 1, :scene_id => 3, :created_at => "2013-04-22 06:56:18", :updated_at => "2013-04-22 06:56:18" },
  { :character_id => 2, :scene_id => 3, :created_at => "2013-04-22 06:56:18", :updated_at => "2013-04-22 06:56:18" },
  { :character_id => 3, :scene_id => 3, :created_at => "2013-04-22 06:56:18", :updated_at => "2013-04-22 06:56:18" },
  { :character_id => 2, :scene_id => 4, :created_at => "2013-04-23 14:43:18", :updated_at => "2013-04-23 14:43:18" },
  { :character_id => 3, :scene_id => 4, :created_at => "2013-04-23 14:43:18", :updated_at => "2013-04-23 14:43:18" },
  { :character_id => 1, :scene_id => 5, :created_at => "2013-04-23 17:11:54", :updated_at => "2013-04-23 17:11:54" },
  { :character_id => 26, :scene_id => 5, :created_at => "2013-04-23 17:11:54", :updated_at => "2013-04-23 17:11:54" },
  { :character_id => 28, :scene_id => 6, :created_at => "2013-05-02 06:32:31", :updated_at => "2013-05-02 06:32:31" },
  { :character_id => 27, :scene_id => 7, :created_at => "2013-05-02 06:43:51", :updated_at => "2013-05-02 06:43:51" },
  { :character_id => 28, :scene_id => 7, :created_at => "2013-05-02 06:43:51", :updated_at => "2013-05-02 06:43:51" },
  { :character_id => 27, :scene_id => 4, :created_at => "2013-05-02 07:25:04", :updated_at => "2013-05-02 07:25:04" },
  { :character_id => 28, :scene_id => 4, :created_at => "2013-05-02 07:25:04", :updated_at => "2013-05-02 07:25:04" },
  { :character_id => 28, :scene_id => 3, :created_at => "2013-05-02 07:26:07", :updated_at => "2013-05-02 07:26:07" },
  { :character_id => 17, :scene_id => 1, :created_at => "2013-05-02 07:28:23", :updated_at => "2013-05-02 07:28:23" },
  { :character_id => 18, :scene_id => 1, :created_at => "2013-05-02 07:28:23", :updated_at => "2013-05-02 07:28:23" },
  { :character_id => 19, :scene_id => 1, :created_at => "2013-05-02 07:28:23", :updated_at => "2013-05-02 07:28:23" },
  { :character_id => 20, :scene_id => 1, :created_at => "2013-05-02 07:28:23", :updated_at => "2013-05-02 07:28:23" },
  { :character_id => 17, :scene_id => 2, :created_at => "2013-05-02 07:29:19", :updated_at => "2013-05-02 07:29:19" },
  { :character_id => 20, :scene_id => 2, :created_at => "2013-05-02 07:29:19", :updated_at => "2013-05-02 07:29:19" },
  { :character_id => 17, :scene_id => 8, :created_at => "2013-05-02 08:04:38", :updated_at => "2013-05-02 08:04:38" },
  { :character_id => 19, :scene_id => 8, :created_at => "2013-05-02 08:04:38", :updated_at => "2013-05-02 08:04:38" },
  { :character_id => 20, :scene_id => 8, :created_at => "2013-05-02 08:04:38", :updated_at => "2013-05-02 08:04:38" },
  { :character_id => 21, :scene_id => 8, :created_at => "2013-05-02 08:04:38", :updated_at => "2013-05-02 08:04:38" },
  { :character_id => 22, :scene_id => 8, :created_at => "2013-05-02 08:04:38", :updated_at => "2013-05-02 08:04:38" },
  { :character_id => 33, :scene_id => 10, :created_at => "2013-05-07 00:26:02", :updated_at => "2013-05-07 00:26:02" },
  { :character_id => 33, :scene_id => 11, :created_at => "2013-05-07 16:56:50", :updated_at => "2013-05-07 16:56:50" },
  { :character_id => 35, :scene_id => 11, :created_at => "2013-05-07 16:56:50", :updated_at => "2013-05-07 16:56:50" }
], :without_protection => true )



Part.create([
  { :content => "A garrison town on the northern coast of Skyrim. Capital City of The Pale It was after the destruction of a fortress in Dawnstar during 2E 283 that Potentate Versidue-Shaie declared martial law, leading to one of the most brutal and bloody periods in the history of Tamriel. Dawnstar is one of the northern most cities in Skyrim along with Solitude and Winterhold.", :partible_id => 6, :partible_type => "Location", :created_at => "2013-04-19 23:22:59", :updated_at => "2013-04-19 23:22:59" },
  { :content => "A city in south-western Skyrim, Capital of Falkreath Hold. Close to the border with both and Hammerfell. Just across the border in Hammerfell lies the town of Elinhir. Falkreath is known for its cemetery, which dominates the southern part of the town.", :partible_id => 7, :partible_type => "Location", :created_at => "2013-04-19 23:23:34", :updated_at => "2013-04-19 23:23:34" },
  { :content => "A city in west-central Skyrim, the capital city of The Reach. Notable for possessing the Imperial College of the Voice, which was founded by Tiber Septim to restore the Voice to the art of warfare. Half of the town is controlled by a wealth family known as the Silver-Bloods, and violence runs rampant throughout most of the city because of the Forsworn.", :partible_id => 8, :partible_type => "Location", :created_at => "2013-04-19 23:24:04", :updated_at => "2013-04-19 23:24:04" },
  { :content => "Aela the Huntress is a lycanthropic female Nord in The Elder Scrolls V: Skyrim. She is a member of The Companions and one of the five members of The Circle. Residing in Jorrvaskr with the other Companions, Aela offers lycanthropy, deep into that questline. Additionally, she becomes a candidate for marriage, as well as a follower.", :partible_id => 6, :partible_type => "Character", :created_at => "2013-04-19 23:26:39", :updated_at => "2013-04-19 23:26:39" },
  { :content => "A dog found along the road outside Falkreath. Barbas is Clavicus Vile's companion, a supernatural creature that usually takes the form of a dog.", :partible_id => 7, :partible_type => "Character", :created_at => "2013-04-19 23:27:50", :updated_at => "2013-04-19 23:27:50" },
  { :content => "Elisif the Fair is the current Jarl of Solitude and the widow of High King Torygg, the last elected High King of Skyrim prior to the Stormcloak Rebellion. While Elisif holds court at her palace in Solitude, the majority of her courtly duties are handled by her steward, Falk Firebeard. Bolgeir Bearclaw serves as her Housecarl, while Bryling and Erikur serve as her Thanes.", :partible_id => 8, :partible_type => "Character", :created_at => "2013-04-19 23:28:52", :updated_at => "2013-04-19 23:28:52" },
  { :content => "'ve been captured by the Empire and been sentenced to death alongside Stormcloak rebels. We were being taken to Helgen, but before I could be executed Alduin appeared and attacked the town. I need to find a way out of the town.", :partible_id => 8, :partible_type => "Scene", :created_at => "2013-04-19 23:55:46", :updated_at => "2013-04-19 23:55:46" },
  { :content => "Helgen is a thriving town and keep on the southern border of Skyrim with Cyrodiil, the keep is controlled by the Imperial Legion.", :partible_id => 9, :partible_type => "Location", :created_at => "2013-04-22 05:33:24", :updated_at => "2013-04-22 05:33:24" },
  { :content => "It has a few distinguishing features: a wall, which is unusual for a smaller town. It also has a large keep, which is unusual for anywhere but forts and walled hold capitals. It is possible that it is the Imperial Second Chain in power in Skyrim, behind Castle Dour, considering the strategic location not far from the southern border with Cyrodiil and mid-point for the north-easterly trade routes to Whiterun.", :partible_id => 9, :partible_type => "Location", :created_at => "2013-04-22 05:35:06", :updated_at => "2013-04-22 05:35:06" },
  { :content => "this is the test", :partible_id => 3, :partible_type => "Scene", :created_at => "2013-04-22 06:56:35", :updated_at => "2013-04-22 06:56:35" },
  { :content => "Due to a powerful magic ritual the Emerald King and the good witch caused OZ and Wonderland to merge into one world.  The main players from OZ have opposite alignments while the areas from Wonderland are mostly a necrotic wasteland except for the mushroom forest.", :partible_id => 4, :partible_type => "Universe", :created_at => "2013-04-23 17:07:35", :updated_at => "2013-04-23 17:07:35" },
  { :content => "tornato", :partible_id => 5, :partible_type => "Scene", :created_at => "2013-04-24 09:22:16", :updated_at => "2013-04-24 09:22:16" },
  { :content => "House flies", :partible_id => 5, :partible_type => "Scene", :created_at => "2013-04-24 09:22:27", :updated_at => "2013-04-24 09:22:27" },
  { :content => "House lands", :partible_id => 5, :partible_type => "Scene", :created_at => "2013-04-24 09:22:33", :updated_at => "2013-04-24 09:22:33" },
  { :content => "This is stuff about this guy", :partible_id => 1, :partible_type => "Character", :created_at => "2013-04-29 05:19:06", :updated_at => "2013-04-29 05:19:06" },
  { :content => "As much as needed", :partible_id => 1, :partible_type => "Character", :created_at => "2013-04-29 05:19:27", :updated_at => "2013-04-29 05:19:27" },
  { :content => "its made of dirt", :partible_id => 1, :partible_type => "Location", :created_at => "2013-04-29 06:12:48", :updated_at => "2013-04-29 06:12:48" },
  { :content => "Default content", :partible_id => 27, :partible_type => "Character", :created_at => "2013-04-30 08:41:09", :updated_at => "2013-04-30 08:41:09" },
  { :content => "", :partible_id => 7, :partible_type => "Scene", :created_at => "2013-05-02 07:09:20", :updated_at => "2013-05-02 07:09:20" },
  { :content => "", :partible_id => 4, :partible_type => "Scene", :created_at => "2013-05-02 07:25:40", :updated_at => "2013-05-02 07:25:40" },
  { :content => "The next things that happend", :partible_id => 1, :partible_type => "Scene", :created_at => "2013-05-02 07:37:56", :updated_at => "2013-05-02 07:37:56" },
  { :content => "While walking down the road you find three stones", :partible_id => 2, :partible_type => "Scene", :created_at => "2013-05-02 07:39:10", :updated_at => "2013-05-02 07:39:10" },
  { :content => "test content", :partible_id => 28, :partible_type => "Character", :created_at => "2013-05-06 19:56:09", :updated_at => "2013-05-06 19:56:09" },
  { :content => "The Dresden Files is a contemporary urban fantasy series of novels by author Jim Butcher. They are told in first person narrative by the human wizard and private investigator Harry Dresden, who tells of his investigations into supernatural disturbances in modern-day Chicago.\r\n", :partible_id => 5, :partible_type => "Universe", :created_at => "2013-05-06 23:49:05", :updated_at => "2013-05-06 23:49:05" },
  { :content => "Harry Blackstone Copperfield Dresden is a male human wizard, working as a private investigator out of Chicago, USA. He is the protagonist and first person narrator of The Dresden Files series.", :partible_id => 33, :partible_type => "Character", :created_at => "2013-05-06 23:52:04", :updated_at => "2013-05-06 23:52:04" },
  { :content => "A human woman, and member of the Chicago Police Department at the Special Investigations division", :partible_id => 35, :partible_type => "Character", :created_at => "2013-05-06 23:54:43", :updated_at => "2013-05-06 23:54:43" },
  { :content => "Bob is an air spirit of intellect inhabiting a human skull. He acts as Harry Lab assistant and living encyclopedia of Magic.  He's been assisting wizards since the dark ages. Bob doesn't forget anything ever. Bob has a great experience in applied magic from being owned by several wizards, as well as innate knowledge of the rules of the supernatural and their current status.", :partible_id => 37, :partible_type => "Character", :created_at => "2013-05-06 23:56:27", :updated_at => "2013-05-06 23:56:27" },
  { :content => "A former investigative reporter for the paranormal newspaper The Midwestern Arcane. It's through her investigations that she encountered Harry", :partible_id => 39, :partible_type => "Character", :created_at => "2013-05-07 00:00:01", :updated_at => "2013-05-07 00:00:01" },
  { :content => "The office is located in a building in midtown Chicago. The office's door holds a frosted-glass window, with the lettering \"HARRY DRESDEN, WIZARD\" painted on.", :partible_id => 32, :partible_type => "Location", :created_at => "2013-05-07 00:08:04", :updated_at => "2013-05-07 00:08:04" },
  { :content => "Directly in front of my office door is a table arranged with a series of pamphlets with titles like Real\r\nWitches Don't Float So Good , and Magic in the Twenty-first Century.", :partible_id => 32, :partible_type => "Location", :created_at => "2013-05-07 00:20:33", :updated_at => "2013-05-07 00:20:33" },
  { :content => "To the right of the door is a wall lined with filing cabinets and a couple of easy chairs. ", :partible_id => 32, :partible_type => "Location", :created_at => "2013-05-07 00:21:11", :updated_at => "2013-05-07 00:21:11" },
  { :content => "The desk is in the back corner, to the right as you come in the door, diagonal from it. It's a corner office.\r\nThere are windows on either of the outside walls with shades were, as usual, drawn. ", :partible_id => 32, :partible_type => "Location", :created_at => "2013-05-07 00:22:29", :updated_at => "2013-05-07 00:22:29" },
  { :content => "The overhead fan, in the center of the room,makes a tired little groan on every rotation.", :partible_id => 32, :partible_type => "Location", :created_at => "2013-05-07 00:23:55", :updated_at => "2013-05-07 00:23:55" },
  { :content => "I heard the mailman approach my office door, half an hour earlier than usual. He didn't sound right. His\r\nfootsteps fell more heavily, jauntily, and he whistled. A new guy. He whistled his way to my office door,\r\nthen fell silent for a moment. Then he laughed.\r\nThen he knocked.\r\nI winced. My mail comes through the mail slot unless it's registered. I get a really limited selection of\r\nregistered mail, and it's never good news. I got up out of my office chair and opened the door.\r\nThe new mailman, who looked like a basketball with arms and legs and a sunburned, balding head, was\r\nchuckling at the sign on the door glass. He glanced at me and hooked a thumb toward the sign. \"You're\r\nkidding, right?\"\r\n", :partible_id => 10, :partible_type => "Scene", :created_at => "2013-05-07 00:49:20", :updated_at => "2013-05-07 00:49:20" },
  { :content => "I read the sign (people change it occasionally), and shook my head. \"No, I'm serious. Can I have my\r\nmail, please.\"\r\n\"So, uh. Like parties, shows, stuff like that?\" He looked past me, as though he expected to see a white\r\ntiger, or possibly some skimpily clad assistants prancing around my one-room office.\r\nI sighed, not in the mood to get mocked again, and reached for the mail he held in his hand. \"No, not like\r\nthat. I don't do parties.\"\r\nHe held on to it, his head tilted curiously. \"So what? Some kinda fortune-teller? Cards and crystal balls\r\nand things?\"\r\n\"No,\" I told him. \"I'm not a psychic.\" I tugged at the mail.\r\nHe held on to it. \"What are you, then?\"\r\n\"What's the sign on the door say?\"\r\n\"It says 'Harry Dresden. Wizard.' \"", :partible_id => 10, :partible_type => "Scene", :created_at => "2013-05-07 00:49:29", :updated_at => "2013-05-07 00:49:29" },
  { :content => "\"That's me,\" I confirmed.\r\n\"An actual wizard?\" he asked, grinning, as though I should let him in on the joke. \"Spells and potions?\r\nDemons and incantations? Subtle and quick to anger?\"\r\n\"Not so subtle.\" I jerked the mail out of his hand and looked pointedly at his clipboard. \"Can I sign for\r\nmy mail please.\"\r\nThe new mailman's grin vanished, replaced with a scowl. He passed over the clipboard to let me sign for\r\nthe mail (another late notice from my landlord), and said, \"You're a nut. That's what you are.\" He took his\r\nclipboard back, and said, \"You have a nice day, sir.\"\r\nI watched him go.\r\n\"Typical,\" I muttered, and shut the door.\r\nMy name is Harry Blackstone Copperfield Dresden. Conjure by it at your own risk. I'm a wizard. I\r\nwork out of an office in midtown Chicago . As far as I know, I'm the only openly practicing professional\r\nwizard in the country. You can find me in the yellow pages, under \"Wizards.\" Believe it or not, I'm the\r\nonly one there. My ad looks like this:\r\nHARRY DRESDEN-WIZARD\r\nLost Items Found. Paranormal Investigations.\r\nConsulting. Advice. Reasonable Rates.\r\nNo Love Potions, Endless Purses, Parties, or Other Entertainment\r\nYou'd be surprised how many people call just to ask me if I'm serious. But then, if you'd seen the things\r\nI'd seen, if you knew half of what I knew, you'd wonder how anyone could not think I was serious.", :partible_id => 10, :partible_type => "Scene", :created_at => "2013-05-07 00:50:13", :updated_at => "2013-05-07 00:50:13" },
  { :content => "The end of the twentieth century and the dawn of the new millennium had seen something of a\r\nrenaissance in the public awareness of the paranormal. Psychics, haunts, vampires-you name it. People\r\nstill didn't take them seriously, but all the things Science had promised us hadn't come to pass. Disease\r\nwas still a problem. Starvation was still a problem. Violence and crime and war were still problems. In\r\nspite of the advance of technology, things just hadn't changed the way everyone had hoped and thought\r\nthey would.\r\nScience, the largest religion of the twentieth century, had become somewhat tarnished by images of\r\nexploding space shuttles, crack babies, and a generation of complacent Americans who had allowed the\r\ntelevision to raise their children. People were looking for something-I think they just didn't know what.\r\nAnd even though they were once again starting to open their eyes to the world of magic and the arcane\r\nthat had been with them all the while, they still thought I must be some kind of joke.", :partible_id => 10, :partible_type => "Scene", :created_at => "2013-05-07 00:50:51", :updated_at => "2013-05-07 00:50:51" },
  { :content => "Karrin Murphy was waiting for me outside the Madison . Karrin and I are a study in contrasts. Where I\r\nam tall and lean, she's short and stocky. Where I have dark hair and dark eyes, she's got Shirley Temple\r\nblond locks and baby blues. Where my features are all lean and angular, with a hawkish nose and a sharp\r\nchin, hers are round and smooth, with the kind of cute nose you'd expect on a cheerleader.", :partible_id => 11, :partible_type => "Scene", :created_at => "2013-05-07 16:57:48", :updated_at => "2013-05-07 16:57:48" },
  { :content => "It was cool and windy, like it usually is in March, and she wore a long coat that covered her pantsuit.\r\nMurphy never wore dresses, though I suspected she'd have muscular, well-shaped legs, like a gymnast.\r\nShe was built for function, and had a pair of trophies in her office from aikido tournaments to prove it.\r\nHer hair was cut at shoulder length and whipped out wildly in the spring wind. She wasn't wearing\r\nearrings, and her makeup was of sufficient quality and quantity that it was tough to tell she had on any at all. She looked more like a favorite aunt or a cheerful mother than a hard-bitten homicide detective.", :partible_id => 11, :partible_type => "Scene", :created_at => "2013-05-07 16:58:50", :updated_at => "2013-05-07 16:58:50" },
  { :content => "\"Don't you have any other jackets, Dresden ?\" she asked, as I came within hailing distance. There were\r\nseveral police cars parked illegally in front of the building. She glanced at my eyes for a half second and\r\nthen away, quickly. I had to give her credit. It was more than most people did. It wasn't really dangerous\r\nunless you did it for several seconds, but I was used to anyone who knew I was a wizard making it a\r\npoint not to glance at my face.\r\nI looked down at my black canvas duster, with its heavy mantling and waterproof lining and sleeves\r\nactually long enough for my arms. \"What's wrong with this one?\"\r\n\"It belongs on the set of El Dorado .\"\r\n\"And?\"\r\nShe snorted, an indelicate sound from so small a woman, and spun on her heel to walk toward the\r\nhotel's front doors.", :partible_id => 11, :partible_type => "Scene", :created_at => "2013-05-07 16:59:17", :updated_at => "2013-05-07 16:59:17" },
  { :content => "I caught up and walked a little ahead of her.\r\nShe sped her pace. So did I. We raced one another toward the front door, with increasing speed,\r\nthrough the puddles left over from last night's rain.\r\nMy legs were longer; I got there first. I opened the door for her and gallantly gestured for her to go in. It\r\nwas an old contest of ours. Maybe my values are outdated, but I come from an old school of thought. I\r\nthink that men ought to treat women like something other than just shorter, weaker men with breasts. Try\r\nand convict me if I'm a bad person for thinking so. I enjoy treating a woman like a lady, opening doors\r\nfor her, paying for shared meals, giving flowers-all that sort of thing.\r\nIt irritates the hell out of Murphy, who had to fight and claw and play dirty with the hairiest men in\r\nChicago to get as far as she has. She glared up at me while I stood there holding open the door, but there\r\nwas a reassurance about the glare, a relaxation. She took an odd sort of comfort in our ritual, annoying\r\nas she usually found it.\r\nHow bad was it up on the seventh floor, anyway?", :partible_id => 11, :partible_type => "Scene", :created_at => "2013-05-07 16:59:46", :updated_at => "2013-05-07 16:59:46" },
  { :content => "World", :partible_id => 6, :partible_type => "Universe", :created_at => "2013-05-07 17:06:50", :updated_at => "2013-05-07 17:06:50" },
  { :content => "squished", :partible_id => 6, :partible_type => "Universe", :created_at => "2013-05-07 17:23:56", :updated_at => "2013-05-07 17:23:56" },
  { :content => "Unholy Undead Abomination.", :partible_id => 42, :partible_type => "Character", :created_at => "2013-05-07 17:26:06", :updated_at => "2013-05-07 17:26:06" }
], :without_protection => true )



Role.create([
  { :name => "admin", :resource_id => nil, :resource_type => nil, :created_at => "2013-04-23 04:01:41", :updated_at => "2013-04-23 04:01:41" },
  { :name => "author", :resource_id => nil, :resource_type => nil, :created_at => "2013-04-23 04:01:41", :updated_at => "2013-04-23 04:01:41" },
  { :name => "collaborator", :resource_id => nil, :resource_type => nil, :created_at => "2013-04-23 04:01:41", :updated_at => "2013-04-23 04:01:41" }
], :without_protection => true )



Scene.create([
  { :name => "follow the yellow brick", :branch => nil, :universe_id => 4, :created_at => "2013-04-23 17:11:54", :updated_at => "2013-04-24 09:21:56" },
  { :name => "Harry in the office", :branch => nil, :universe_id => 5, :created_at => "2013-05-07 00:26:02", :updated_at => "2013-05-07 00:26:02" },
  { :name => "at the hotel", :branch => nil, :universe_id => 5, :created_at => "2013-05-07 16:56:50", :updated_at => "2013-05-07 16:56:50" }
], :without_protection => true )



Story.create([
  { :name => "another day in the OZ", :chapter => 1, :universe_id => 4, :created_at => "2013-04-24 09:23:21", :updated_at => "2013-04-24 09:23:21" },
  { :name => "Storm Front", :chapter => 1, :universe_id => 5, :created_at => "2013-05-07 00:57:57", :updated_at => "2013-05-07 00:57:57" }
], :without_protection => true )



Storyline.create([
  { :story_id => 5, :scene_id => 5, :created_at => "2013-04-20 17:44:21", :updated_at => "2013-04-20 17:44:21" },
  { :story_id => 5, :scene_id => 1, :created_at => "2013-04-22 16:52:51", :updated_at => "2013-04-22 16:52:51" },
  { :story_id => 5, :scene_id => 2, :created_at => "2013-04-22 16:52:51", :updated_at => "2013-04-22 16:52:51" },
  { :story_id => 8, :scene_id => 5, :created_at => "2013-04-24 09:38:32", :updated_at => "2013-04-24 09:38:32" },
  { :story_id => 9, :scene_id => 5, :created_at => "2013-04-24 09:39:12", :updated_at => "2013-04-24 09:39:12" },
  { :story_id => 6, :scene_id => 5, :created_at => "2013-04-24 17:51:00", :updated_at => "2013-04-24 17:51:00" },
  { :story_id => 4, :scene_id => 3, :created_at => "2013-04-29 06:25:51", :updated_at => "2013-04-29 06:25:51" },
  { :story_id => 4, :scene_id => 4, :created_at => "2013-04-29 06:25:51", :updated_at => "2013-04-29 06:25:51" },
  { :story_id => 1, :scene_id => 1, :created_at => "2013-05-02 07:37:20", :updated_at => "2013-05-02 07:37:20" },
  { :story_id => 1, :scene_id => 2, :created_at => "2013-05-02 07:37:20", :updated_at => "2013-05-02 07:37:20" },
  { :story_id => 3, :scene_id => 8, :created_at => "2013-05-02 08:07:56", :updated_at => "2013-05-02 08:07:56" },
  { :story_id => 7, :scene_id => 10, :created_at => "2013-05-07 00:57:57", :updated_at => "2013-05-07 00:57:57" },
  { :story_id => 7, :scene_id => 11, :created_at => "2013-05-07 17:00:10", :updated_at => "2013-05-07 17:00:10" }
], :without_protection => true )



Universe.create([
  { :name => "Under OZ", :user_id => 2, :created_at => "2013-04-23 17:05:09", :updated_at => "2013-04-23 17:05:09" },
  { :name => "Dresdenverse", :user_id => 1, :created_at => "2013-05-06 23:47:09", :updated_at => "2013-05-06 23:47:09" },
  { :name => "Wonder OZ", :user_id => 3, :created_at => "2013-05-07 16:57:25", :updated_at => "2013-05-07 16:57:25" }
], :without_protection => true )



User.create([
  { :email => "johncockrum1@gmail.com", :encrypted_password => "$2a$10$TQvApDfi9E1eaxWu/bjQ7e4RQMkll3pwB/jaLrS/2IFWKJ.QGm6FG", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => "2013-05-06 09:32:05", :sign_in_count => 6, :current_sign_in_at => "2013-05-06 19:16:12", :last_sign_in_at => "2013-05-06 09:32:05", :current_sign_in_ip => "127.0.0.1", :last_sign_in_ip => "127.0.0.1", :created_at => "2013-04-23 04:01:41", :updated_at => "2013-05-06 19:16:12", :name => "Johnny" },
  { :email => "dreagunluthe@gmail.com", :encrypted_password => "$2a$10$sWeH0lkyW//r3Hgg8bVh8.3Jk.LUpk5V6QXOiODKph3u1DzjIhGEq", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 1, :current_sign_in_at => "2013-05-07 16:56:58", :last_sign_in_at => "2013-05-07 16:56:58", :current_sign_in_ip => "192.168.2.127", :last_sign_in_ip => "192.168.2.127", :created_at => "2013-05-07 16:56:58", :updated_at => "2013-05-07 16:56:58", :name => "Patrick" }
], :without_protection => true )


