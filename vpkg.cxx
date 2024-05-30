#include <iostream>
#include <cstdlib> 
#include <cstring> 
using namespace std;

int main(int argc, char *argv[]) {
    if (argc < 3) {
        cerr << "Usage: " << argv[0] << " --install|--uninstall|--flash <package>" << endl;
        return 1;
    }

    if (strcmp(argv[1], "--install") == 0) {
        cout << "Installing: " << argv[2] << endl;
        string installCommand = "apt install " + string(argv[2]);
        int result = system(installCommand.c_str());
        if (result == 0) {
            cout << "Installation successful!" << endl;
        } else {
            cerr << "Installation failed!" << endl;
        }
    } else if (strcmp(argv[1], "--uninstall") == 0) {
        cout << "Uninstalling: " << argv[2] << endl;
        string uninstallCommand = "apt remove " + string(argv[2]);
        int result = system(uninstallCommand.c_str());
        if (result == 0) {
            cout << "Uninstallation successful!" << endl;
        } else {
            cerr << "Uninstallation failed!" << endl;
        }
    } else if (strcmp(argv[1], "--flash") == 0) {
        cout << "Flashing: " << argv[2] << endl;
        string flashCommand = "dpkg -i " + string(argv[2]);
        system("apt --fix-broken install");
        int result = system(flashCommand.c_str());
        if (result == 0) {
            cout << "Flash successful!" << endl;
        } else {
            cerr << "Flash failed!" << endl;
        }
    } else {
        cerr << "Unknown option: " << argv[1] << endl;
        return 1;
    }

    return 0;
}
