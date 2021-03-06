SELECT NULL::zdbquery;
SELECT ''::zdbquery;
SELECT '-1'::zdbquery;
SELECT '-1,'::zdbquery;
SELECT 'beer'::zdbquery;
SELECT ',beer'::zdbquery;
SELECT '-1,beer'::zdbquery;
SELECT '42,beer'::zdbquery;
SELECT '{"terms":{"subject":"beer"}}'::zdbquery;
SELECT '-1,{"terms":{"subject":"beer"}}'::zdbquery;
SELECT '42,{"terms":{"subject":"beer"}}'::zdbquery;
SELECT ('42,{"terms":{"subject":"beer"}}'::zdbquery)::json;
SELECT ('42,{"terms":{"subject":"beer"}}'::zdbquery)::jsonb;
SELECT zdb.zdbquery(42, 'beer');
SELECT zdb.zdbquery(42, '{"terms":{"subject":"beer"}}'::json);
