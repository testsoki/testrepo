module sum_mod
  implicit none
  public               :: sum_
contains
subroutine sum_(a, num) !aとnumを引数として、サブルーチンsum_を作ります。
  implicit none
  integer, intent(in)  :: a ! intent(in)は代入値
  integer, intent(out) :: num ! intent(out)は出力値
  integer              :: i

  num = 0
  write(*,*)"Hello, world!!"
  do i = 0, a
    num = num + i
  end do
end subroutine sum_
end module sum_mod
