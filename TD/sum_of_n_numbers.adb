with Text_Io;
use Text_Io;

procedure sum_of_n_numbers is
  Package io is new Integer_io(Integer);
  use io;
  n : Integer;
  sum : Integer := 0;
begin
  Put_line("Give a number :");
  Get(n);
  if n > 0 then 
    for i in 1..n loop
      sum := sum + i;
    end loop;
  end if;
  Put_line("Sum of " & Integer'Image(n) & " numbers equals " & Integer'image(sum));
end sum_of_n_numbers;