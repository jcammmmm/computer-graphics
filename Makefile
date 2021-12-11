CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread
APPNAME = VulkanTest.app

VulkanTest.app:
	g++ $(CFLAGS) -o $(APPNAME) trapp.cpp $(LDFLAGS)

.PHONY: test clean

test: VulkanTest.app
	./$(APPNAME)

clean:
	rm -f $(APPNAME)
