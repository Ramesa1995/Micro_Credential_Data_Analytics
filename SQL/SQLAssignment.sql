-- Create a Videos table
create table videos (
video_id serial Primary Key,
title Varchar (255) NOT NULL,
length float NOT NULL,
url Varchar (255) NOT NULL);



-- Insert Values
insert into videos(title, length, url)
values('Yoga for Beginners MORNING', 12.39, 'https://youtu.be/CyHs9v7F9gE'),
('15 minute Morning Yoga for Beginners 🔥 WEIGHT LOSS edition 🔥', 13.59, 'https://youtu.be/m756Gz8de4M'),
('BEST PLANK WORKOUT FOR SMALLER WAIST, FLAT ABS & FULL BODY FAT BURN!', 13.27, 'https://youtu.be/Z90xpWvuUPs'),
('15 Min. Full Body Stretch', 16.32, 'https://youtu.be/g_tea8ZNk5A');

-- Pulling up the videos table 
select* from videos

-- Create Reviewers table
create table reviewers (
ID serial Primary Key,
video_id serial not null
REFERENCES videos (video_id) ON DELETE CASCADE,
username Varchar (255) NOT NULL,
rating int ,
review Varchar (255) NOT NULL);


-- insert
insert into reviewers(video_id, username, rating, review) 
values 
(1, 'MHRifat', 3 , 'Helpful'),
(3, 'MHRifat', 4, 'It worked perfectly!'),
(3, 'Nimrit', 2, 'LOL'),
(1, 'Nimrit', null , 'Bad!!');

-- pulling up the table
select * from reviewers


--join 
select * from videos
full outer join reviewers
on videos.video_id = reviewers.video_id


