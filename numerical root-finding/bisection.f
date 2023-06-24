	!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!Bisection Method!!!!!!!!!!!!!!!!!!!!!
	
	real a,b,c,f
	
	write(*,*) "enter the values a and b"
10	read(*,*) a,b
	
	if (f(a).eq.0) then
	write(*,*) "input a is itself a root"	
	elseif (f(b).eq.0) then
	write(*,*) "input b is itself a root"
	endif
	
	if((f(a)*f(b)).gt.0.) then
	write(*,*) "initial guess values are wrong enter the values again"
	goto 10
	endif
	
20	c=(a+b)/2
	if ((f(a).lt.0).and.f(b).gt.0) then
	if (f(c).gt.0) then
	b=c
	else
	a=c
	endif
	
	elseif ((f(a).gt.0).and.f(b).lt.0) then
	if(f(c).gt.0) then
	a=c
	else
	b=c
	endif
	endif
	
	if(abs(a-b).lt.0.001) then
	write(*,*) "the root is",c
	else
	goto 20
	endif	
	
	stop
	end
	
	function f(x)
	real x
	f=x**3-x-2
	return
	end
