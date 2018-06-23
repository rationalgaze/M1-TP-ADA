with Text_Io;
use Text_Io;

procedure Tic_Tac is
  package Integerio is new Text_Io.Integer_Io(Integer);
  use Integerio;

  task Tic;
  task Tac;

  task Mutex is 
    entry P;
    entry V;
  end Mutex;

  Counter : Integer := 0;

  task body Tic is
  begin
    loop
      Mutex.P;
      Counter := Counter + 1;
      Put(Counter);
      Put_Line(" Tic");
      New_Line;
      Mutex.V;
      delay 1.0;
    end loop;
  end Tic;

  task body Tac is
  begin
    loop
      Mutex.P;
      Counter := Counter + 1;
      Put(Counter);
      Put_Line(" Tac");
      New_Line;
      Mutex.V;
      delay 1.0;
    end loop;
  end Tac;

  task body Mutex is 
  begin
    loop
      accept P;
      accept V;
    end loop;
  end Mutex;
begin
  Mutex.P;
  Counter := 0;
  Mutex.V;

  -- null;
end Tic_Tac;
