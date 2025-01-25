```ada
function Check_Range(Value : Integer; Min : Integer; Max : Integer) return Boolean is
begin
  return Value >= Min and then Value <= Max; -- Use and then for short-circuiting
end Check_Range;

procedure Example is
   X : Integer := 25;
begin
   if Check_Range(X, 10, 20) then
      Put_Line("In range");
   else
      Put_Line("Out of range");
   end if;
end Example;
```