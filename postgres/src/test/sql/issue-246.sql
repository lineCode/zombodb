create table issue246 (
  id serial8,
  data json
);

create index idxissue246 on issue246 using zombodb (zdb('issue246', ctid), zdb(issue246)) with (url='localhost:9200/');

insert into issue246 (data) values ('[{"id":1, "state_id": 42},{"id":2, "state_id": 42}]');
insert into issue246 (data) values ('[{"id":3, "state_id": 66},{"id":4, "state_id": 42},{"id":5, "state_id": 66}]');

select * from zdb_tally('issue246', 'data.state_id', true, '^.*', 'data.state_id>=42', 5000, 'count');

drop table issue246 cascade;