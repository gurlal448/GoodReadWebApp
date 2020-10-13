GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'94d87cec-1ebc-40f9-a3fc-8664f11cc8f9', N'power', N'power', N'3d563eb2-4d2b-4e30-a866-2936716debc1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'577d9e6e-eba5-44fb-87a1-2fef200c6b0b', N'poweruser@goodreads.com', N'POWERUSER@GOODREADS.COM', N'poweruser@goodreads.com', N'POWERUSER@GOODREADS.COM', 1, N'AQAAAAEAACcQAAAAEJk8TU178KAAsmaRs7WDDmkOBnMkHi2PF+ltVFxf0NorIo2H+UlWpdiWxy/QhenLAA==', N'M35GTTKDPRG6F4GX5XKZKGH3SUONUJ2L', N'7ac309c7-ae78-4534-99c1-5eb2a8ba1207', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c57bc8a7-b763-462c-8dd2-bb4e2ae25682', N'admin@goodreads.com', N'ADMIN@GOODREADS.COM', N'admin@goodreads.com', N'ADMIN@GOODREADS.COM', 0, N'AQAAAAEAACcQAAAAEHYFPnvzCBIwNtsu1S4Re0gr8Y3N5apZ5nzU5DLmo4e7h7gczegcN1R7pHnA5cNR9A==', N'XNEURQBGHJZBMR7OBBVOBTS73SOR7OOP', N'17fbb876-82c5-47ac-b7f5-500e8f9b77ea', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'577d9e6e-eba5-44fb-87a1-2fef200c6b0b', N'94d87cec-1ebc-40f9-a3fc-8664f11cc8f9')
GO
SET IDENTITY_INSERT [dbo].[BookTypes] ON 
GO
INSERT [dbo].[BookTypes] ([TypeID], [TypeName]) VALUES (1, N'Action & Adventure')
GO
INSERT [dbo].[BookTypes] ([TypeID], [TypeName]) VALUES (2, N'Biographies, Diaries & True Account')
GO
INSERT [dbo].[BookTypes] ([TypeID], [TypeName]) VALUES (3, N'Computer & Internet')
GO
INSERT [dbo].[BookTypes] ([TypeID], [TypeName]) VALUES (4, N'Crime, Thriller & Mystery')
GO
INSERT [dbo].[BookTypes] ([TypeID], [TypeName]) VALUES (5, N'History')
GO
SET IDENTITY_INSERT [dbo].[BookTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Publications] ON 
GO
INSERT [dbo].[Publications] ([PublicationID], [PublicationName]) VALUES (1, N'Asia-Pacific Holdings Private Limited')
GO
INSERT [dbo].[Publications] ([PublicationID], [PublicationName]) VALUES (2, N'Careermonk Publications')
GO
INSERT [dbo].[Publications] ([PublicationID], [PublicationName]) VALUES (3, N'Jaico Publishing House')
GO
INSERT [dbo].[Publications] ([PublicationID], [PublicationName]) VALUES (4, N'Oculus Publishers')
GO
INSERT [dbo].[Publications] ([PublicationID], [PublicationName]) VALUES (5, N'Orient BlackSwan')
GO
INSERT [dbo].[Publications] ([PublicationID], [PublicationName]) VALUES (6, N'Orion')
GO
INSERT [dbo].[Publications] ([PublicationID], [PublicationName]) VALUES (7, N'Pottermore Publishing')
GO
INSERT [dbo].[Publications] ([PublicationID], [PublicationName]) VALUES (8, N'Simon & Schuster')
GO
INSERT [dbo].[Publications] ([PublicationID], [PublicationName]) VALUES (9, N'Skyhorse')
GO
INSERT [dbo].[Publications] ([PublicationID], [PublicationName]) VALUES (10, N'Viking')
GO
INSERT [dbo].[Publications] ([PublicationID], [PublicationName]) VALUES (11, N'Westland')
GO
SET IDENTITY_INSERT [dbo].[Publications] OFF
GO
SET IDENTITY_INSERT [dbo].[Books] ON 
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (1, N'Harry Potter and the Philosophers Stone', N'Harry Potter has never even heard of Hogwarts when the letters start dropping on the doormat at number four, Privet Drive. Addressed in green ink on yellowish parchment with a purple seal, they are swiftly confiscated by his grisly aunt and uncle. Then, on Harry\''s eleventh birthday, a great beetle-eyed giant of a man called Rubeus Hagrid bursts in with some astonishing news: Harry Potter is a wizard, and he has a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin!', 325, N'J.K. Rowling', N'.jpg', 1, 7)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (2, N'The Tales of Beedle the Bard', N'Performed by talented actors from across the Wizarding World, this is the first ever audiobook edition of The Tales of Beedle the Bard, which was originally written in 2007 by J.K. Rowling and has raised money for her children’s charity Lumos ever since.<br>\r\n\r\nAs familiar to Hogwarts students as \"Cinderella\" and \"Sleeping Beauty\" are to Muggle children, Beedle’s stories are a collection of popular fairy tales written for young witches and wizards. So, if you’re wondering what’s in store in this brand-new audio edition...well, your ears are in for a treat.<br>\r\n\r\nOnce you’ve checked this fabulous Hogwarts Library book out, you’ll start by hearing the author’s introduction, read by Sally Mortemore (librarian Madam Pince from the Harry Potter films). Then it’s time for the tales to begin....<br>\r\n\r\nYou’ll laugh along to The Wizard and the Hopping Pot  as you listen to the havoc wreaked by a father’s impish gift to his son, read by Warwick Davis (Professor Flitwick - Ha', 300, N'J.K. Rowling', N'.jpg', 1, 7)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (3, N'The Girl in Room 105', N'Hi, I’m Keshav, and my life is screwed. I hate my job and my girlfriend left me. Ah, the beautiful Zara. Zara is from Kashmir. She is a Muslim. And did I tell you my family is a bit, well, traditional? Anyway, leave that. Zara and I broke up four years ago. She moved on in life. I didn’t. I drank every night to forget her. I called, messaged, and stalked her on social media. She just ignored me. However, that night, on the eve of her birthday, Zara messaged me. She called me over, like old times, to her hostel room 105. I shouldn’t have gone, but I did… and my life changed forever. This is not a love story. It is an unlove story.', 250, N'Chetan Bhagat', N'.jpg', 1, 11)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (4, N'One Up On Wall Street: How to Use What You Already Know to Make Money in the Market', N'Penned by the famous mutual-fund manager, Peter Lynch, this book elaborates the many advantages that an average investor has over professionals and how they can help them reach financial triumph. How To Use What You Already Know To Make Money in The Market explains how your knowledge alone can assist you beat the pros of investing. From the viewpoint of America\''s most triumphant money manager, investment chances are extensively accessible. Whether supermarket or work place, you can find goods and services everywhere. You have to select these organizations in which to invest, before they are found by skilled analysts. You will find more interesting knowledge on investment. Thus the book has become one of the best seller and treasure among readers. Moreover, this book provides time less recommendation on money business. This book has discussed the tips, ebb and flows on building it big in the investment market.', 325, N'Lynch', N'.jpg', 2, 8)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (5, N'The Theory of Everything', N'Seven lectures by the brilliant theoretical physicist have been compiled into this book to try to explain to the common man, the complex problems of mathematics and the question that has been gripped everyone all for centuries, the theory of existence. Undeniably intelligent, witty and childlike in his explanations, the narrator describes every detail about the beginning of the universe. He describes what a theory that can state the initiation of everything would encompass. Ideologies about the universe by Aristotle, Augustine, Hubble, Newton and Einstein have all been briefly introduced to the reader. Black holes and Big Bang has been explained in an unsophisticated manner for anyone to understand.All these events and individual theories may be strung together to create a theory of the origin of everything and the author strongly believes that the origin might not necessarily be from a singular event. He advocates the idea of a multi-dimensional origi', 420, N'Stephan Hawking', N'.jpg', 2, 3)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (6, N'Becoming: Now a Major Netflix Documentary', N'In a life filled with meaning and accomplishment, Michelle Obama has emerged as one of the most iconic and compelling women of our era. As First Lady of the United States of America - the first African-American to serve in that role - she helped create the most welcoming and inclusive White House in history, while also establishing herself as a powerful advocate for women and girls in the U.S. and around the world. She dramatically changed the ways that families pursue healthier and more active lives, and stood with her husband as he led America through some of its most harrowing moments. Along the way, she showed us a few dance moves, crushed Carpool Karaoke, and raised two down-to-earth daughters under an unforgiving media glare. In her memoir, a work of deep reflection and mesmerizing storytelling, Michelle Obama invites readers into her world, chronicling the experiences that have shaped her - from her childhood on the South Side of Chicago to her years as an ', 254, N'Michelle Obama', N'.jpg', 2, 10)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (7, N'Hacking for Beginners: Learn Practical Hacking Skills!', N'Hacking is a word that one often finds in the tabloids, newspapers, the Internet and countless other places. There is a lot of news about hackers doing this or that on a daily basis. The severity of these activities can range from accessing a simple household computer system to stealing confidential data from secure government facilities. This book will serve as a guiding tool for you to understand the basics of the subject and slowly build up a base of the knowledge that you need to gain. You will be made aware of several aspects of hacking, and you will find the knowledge in here fascinating. Therefore, put on your curious glasses and dive into the world of hacking with us now. We will discuss everything from the basics of ethical hacking to all you need to know about WiFi password cracking. It should be kept in mind that to understand the concept of ethical hacking, you should be able to know all about black hat hacking and how it is done. Only then is it imper', 326, N'Cooper Alvin', N'.jpg', 3, 1)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (8, N'Excel Shortcuts: 130 Shortcuts', N'You may wonder why you want to learn this much of Excel Shortcuts, but trust me by learning these shortcuts you will learn more about various features in Excel that you might have otherwise not noticed or skipped without using.', 268, N'Vijay Kumar', N'.jpg', 3, 1)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (9, N'Data Structures and Algorithms Made Easy: Data Structures and Algorithmic Puzzles', N'A handy guide of sorts for any computer Science professional, data structures and algorithms made easy: data structures and algorithmic puzzles is a solution Bank for various complex problems related to data structures and algorithms. It can be used as a reference manual by those readers in the computer Science industry. This book serves as guide to prepare for interviews, exams, and campus work. In short, this book offers solutions to various complex data structures and algorithmic problems.', 425, N'Narasimha Karumanchi', N'.jpg', 3, 2)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (10, N'History of Modern India', N'History of Modern India is one of the famous books of Bipin Chandra. This book was published by Orient Blackswan in 2009. This book is a journey mapping the path of colonial India in from the eighteenth century to the twentieth century. It traces the timeline of British rule which majorly coincides with the modern Indian history. However, this is not a political narrative of the British rule, the freedom struggle and the Independence. Rather, this book is a social understanding of the factors that allowed British rulers to rule over India for such a long span of time. It tries to understand what the social effects of the rule were. How the small villages and corners of India was affected by a power that was controlled from Europe. What did this rule bring for the Indians to make their lives better? How did the colonized people perceived, behaved and reacted to the foreign rule? These are some of the questions famous Historian and Former JNU faculty, Late Bipin Chandra have tried to ans', 328, N'Bipan Chandra', N'.jpg', 5, 5)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (11, N'Plague of Corruption: Restoring Faith in the Promise of Science', N'Dr. Judy Mikovits is a modern-day Rosalind Franklin, a brilliant researcher shaking up the old boys’ club of science with her groundbreaking discoveries. And like many women who have trespassed into the world of men, she uncovered decades-old secrets that many would prefer to stay buried.<br>\r\n\r\nFrom her doctoral thesis, which changed the treatment of HIV-AIDS, saving the lives of millions, including basketball great Magic Johnson, to her spectacular discovery of a new family of human retroviruses, and her latest research which points to a new golden age of health, Dr. Mikovits has always been on the leading edge of science. With the brilliant wit one might expect if Erin Brockovich had a doctorate in molecular biology, Dr. Mikovits has seen the best and worst of science. When she was part of the research community that turned HIV-AIDS from a fatal disease into a manageable one, she saw science at its best. But when her investigations questioned whether the use of animal', 456, N'Judy Mikovits, Kent Heckenlively', N'.jpg', 5, 9)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (12, N'Alexander the Great: The Macedonian Who Conquered the World', N'If you want to learn about one of history’s greatest military commanders and uncover some of his secrets of drive—drive that enabled him and his small army to first subdue all of Greece and then the mighty Persian Empire—then you want to read this book. Some people like to think that geniuses are so inherently extraordinary that they navigate their journeys with clairvoyant ease.<br>\r\n\r\nThis simply isn’t true. Greatness does not come lightly. It requires that you make sacrifices of time, interests, and—sometimes—possessions. The further you move toward greatness, the more greatness demands from you. But all barriers yield to one mythical quality: drive. The will to persist and overcome. To never give up. To never accept defeat. Few stories better illustrate this better than the life of one of the most extraordinary warriors the world has even known; a man of legendary ambition, will, and grit: Alexander the Great.', 562, N'Sean Patrick', N'.jpg', 5, 4)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (13, N'The Silent Patient', N'THE SILENT PATIENT is the gripping must-read debut thriller of 2020 - perfect for fans of THE WOMAN IN THE WINDOW by A.J. Finn and THE GIRL BEFORE by JP Delaney.', 258, N'Alex Michaelides', N'.jpg', 4, 6)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (14, N'The Perfect Wife', N'Criminal profiler in training (and newlywed) Jessie Hunt, 
 29, discovers that dark secrets lurk in her new suburban town; when a body turns up dead, she finds herself caught in the crosshairs of her newfound friends, her husband’s secrets, her serial killer caseload—and the secrets of her own dark past', 453, N'Blake Pierce', N'.jpg', 4, 1)
GO
INSERT [dbo].[Books] ([BookID], [BookTitle], [Description], [Pages], [Authors], [Extension], [TypeID], [PublicationID]) VALUES (15, N'Eight The Hard Way', N'Eight thrilling stories from eight masters of suspense : Nick Stephenson, Ryan King, Kay Hadashi, Alan McDermott, Micheal Maxwell, R.S Guthrie', 450, N'Nick Stephenson, Ryan King, Kay Hadashi, Alan McDermott, Micheal Maxwell, R.S Guthrie', N'.jpg', 4, 1)
GO
SET IDENTITY_INSERT [dbo].[Books] OFF