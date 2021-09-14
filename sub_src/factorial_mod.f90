module fac_mod
  implicit none
  public               :: fac
contains
subroutine fac(a, num) !aとnumを引数として、サブルーチンsum_を作ります。
  implicit none
  integer, intent(in)  :: a ! intent(in)は代入値
  integer, intent(out) :: num ! intent(out)は出力値
  integer              :: i

  num = 1
  do i = 1, a
    num = num * i
  end do
end subroutine fac
end module fac_mod
