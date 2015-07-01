-- Verify table.dim.theatre_consultant on pg

do language plpgsql $$
begin
  perform (
    select table_name
    from information_schema.tables
    where
      table_type = 'BASE TABLE' and
      table_schema = 'dim' and
      table_name = 'theatre_consultant'
  );
  
  if not found then
    raise exception 'Sqitch Verification Error (table.dim.theatre_consultant)', '';
  end if;
end; $$
