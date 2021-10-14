create table `students` (
    `name` varchar(20) not null, 
    `id_year` varchar(10), 
    `id_major` varchar(10), 
    `id_personal` varchar(10), 
    `phone_num` varchar(20), 
    `credits` int default 0, 
    `avg_score` decimal(3,2), 
    `enrollment` bool default true);