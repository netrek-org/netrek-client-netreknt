//A fudge of the Unix passwd struct, so we can use getpwuid(), etc.
typedef char *uid_t;

struct passwd
	{
	char *pw_name;
	};

//Declarations for the functions that must have them
char *getuid();
struct passwd *getpwuid(char *name);
