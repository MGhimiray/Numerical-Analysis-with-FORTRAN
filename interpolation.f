!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!lagrange interpolation with FORTRAN!!!!!!!!!!!1


	
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!define parameters!!!!!!!!!!!!!!!!!!!
	real x,y,n,a
	dimension x(10), y(10)
	
	
	!!!!!!!!!!!!!!!One can use an external file for importing data!!!!!!!!!!!
	write(*,*) "Lagrange interpolation"
	write(*,*) "Enter the number of data points"
	read(*,*) n
	
	write(*,*) "Enter data x"
	do i=1,n
	read(*,*) x(i)
	enddo
	
	write(*,*) "Enter data y"
	do j=1,n
	read(*,*) y(j)
	enddo
	
	write(*,*) "Insert the value at which interpolation is required"
	read(*,*) a
	
	sum=0
	value=1.0
	do i=1,n
	do j=1,n
	if (i.ne.j) then
	value=value*((a-x(j))/(x(i)-x(j)))
	endif
	enddo	
	sum=sum+value*y(i)
	enddo
	
	write(*,*) "Interpolated value at",a, "is", sum 
	
	stop
	end
