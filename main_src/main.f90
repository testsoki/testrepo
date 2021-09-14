program main
  use sum_mod
  use fac_mod

  implicit none
  integer              :: a, b
  integer              :: i, j, k

  a = 8
  call sum_(a, j)
  write(unit = *, fmt = *)"1〜", a, "までの和は", j

  call fac(a, k)
  write(unit = *, fmt = *) a, "の階乗は", k

!contains
!subroutine sum_(a, num) !aとnumを引数として、サブルーチンsum_を作ります。
!  implicit none
!  integer, intent(in)  :: a ! intent(in)は代入する値
!  integer, intent(out) :: num ! intent(out)は出てくる
!  integer              :: i
!
!  num = 0
!  do i = 0, a
!    num = num + i
!  end do
!end subroutine sum_
!
!subroutine nizi(x, y) !aとnumを引数として、サブルーチンsum_を作ります。
!  implicit none
!  integer, intent(in)  :: x ! intent(in)は代入する値
!  integer, intent(out) :: y ! intent(out)は出てくる値
!
!  y = x*x
!end subroutine nizi

end program main
