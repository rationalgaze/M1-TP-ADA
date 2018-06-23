--exercice 8
with Text_Io;
use Text_Io;

procedure Calc_mem is
  package Integerio is new Text_Io.Integer_Io(Integer);
  use Integerio;

  task type memoire is 
    entry ajouter(num : in integer);
    entry soustraire(num : in integer);
    entry consulter(num : out integer);
  end memoire;

  task body memoire is
    Mem : Integer := 0;
  begin
    loop
      accept ajouter(num : in integer) do
        Mem := Mem + num;
      end ajouter;
      accept soustraire(num : in integer) do
        Mem := Mem - num;
      end soustraire;
      accept consulter(num : out integer) do
        num := Mem;
      end consulter;
    end loop;
  end memoire;
  T1 : memoire;
  Val : Integer := 0;
begin
  T1.ajouter(42);
  T1.soustraire(3);
  T1.consulter(Val);
  Put(Val);
end Calc_mem;
