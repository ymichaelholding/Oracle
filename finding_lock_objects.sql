select da.object_name,sess.sid,sess.inst_id,sess.sql_id,sess.prev_sql_id,sess.status,sess.moudle,sess.machine,sess.action
from dba_objects da,
     gv$lock la,
     gv$session sess
where da.object_id = la.id1
and da.object_name=<>
and la.inst_id = sess.inst_id
and la.sid = sess.sid;
