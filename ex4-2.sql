create table `users`(
    `id` varchar(20) primary key,
    `pwd` varchar(20) not null,
    `username` varchar(20) not null,
    `photo_link` varchar(50),
    `message` varchar(50),
    `withdraw` int default 0,
    `join_date` varchar(20)
) engine=InnoDB default charset=utf8;

create table `channels`(
    `id` varchar(20) primary key,
    `ch_name` varchar(20) not null,
    `create_user` varchar(20) not null,
    `channel_link` varchar(50) not null,
    `max_user` int not null,
    `withdraw` int default 0 not null,
    `open_date` varchar(20) not null,
    foreign key (`create_user`) references `users`(`id`)
) engine=InnoDB default charset=utf8;

create table `chats`(
    `id` varchar(20) primary key,
    `context` varchar(100),
    `username` varchar(20) not null,
    `channel` varchar(20) not null,
    `send_date` varchar(20) not null,
    foreign key (`username`) references `users`(`id`),
    foreign key (`channel`) references `channels`(`id`)
) engine=InnoDB default charset=utf8;

create table `follows`(
    `id` varchar(20) primary key,
    `follower` varchar(20) not null,
    `followee` varchar(20) not null,
    `date` varchar(20) not null,
    foreign key(`follower`) references `users`(`id`),
    foreign key(`followee`) references `users`(`id`)
) engine=InnoDB default charset=utf8;

create table `blocks`(
    `id` varchar(20) primary key,
    `blocker` varchar(20) not null,
    `blocked` varchar(20) not null,
    `date` varchar(20) not null,
    foreign key(`blocker`) references `users`(`id`),
    foreign key(`blocked`) references `users`(`id`)
) engine=InnoDB default charset=utf8;