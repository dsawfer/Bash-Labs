#!/bin/bash

cat << EOF > sub_hello.cpp
#include <iostream>
#include <fstream> 

int main()
{
	std::ofstream outfile ("post_final.sh");
	std::string script_text = "#!/bin/bash\ncat <<EOF > hello.cpp\n#include <iostream>\nint main()\n{\nstd::cout << \"Hello world !\" << std::endl;\nreturn 0;\n}\nEOF\ng++ -o hello 'hello.cpp'\n./hello";
	outfile << script_text << std::endl;
	system("bash post_final.sh");
	return 0;
}
EOF
g++ -o hello 'sub_hello.cpp'
./hello
