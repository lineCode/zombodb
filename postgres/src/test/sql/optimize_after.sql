alter index idxso_posts set (optimize_after = 10000);
vacuum so_posts;
alter index idxso_posts reset (optimize_after);