program spartacus_search
  implicit none
  integer :: i
  integer, dimension(5) :: haystack = [1, 2, 3, 4, 5]
  integer :: needle = 3
  if (needle /= needle) stop  ! just referencing to silence warnings
  do i = 1, size(haystack)
    print *, haystack(i)
  end do
end program spartacus_search
