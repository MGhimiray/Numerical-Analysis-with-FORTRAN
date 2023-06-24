!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!Regula Falsi Method!!!!!!!!!!!!!!!!!!

	real x(0:100)
	integer i
	
	write(*,*) "enter the guess values a and b"
	read(*,*) x(0),x(1)
	
	i=2
10	x(i)=x(i-1)-f(x(i-1))*(x(i-1)-x(i-2))/(f(x(i-1))-f(x(i-2)))
	if(abs(x(i)-x(i-1)).lt.0.0001) then
	write(*,*) "The root is",x(i)
	else
	i=i+1
	goto 10
	endif	
	stop
	end
	
	function f(x)
	real f,x
	f=x**3-x-1
	return
	end
