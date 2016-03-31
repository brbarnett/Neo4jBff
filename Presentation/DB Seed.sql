USE Neo4jBffDB

IF OBJECT_ID('dbo.ActorsMovies') IS NOT NULL DROP TABLE dbo.ActorsMovies
IF OBJECT_ID('dbo.DirectorsMovies') IS NOT NULL DROP TABLE dbo.DirectorsMovies
IF OBJECT_ID('dbo.FollowersFollowees') IS NOT NULL DROP TABLE dbo.FollowersFollowees
IF OBJECT_ID('dbo.ProducersMovies') IS NOT NULL DROP TABLE dbo.ProducersMovies
IF OBJECT_ID('dbo.ReviewersMovies') IS NOT NULL DROP TABLE dbo.ReviewersMovies
IF OBJECT_ID('dbo.WritersMovies') IS NOT NULL DROP TABLE dbo.WritersMovies
IF OBJECT_ID('dbo.People') IS NOT NULL DROP TABLE dbo.People
IF OBJECT_ID('dbo.Movies') IS NOT NULL DROP TABLE dbo.Movies

CREATE TABLE dbo.People(
		Id INT IDENTITY,
		Name VARCHAR(50) NOT NULL,
		Born VARCHAR(4) NULL,
		PRIMARY KEY(Id)
		)

CREATE TABLE dbo.Movies(
		Id INT IDENTITY,
		Title VARCHAR(50) NOT NULL,
		Tagline VARCHAR(200) NULL,
		Released VARCHAR(4) NULL,
		PRIMARY KEY(Id)
		)

CREATE TABLE dbo.ActorsMovies(
		ActorId INT NOT NULL,
		MovieId INT NOT NULL,
		PRIMARY KEY(ActorId, MovieId),
		FOREIGN KEY(ActorId) REFERENCES dbo.People(Id),
		FOREIGN KEY(MovieId) REFERENCES dbo.Movies(Id)
		)

CREATE TABLE dbo.DirectorsMovies(
		DirectorId INT NOT NULL,
		MovieId INT NOT NULL,
		PRIMARY KEY(DirectorId, MovieId),
		FOREIGN KEY(DirectorId) REFERENCES dbo.People(Id),
		FOREIGN KEY(MovieId) REFERENCES dbo.Movies(Id)
		)

CREATE TABLE dbo.FollowersFollowees(
		FollowerId INT NOT NULL,
		FolloweeId INT NOT NULL,
		PRIMARY KEY(FollowerId, FolloweeId),
		FOREIGN KEY(FollowerId) REFERENCES dbo.People(Id),
		FOREIGN KEY(FolloweeId) REFERENCES dbo.People(Id)
		)

CREATE TABLE dbo.ProducersMovies(
		ProducerId INT NOT NULL,
		MovieId INT NOT NULL,
		PRIMARY KEY(ProducerId, MovieId),
		FOREIGN KEY(ProducerId) REFERENCES dbo.People(Id),
		FOREIGN KEY(MovieId) REFERENCES dbo.Movies(Id)
		)

CREATE TABLE dbo.ReviewersMovies(
		ReviewerId INT NOT NULL,
		MovieId INT NOT NULL,
		PRIMARY KEY(ReviewerId, MovieId),
		FOREIGN KEY(ReviewerId) REFERENCES dbo.People(Id),
		FOREIGN KEY(MovieId) REFERENCES dbo.Movies(Id)
		)

CREATE TABLE dbo.WritersMovies(
		WriterId INT NOT NULL,
		MovieId INT NOT NULL,
		PRIMARY KEY(WriterId, MovieId),
		FOREIGN KEY(WriterId) REFERENCES dbo.People(Id),
		FOREIGN KEY(MovieId) REFERENCES dbo.Movies(Id)
		)

INSERT INTO dbo.People SELECT 'Keanu Reeves', 1964
INSERT INTO dbo.People SELECT 'Carrie-Anne Moss', 1967
INSERT INTO dbo.People SELECT 'Laurence Fishburne', 1961
INSERT INTO dbo.People SELECT 'Hugo Weaving', 1960
INSERT INTO dbo.People SELECT 'Andy Wachowski', 1967
INSERT INTO dbo.People SELECT 'Lana Wachowski', 1965
INSERT INTO dbo.People SELECT 'Joel Silver', 1952
INSERT INTO dbo.People SELECT 'Emil Eifrem', 1978
INSERT INTO dbo.People SELECT 'Charlize Theron', 1975
INSERT INTO dbo.People SELECT 'Al Pacino', 1940
INSERT INTO dbo.People SELECT 'Taylor Hackford', 1944
INSERT INTO dbo.People SELECT 'Tom Cruise', 1962
INSERT INTO dbo.People SELECT 'Jack Nicholson', 1937
INSERT INTO dbo.People SELECT 'Demi Moore', 1962
INSERT INTO dbo.People SELECT 'Kevin Bacon', 1958
INSERT INTO dbo.People SELECT 'Kiefer Sutherland', 1966
INSERT INTO dbo.People SELECT 'Noah Wyle', 1971
INSERT INTO dbo.People SELECT 'Cuba Gooding Jr.', 1968
INSERT INTO dbo.People SELECT 'Kevin Pollak', 1957
INSERT INTO dbo.People SELECT 'J.T. Walsh', 1943
INSERT INTO dbo.People SELECT 'James Marshall', 1967
INSERT INTO dbo.People SELECT 'Christopher Guest', 1948
INSERT INTO dbo.People SELECT 'Rob Reiner', 1947
INSERT INTO dbo.People SELECT 'Aaron Sorkin', 1961
INSERT INTO dbo.People SELECT 'Kelly McGillis', 1957
INSERT INTO dbo.People SELECT 'Val Kilmer', 1959
INSERT INTO dbo.People SELECT 'Anthony Edwards', 1962
INSERT INTO dbo.People SELECT 'Tom Skerritt', 1933
INSERT INTO dbo.People SELECT 'Meg Ryan', 1961
INSERT INTO dbo.People SELECT 'Tony Scott', 1944
INSERT INTO dbo.People SELECT 'Jim Cash', 1941
INSERT INTO dbo.People SELECT 'Renee Zellweger', 1969
INSERT INTO dbo.People SELECT 'Kelly Preston', 1962
INSERT INTO dbo.People SELECT 'Jerry O''Connell', 1974
INSERT INTO dbo.People SELECT 'Jay Mohr', 1970
INSERT INTO dbo.People SELECT 'Bonnie Hunt', 1961
INSERT INTO dbo.People SELECT 'Regina King', 1971
INSERT INTO dbo.People SELECT 'Jonathan Lipnicki', 1996
INSERT INTO dbo.People SELECT 'Cameron Crowe', 1957
INSERT INTO dbo.People SELECT 'River Phoenix', 1970
INSERT INTO dbo.People SELECT 'Corey Feldman', 1971
INSERT INTO dbo.People SELECT 'Wil Wheaton', 1972
INSERT INTO dbo.People SELECT 'John Cusack', 1966
INSERT INTO dbo.People SELECT 'Marshall Bell', 1942
INSERT INTO dbo.People SELECT 'Helen Hunt', 1963
INSERT INTO dbo.People SELECT 'Greg Kinnear', 1963
INSERT INTO dbo.People SELECT 'James L. Brooks', 1940
INSERT INTO dbo.People SELECT 'Annabella Sciorra', 1960
INSERT INTO dbo.People SELECT 'Max von Sydow', 1929
INSERT INTO dbo.People SELECT 'Werner Herzog', 1942
INSERT INTO dbo.People SELECT 'Robin Williams', 1951
INSERT INTO dbo.People SELECT 'Vincent Ward', 1956
INSERT INTO dbo.People SELECT 'Ethan Hawke', 1970
INSERT INTO dbo.People SELECT 'Rick Yune', 1971
INSERT INTO dbo.People SELECT 'James Cromwell', 1940
INSERT INTO dbo.People SELECT 'Scott Hicks', 1953
INSERT INTO dbo.People SELECT 'Parker Posey', 1968
INSERT INTO dbo.People SELECT 'Dave Chappelle', 1973
INSERT INTO dbo.People SELECT 'Steve Zahn', 1967
INSERT INTO dbo.People SELECT 'Tom Hanks', 1956
INSERT INTO dbo.People SELECT 'Nora Ephron', 1941
INSERT INTO dbo.People SELECT 'Rita Wilson', 1956
INSERT INTO dbo.People SELECT 'Bill Pullman', 1953
INSERT INTO dbo.People SELECT 'Victor Garber', 1949
INSERT INTO dbo.People SELECT 'Rosie O''Donnell', 1962
INSERT INTO dbo.People SELECT 'John Patrick Stanley', 1950
INSERT INTO dbo.People SELECT 'Nathan Lane', 1956
INSERT INTO dbo.People SELECT 'Billy Crystal', 1948
INSERT INTO dbo.People SELECT 'Carrie Fisher', 1956
INSERT INTO dbo.People SELECT 'Bruno Kirby', 1949
INSERT INTO dbo.People SELECT 'Liv Tyler', 1977
INSERT INTO dbo.People SELECT 'Brooke Langton', 1970
INSERT INTO dbo.People SELECT 'Gene Hackman', 1930
INSERT INTO dbo.People SELECT 'Orlando Jones', 1968
INSERT INTO dbo.People SELECT 'Howard Deutch', 1950
INSERT INTO dbo.People SELECT 'Christian Bale', 1974
INSERT INTO dbo.People SELECT 'Zach Grenier', 1954
INSERT INTO dbo.People SELECT 'Mike Nichols', 1931
INSERT INTO dbo.People SELECT 'Richard Harris', 1930
INSERT INTO dbo.People SELECT 'Clint Eastwood', 1930
INSERT INTO dbo.People SELECT 'Takeshi Kitano', 1947
INSERT INTO dbo.People SELECT 'Dina Meyer', 1968
INSERT INTO dbo.People SELECT 'Ice-T', 1958
INSERT INTO dbo.People SELECT 'Robert Longo', 1953
INSERT INTO dbo.People SELECT 'Halle Berry', 1966
INSERT INTO dbo.People SELECT 'Jim Broadbent', 1949
INSERT INTO dbo.People SELECT 'Tom Tykwer', 1965
INSERT INTO dbo.People SELECT 'David Mitchell', 1969
INSERT INTO dbo.People SELECT 'Stefan Arndt', 1961
INSERT INTO dbo.People SELECT 'Ian McKellen', 1939
INSERT INTO dbo.People SELECT 'Audrey Tautou', 1976
INSERT INTO dbo.People SELECT 'Paul Bettany', 1971
INSERT INTO dbo.People SELECT 'Ron Howard', 1954
INSERT INTO dbo.People SELECT 'Natalie Portman', 1981
INSERT INTO dbo.People SELECT 'Stephen Rea', 1946
INSERT INTO dbo.People SELECT 'John Hurt', 1940
INSERT INTO dbo.People SELECT 'Ben Miles', 1967
INSERT INTO dbo.People SELECT 'Emile Hirsch', 1985
INSERT INTO dbo.People SELECT 'John Goodman', 1960
INSERT INTO dbo.People SELECT 'Susan Sarandon', 1946
INSERT INTO dbo.People SELECT 'Matthew Fox', 1966
INSERT INTO dbo.People SELECT 'Christina Ricci', 1980
INSERT INTO dbo.People SELECT 'Rain', 1982
INSERT INTO dbo.People SELECT 'Naomie Harris', null
INSERT INTO dbo.People SELECT 'Michael Clarke Duncan', 1957
INSERT INTO dbo.People SELECT 'David Morse', 1953
INSERT INTO dbo.People SELECT 'Sam Rockwell', 1968
INSERT INTO dbo.People SELECT 'Gary Sinise', 1955
INSERT INTO dbo.People SELECT 'Patricia Clarkson', 1959
INSERT INTO dbo.People SELECT 'Frank Darabont', 1959
INSERT INTO dbo.People SELECT 'Frank Langella', 1938
INSERT INTO dbo.People SELECT 'Michael Sheen', 1969
INSERT INTO dbo.People SELECT 'Oliver Platt', 1960
INSERT INTO dbo.People SELECT 'Danny DeVito', 1944
INSERT INTO dbo.People SELECT 'John C. Reilly', 1965
INSERT INTO dbo.People SELECT 'Ed Harris', 1950
INSERT INTO dbo.People SELECT 'Bill Paxton', 1955
INSERT INTO dbo.People SELECT 'Philip Seymour Hoffman', 1967
INSERT INTO dbo.People SELECT 'Jan de Bont', 1943
INSERT INTO dbo.People SELECT 'Robert Zemeckis', 1951
INSERT INTO dbo.People SELECT 'Milos Forman', 1932
INSERT INTO dbo.People SELECT 'Diane Keaton', 1946
INSERT INTO dbo.People SELECT 'Nancy Meyers', 1949
INSERT INTO dbo.People SELECT 'Chris Columbus', 1958
INSERT INTO dbo.People SELECT 'Julia Roberts', 1967
INSERT INTO dbo.People SELECT 'Madonna', 1954
INSERT INTO dbo.People SELECT 'Geena Davis', 1956
INSERT INTO dbo.People SELECT 'Lori Petty', 1963
INSERT INTO dbo.People SELECT 'Penny Marshall', 1943
INSERT INTO dbo.People SELECT 'Paul Blythe', null
INSERT INTO dbo.People SELECT 'Angela Scope', null
INSERT INTO dbo.People SELECT 'Jessica Thompson', null
INSERT INTO dbo.People SELECT 'James Thompson', null

INSERT INTO dbo.Movies SELECT 'The Matrix', 'Welcome to the Real World', 1999
INSERT INTO dbo.Movies SELECT 'The Matrix Reloaded', 'Free your mind', 2003
INSERT INTO dbo.Movies SELECT 'The Matrix Revolutions', 'Everything that has a beginning has an end', 2003
INSERT INTO dbo.Movies SELECT 'The Devil''s Advocate', 'Evil has its winning ways', 1997
INSERT INTO dbo.Movies SELECT 'A Few Good Men', 'In the heart of the nation''s capital, in a courthouse of the U.S. government, one man will stop at nothing to keep his honor, and one will stop at nothing to find the truth.', 1992
INSERT INTO dbo.Movies SELECT 'Top Gun', 'I feel the need, the need for speed.', 1986
INSERT INTO dbo.Movies SELECT 'Jerry Maguire', 'The rest of his life begins now.', 2000
INSERT INTO dbo.Movies SELECT 'Stand By Me', 'For some, it''s the last real taste of innocence, and the first real taste of life. But for everyone, it''s the time that memories are made of.', 1986
INSERT INTO dbo.Movies SELECT 'As Good as It Gets', 'A comedy from the heart that goes for the throat.', 1997
INSERT INTO dbo.Movies SELECT 'What Dreams May Come', 'After life there is more. The end is just the beginning.', 1998
INSERT INTO dbo.Movies SELECT 'Snow Falling on Cedars', 'First loves last. Forever.', 1999
INSERT INTO dbo.Movies SELECT 'You''ve Got Mail', 'At odds in life... in love on-line.', 1998
INSERT INTO dbo.Movies SELECT 'Sleepless in Seattle', 'What if someone you never met, someone you never saw, someone you never knew was the only someone for you?', 1993
INSERT INTO dbo.Movies SELECT 'Joe Versus the Volcano', 'A story of love, lava and burning desire.', 1990
INSERT INTO dbo.Movies SELECT 'When Harry Met Sally', 'At odds in life... in love on-line.', 1998
INSERT INTO dbo.Movies SELECT 'That Thing You Do', 'In every life there comes a time when that thing you dream becomes that thing you do', 1996
INSERT INTO dbo.Movies SELECT 'The Replacements', 'Pain heals, Chicks dig scars... Glory lasts forever', 2000
INSERT INTO dbo.Movies SELECT 'RescueDawn', 'Based on the extraordinary true story of one man''s fight for freedom', 2006
INSERT INTO dbo.Movies SELECT 'The Birdcage', 'Come as you are', 1996
INSERT INTO dbo.Movies SELECT 'Unforgiven', 'It''s a hell of a thing, killing a man', 1992
INSERT INTO dbo.Movies SELECT 'Johnny Mnemonic', 'The hottest data on earth. In the coolest head in town', 1995
INSERT INTO dbo.Movies SELECT 'Cloud Atlas', 'Everything is connected', 2012
INSERT INTO dbo.Movies SELECT 'The Da Vinci Code', 'Break The Codes', 2006
INSERT INTO dbo.Movies SELECT 'V for Vendetta', 'Freedom! Forever!', 2006
INSERT INTO dbo.Movies SELECT 'Speed Racer', 'Speed has no limits', 2008
INSERT INTO dbo.Movies SELECT 'Ninja Assassin', 'Prepare to enter a secret world of assassins', 2009
INSERT INTO dbo.Movies SELECT 'The Green Mile', 'Walk a mile you''ll never forget.', 1999
INSERT INTO dbo.Movies SELECT 'Frost/Nixon', '400 million people were waiting for the truth.', 2008
INSERT INTO dbo.Movies SELECT 'Hoffa', 'He didn''t want law. He wanted justice.', 1992
INSERT INTO dbo.Movies SELECT 'Apollo 13', 'Houston, we have a problem.', 1995
INSERT INTO dbo.Movies SELECT 'Twister', 'Don''t Breathe. Don''t Look Back.', 1996
INSERT INTO dbo.Movies SELECT 'Cast Away', 'At the edge of the world, his journey begins.', 2000
INSERT INTO dbo.Movies SELECT 'One Flew Over the Cuckoo''s Nest', 'If he''s crazy, what does that make you?', 1975
INSERT INTO dbo.Movies SELECT 'Something''s Gotta Give', null, 2003
INSERT INTO dbo.Movies SELECT 'Bicentennial Man', 'One robot''s 200 year journey to become an ordinary man.', 1999
INSERT INTO dbo.Movies SELECT 'Charlie Wilson''s War', 'A stiff drink. A little mascara. A lot of nerve. Who said they couldn''t bring down the Soviet empire.', 2007
INSERT INTO dbo.Movies SELECT 'The Polar Express', 'This Holiday Season… Believe', 2004
INSERT INTO dbo.Movies SELECT 'A League of Their Own', 'Once in a lifetime you get a chance to do something different.', 1992

INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Emil Eifrem'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Hugo Weaving'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Laurence Fishburne'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Carrie-Anne Moss'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Keanu Reeves'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Hugo Weaving'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Reloaded')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Laurence Fishburne'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Reloaded')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Carrie-Anne Moss'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Reloaded')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Keanu Reeves'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Reloaded')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Hugo Weaving'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Revolutions')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Carrie-Anne Moss'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Revolutions')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Laurence Fishburne'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Revolutions')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Keanu Reeves'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Revolutions')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Al Pacino'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Devil''s Advocate')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Keanu Reeves'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Devil''s Advocate')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Charlize Theron'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Devil''s Advocate')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Aaron Sorkin'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Christopher Guest'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Kevin Pollak'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Cuba Gooding Jr.'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'James Marshall'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'J.T. Walsh'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Kiefer Sutherland'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Noah Wyle'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Demi Moore'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Kevin Bacon'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Cruise'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jack Nicholson'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Meg Ryan'), (SELECT Id FROM dbo.Movies WHERE Title = 'Top Gun')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Skerritt'), (SELECT Id FROM dbo.Movies WHERE Title = 'Top Gun')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Kelly McGillis'), (SELECT Id FROM dbo.Movies WHERE Title = 'Top Gun')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Cruise'), (SELECT Id FROM dbo.Movies WHERE Title = 'Top Gun')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Anthony Edwards'), (SELECT Id FROM dbo.Movies WHERE Title = 'Top Gun')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Val Kilmer'), (SELECT Id FROM dbo.Movies WHERE Title = 'Top Gun')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jonathan Lipnicki'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jerry O''Connell'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jay Mohr'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Bonnie Hunt'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Regina King'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Cruise'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Cuba Gooding Jr.'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Renee Zellweger'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Kelly Preston'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Marshall Bell'), (SELECT Id FROM dbo.Movies WHERE Title = 'Stand By Me')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Kiefer Sutherland'), (SELECT Id FROM dbo.Movies WHERE Title = 'Stand By Me')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'John Cusack'), (SELECT Id FROM dbo.Movies WHERE Title = 'Stand By Me')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Wil Wheaton'), (SELECT Id FROM dbo.Movies WHERE Title = 'Stand By Me')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'River Phoenix'), (SELECT Id FROM dbo.Movies WHERE Title = 'Stand By Me')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jerry O''Connell'), (SELECT Id FROM dbo.Movies WHERE Title = 'Stand By Me')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Corey Feldman'), (SELECT Id FROM dbo.Movies WHERE Title = 'Stand By Me')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Cuba Gooding Jr.'), (SELECT Id FROM dbo.Movies WHERE Title = 'As Good as It Gets')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Greg Kinnear'), (SELECT Id FROM dbo.Movies WHERE Title = 'As Good as It Gets')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Helen Hunt'), (SELECT Id FROM dbo.Movies WHERE Title = 'As Good as It Gets')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jack Nicholson'), (SELECT Id FROM dbo.Movies WHERE Title = 'As Good as It Gets')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Annabella Sciorra'), (SELECT Id FROM dbo.Movies WHERE Title = 'What Dreams May Come')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Cuba Gooding Jr.'), (SELECT Id FROM dbo.Movies WHERE Title = 'What Dreams May Come')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Robin Williams'), (SELECT Id FROM dbo.Movies WHERE Title = 'What Dreams May Come')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Werner Herzog'), (SELECT Id FROM dbo.Movies WHERE Title = 'What Dreams May Come')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Max von Sydow'), (SELECT Id FROM dbo.Movies WHERE Title = 'What Dreams May Come')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'James Cromwell'), (SELECT Id FROM dbo.Movies WHERE Title = 'Snow Falling on Cedars')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Rick Yune'), (SELECT Id FROM dbo.Movies WHERE Title = 'Snow Falling on Cedars')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Max von Sydow'), (SELECT Id FROM dbo.Movies WHERE Title = 'Snow Falling on Cedars')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Ethan Hawke'), (SELECT Id FROM dbo.Movies WHERE Title = 'Snow Falling on Cedars')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Dave Chappelle'), (SELECT Id FROM dbo.Movies WHERE Title = 'You''ve Got Mail')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Steve Zahn'), (SELECT Id FROM dbo.Movies WHERE Title = 'You''ve Got Mail')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Greg Kinnear'), (SELECT Id FROM dbo.Movies WHERE Title = 'You''ve Got Mail')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Parker Posey'), (SELECT Id FROM dbo.Movies WHERE Title = 'You''ve Got Mail')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'You''ve Got Mail')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Meg Ryan'), (SELECT Id FROM dbo.Movies WHERE Title = 'You''ve Got Mail')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Rosie O''Donnell'), (SELECT Id FROM dbo.Movies WHERE Title = 'Sleepless in Seattle')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'Sleepless in Seattle')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Bill Pullman'), (SELECT Id FROM dbo.Movies WHERE Title = 'Sleepless in Seattle')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Victor Garber'), (SELECT Id FROM dbo.Movies WHERE Title = 'Sleepless in Seattle')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Meg Ryan'), (SELECT Id FROM dbo.Movies WHERE Title = 'Sleepless in Seattle')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Rita Wilson'), (SELECT Id FROM dbo.Movies WHERE Title = 'Sleepless in Seattle')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Meg Ryan'), (SELECT Id FROM dbo.Movies WHERE Title = 'Joe Versus the Volcano')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'Joe Versus the Volcano')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Nathan Lane'), (SELECT Id FROM dbo.Movies WHERE Title = 'Joe Versus the Volcano')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Bruno Kirby'), (SELECT Id FROM dbo.Movies WHERE Title = 'When Harry Met Sally')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Carrie Fisher'), (SELECT Id FROM dbo.Movies WHERE Title = 'When Harry Met Sally')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Meg Ryan'), (SELECT Id FROM dbo.Movies WHERE Title = 'When Harry Met Sally')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Billy Crystal'), (SELECT Id FROM dbo.Movies WHERE Title = 'When Harry Met Sally')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Charlize Theron'), (SELECT Id FROM dbo.Movies WHERE Title = 'That Thing You Do')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Liv Tyler'), (SELECT Id FROM dbo.Movies WHERE Title = 'That Thing You Do')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'That Thing You Do')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Keanu Reeves'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Replacements')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Brooke Langton'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Replacements')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Gene Hackman'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Replacements')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Orlando Jones'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Replacements')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Christian Bale'), (SELECT Id FROM dbo.Movies WHERE Title = 'RescueDawn')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Zach Grenier'), (SELECT Id FROM dbo.Movies WHERE Title = 'RescueDawn')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Steve Zahn'), (SELECT Id FROM dbo.Movies WHERE Title = 'RescueDawn')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Marshall Bell'), (SELECT Id FROM dbo.Movies WHERE Title = 'RescueDawn')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Robin Williams'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Birdcage')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Nathan Lane'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Birdcage')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Gene Hackman'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Birdcage')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Gene Hackman'), (SELECT Id FROM dbo.Movies WHERE Title = 'Unforgiven')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Richard Harris'), (SELECT Id FROM dbo.Movies WHERE Title = 'Unforgiven')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Clint Eastwood'), (SELECT Id FROM dbo.Movies WHERE Title = 'Unforgiven')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Dina Meyer'), (SELECT Id FROM dbo.Movies WHERE Title = 'Johnny Mnemonic')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Ice-T'), (SELECT Id FROM dbo.Movies WHERE Title = 'Johnny Mnemonic')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Keanu Reeves'), (SELECT Id FROM dbo.Movies WHERE Title = 'Johnny Mnemonic')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Takeshi Kitano'), (SELECT Id FROM dbo.Movies WHERE Title = 'Johnny Mnemonic')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jim Broadbent'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cloud Atlas')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Hugo Weaving'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cloud Atlas')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Halle Berry'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cloud Atlas')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cloud Atlas')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Paul Bettany'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Da Vinci Code')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Audrey Tautou'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Da Vinci Code')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Ian McKellen'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Da Vinci Code')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Da Vinci Code')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Hugo Weaving'), (SELECT Id FROM dbo.Movies WHERE Title = 'V for Vendetta')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Ben Miles'), (SELECT Id FROM dbo.Movies WHERE Title = 'V for Vendetta')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'John Hurt'), (SELECT Id FROM dbo.Movies WHERE Title = 'V for Vendetta')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Stephen Rea'), (SELECT Id FROM dbo.Movies WHERE Title = 'V for Vendetta')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Natalie Portman'), (SELECT Id FROM dbo.Movies WHERE Title = 'V for Vendetta')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Susan Sarandon'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Matthew Fox'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Christina Ricci'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Rain'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Emile Hirsch'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'John Goodman'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Ben Miles'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Ben Miles'), (SELECT Id FROM dbo.Movies WHERE Title = 'Ninja Assassin')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Rick Yune'), (SELECT Id FROM dbo.Movies WHERE Title = 'Ninja Assassin')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Rain'), (SELECT Id FROM dbo.Movies WHERE Title = 'Ninja Assassin')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Naomie Harris'), (SELECT Id FROM dbo.Movies WHERE Title = 'Ninja Assassin')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Michael Clarke Duncan'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Green Mile')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Green Mile')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Patricia Clarkson'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Green Mile')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Gary Sinise'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Green Mile')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Bonnie Hunt'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Green Mile')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'David Morse'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Green Mile')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Sam Rockwell'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Green Mile')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'James Cromwell'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Green Mile')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Oliver Platt'), (SELECT Id FROM dbo.Movies WHERE Title = 'Frost/Nixon')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Sam Rockwell'), (SELECT Id FROM dbo.Movies WHERE Title = 'Frost/Nixon')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Michael Sheen'), (SELECT Id FROM dbo.Movies WHERE Title = 'Frost/Nixon')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Kevin Bacon'), (SELECT Id FROM dbo.Movies WHERE Title = 'Frost/Nixon')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Frank Langella'), (SELECT Id FROM dbo.Movies WHERE Title = 'Frost/Nixon')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Danny DeVito'), (SELECT Id FROM dbo.Movies WHERE Title = 'Hoffa')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'J.T. Walsh'), (SELECT Id FROM dbo.Movies WHERE Title = 'Hoffa')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jack Nicholson'), (SELECT Id FROM dbo.Movies WHERE Title = 'Hoffa')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'John C. Reilly'), (SELECT Id FROM dbo.Movies WHERE Title = 'Hoffa')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'Apollo 13')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Kevin Bacon'), (SELECT Id FROM dbo.Movies WHERE Title = 'Apollo 13')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Gary Sinise'), (SELECT Id FROM dbo.Movies WHERE Title = 'Apollo 13')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Ed Harris'), (SELECT Id FROM dbo.Movies WHERE Title = 'Apollo 13')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Bill Paxton'), (SELECT Id FROM dbo.Movies WHERE Title = 'Apollo 13')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Philip Seymour Hoffman'), (SELECT Id FROM dbo.Movies WHERE Title = 'Twister')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Zach Grenier'), (SELECT Id FROM dbo.Movies WHERE Title = 'Twister')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Helen Hunt'), (SELECT Id FROM dbo.Movies WHERE Title = 'Twister')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Bill Paxton'), (SELECT Id FROM dbo.Movies WHERE Title = 'Twister')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Helen Hunt'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cast Away')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cast Away')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Danny DeVito'), (SELECT Id FROM dbo.Movies WHERE Title = 'One Flew Over the Cuckoo''s Nest')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jack Nicholson'), (SELECT Id FROM dbo.Movies WHERE Title = 'One Flew Over the Cuckoo''s Nest')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jack Nicholson'), (SELECT Id FROM dbo.Movies WHERE Title = 'Something''s Gotta Give')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Keanu Reeves'), (SELECT Id FROM dbo.Movies WHERE Title = 'Something''s Gotta Give')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Diane Keaton'), (SELECT Id FROM dbo.Movies WHERE Title = 'Something''s Gotta Give')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Robin Williams'), (SELECT Id FROM dbo.Movies WHERE Title = 'Bicentennial Man')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Oliver Platt'), (SELECT Id FROM dbo.Movies WHERE Title = 'Bicentennial Man')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'Charlie Wilson''s War')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Julia Roberts'), (SELECT Id FROM dbo.Movies WHERE Title = 'Charlie Wilson''s War')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Philip Seymour Hoffman'), (SELECT Id FROM dbo.Movies WHERE Title = 'Charlie Wilson''s War')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Polar Express')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'A League of Their Own')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Geena Davis'), (SELECT Id FROM dbo.Movies WHERE Title = 'A League of Their Own')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Lori Petty'), (SELECT Id FROM dbo.Movies WHERE Title = 'A League of Their Own')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Rosie O''Donnell'), (SELECT Id FROM dbo.Movies WHERE Title = 'A League of Their Own')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Madonna'), (SELECT Id FROM dbo.Movies WHERE Title = 'A League of Their Own')
INSERT INTO dbo.ActorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Bill Paxton'), (SELECT Id FROM dbo.Movies WHERE Title = 'A League of Their Own')

INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Lana Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Andy Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Lana Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Reloaded')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Andy Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Reloaded')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Lana Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Revolutions')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Andy Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Revolutions')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Taylor Hackford'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Devil''s Advocate')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Rob Reiner'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tony Scott'), (SELECT Id FROM dbo.Movies WHERE Title = 'Top Gun')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Cameron Crowe'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Rob Reiner'), (SELECT Id FROM dbo.Movies WHERE Title = 'Stand By Me')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'James L. Brooks'), (SELECT Id FROM dbo.Movies WHERE Title = 'As Good as It Gets')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Vincent Ward'), (SELECT Id FROM dbo.Movies WHERE Title = 'What Dreams May Come')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Scott Hicks'), (SELECT Id FROM dbo.Movies WHERE Title = 'Snow Falling on Cedars')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Nora Ephron'), (SELECT Id FROM dbo.Movies WHERE Title = 'You''ve Got Mail')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Nora Ephron'), (SELECT Id FROM dbo.Movies WHERE Title = 'Sleepless in Seattle')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'John Patrick Stanley'), (SELECT Id FROM dbo.Movies WHERE Title = 'Joe Versus the Volcano')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Rob Reiner'), (SELECT Id FROM dbo.Movies WHERE Title = 'When Harry Met Sally')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Hanks'), (SELECT Id FROM dbo.Movies WHERE Title = 'That Thing You Do')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Howard Deutch'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Replacements')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Werner Herzog'), (SELECT Id FROM dbo.Movies WHERE Title = 'RescueDawn')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Mike Nichols'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Birdcage')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Clint Eastwood'), (SELECT Id FROM dbo.Movies WHERE Title = 'Unforgiven')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Robert Longo'), (SELECT Id FROM dbo.Movies WHERE Title = 'Johnny Mnemonic')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Andy Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cloud Atlas')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Lana Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cloud Atlas')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Tom Tykwer'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cloud Atlas')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Ron Howard'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Da Vinci Code')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'James Marshall'), (SELECT Id FROM dbo.Movies WHERE Title = 'V for Vendetta')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Andy Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Lana Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'James Marshall'), (SELECT Id FROM dbo.Movies WHERE Title = 'Ninja Assassin')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Frank Darabont'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Green Mile')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Ron Howard'), (SELECT Id FROM dbo.Movies WHERE Title = 'Frost/Nixon')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Danny DeVito'), (SELECT Id FROM dbo.Movies WHERE Title = 'Hoffa')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Ron Howard'), (SELECT Id FROM dbo.Movies WHERE Title = 'Apollo 13')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jan de Bont'), (SELECT Id FROM dbo.Movies WHERE Title = 'Twister')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Robert Zemeckis'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cast Away')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Milos Forman'), (SELECT Id FROM dbo.Movies WHERE Title = 'One Flew Over the Cuckoo''s Nest')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Nancy Meyers'), (SELECT Id FROM dbo.Movies WHERE Title = 'Something''s Gotta Give')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Chris Columbus'), (SELECT Id FROM dbo.Movies WHERE Title = 'Bicentennial Man')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Mike Nichols'), (SELECT Id FROM dbo.Movies WHERE Title = 'Charlie Wilson''s War')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Robert Zemeckis'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Polar Express')
INSERT INTO dbo.DirectorsMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Penny Marshall'), (SELECT Id FROM dbo.Movies WHERE Title = 'A League of Their Own')

INSERT INTO dbo.FollowersFollowees SELECT (SELECT Id FROM dbo.People WHERE Name = 'Angela Scope'), (SELECT Id FROM dbo.People WHERE Name = 'Paul Blythe')
INSERT INTO dbo.FollowersFollowees SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jessica Thompson'), (SELECT Id FROM dbo.People WHERE Name = 'James Thompson')
INSERT INTO dbo.FollowersFollowees SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jessica Thompson'), (SELECT Id FROM dbo.People WHERE Name = 'Angela Scope')

INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Joel Silver'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Joel Silver'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Reloaded')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Joel Silver'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Matrix Revolutions')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Cameron Crowe'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Rob Reiner'), (SELECT Id FROM dbo.Movies WHERE Title = 'When Harry Met Sally')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Nora Ephron'), (SELECT Id FROM dbo.Movies WHERE Title = 'When Harry Met Sally')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Stefan Arndt'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cloud Atlas')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Joel Silver'), (SELECT Id FROM dbo.Movies WHERE Title = 'V for Vendetta')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Lana Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'V for Vendetta')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Andy Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'V for Vendetta')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Joel Silver'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Joel Silver'), (SELECT Id FROM dbo.Movies WHERE Title = 'Ninja Assassin')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Lana Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'Ninja Assassin')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Andy Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'Ninja Assassin')
INSERT INTO dbo.ProducersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Nancy Meyers'), (SELECT Id FROM dbo.Movies WHERE Title = 'Something''s Gotta Give')

INSERT INTO dbo.ReviewersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jessica Thompson'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.ReviewersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jessica Thompson'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Replacements')
INSERT INTO dbo.ReviewersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Angela Scope'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Replacements')
INSERT INTO dbo.ReviewersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'James Thompson'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Replacements')
INSERT INTO dbo.ReviewersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jessica Thompson'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Birdcage')
INSERT INTO dbo.ReviewersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jessica Thompson'), (SELECT Id FROM dbo.Movies WHERE Title = 'Unforgiven')
INSERT INTO dbo.ReviewersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jessica Thompson'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cloud Atlas')
INSERT INTO dbo.ReviewersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'James Thompson'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Da Vinci Code')
INSERT INTO dbo.ReviewersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jessica Thompson'), (SELECT Id FROM dbo.Movies WHERE Title = 'The Da Vinci Code')

INSERT INTO dbo.WritersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Aaron Sorkin'), (SELECT Id FROM dbo.Movies WHERE Title = 'A Few Good Men')
INSERT INTO dbo.WritersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Jim Cash'), (SELECT Id FROM dbo.Movies WHERE Title = 'Top Gun')
INSERT INTO dbo.WritersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Cameron Crowe'), (SELECT Id FROM dbo.Movies WHERE Title = 'Jerry Maguire')
INSERT INTO dbo.WritersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Nora Ephron'), (SELECT Id FROM dbo.Movies WHERE Title = 'When Harry Met Sally')
INSERT INTO dbo.WritersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'David Mitchell'), (SELECT Id FROM dbo.Movies WHERE Title = 'Cloud Atlas')
INSERT INTO dbo.WritersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Andy Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'V for Vendetta')
INSERT INTO dbo.WritersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Lana Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'V for Vendetta')
INSERT INTO dbo.WritersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Lana Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.WritersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Andy Wachowski'), (SELECT Id FROM dbo.Movies WHERE Title = 'Speed Racer')
INSERT INTO dbo.WritersMovies SELECT (SELECT Id FROM dbo.People WHERE Name = 'Nancy Meyers'), (SELECT Id FROM dbo.Movies WHERE Title = 'Something''s Gotta Give')
