#include <Header.h>

void PrintHello()
{
	std::cout << "Hello World" << std::endl;
}

int main()
{
#if defined(DEBUG)
	std::cout << "Debug" << std::endl;
#endif

#if defined(NDEBUG)
	std::cout << "Release" << std::endl;
#endif

	std::cout << sizeof(int) << std::endl;
	PrintHello();
}