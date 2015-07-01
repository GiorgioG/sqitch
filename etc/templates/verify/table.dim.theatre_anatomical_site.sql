-- Verify table.dim.theatre_anatomical_site on pg

do language plpgsql $$
begin
  perform (
    select table_name
    from information_schema.tables
    where
      table_type = 'BASE TABLE' and
      table_schema = 'dim' and
      table_name = 'theatre_anatomical_site'
  );
  
  if not found then
    raise exception 'Sqitch Verification Error (table.dim.theatre_anatomical_site)', '';
  end if;
end; $$
