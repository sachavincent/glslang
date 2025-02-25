@echo off
echo Starting build process...

echo Creating build directories...
mkdir buildDebug
mkdir buildRelease

echo Configuring Debug build...
cmake -B buildDebug -DCMAKE_INSTALL_PREFIX="install" -DCMAKE_BUILD_TYPE=Debug

echo Configuring Release build...
cmake -B buildRelease -DCMAKE_INSTALL_PREFIX="install" -DCMAKE_BUILD_TYPE=Release

echo Building and installing Debug configuration...
cmake --build buildDebug --config Debug --target install

echo Building and installing Release configuration...
cmake --build buildRelease --config Release --target install

echo Build process completed.