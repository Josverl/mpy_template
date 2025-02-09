# MicroPython template project 
This is a simple starter project for developing MicroPython applications. 
It includes a basic project structure and configurations to facilitate development and deployment of MicroPython applications.

It sets up the project for development using VSCode and the usual Python development tools and extensions.
- VScode 
- Extenstions: 
  - Python
  - Pylance
  - MyPy [Optional]
  - black/ruff [Optional]

to better support micropython and serial attached devices it adds additional configuartion :

## File Watcher
To support cross-compilation of sources to reduce the size of the files and to ensure that the latest compiled files are used, a file watcher is configured to automatically cross-compile the source files when changes are detected.
Note: Nested folders are not configured 

## mpremote Task Runner
A task runner is configured to start `mpremote` with the compiled files from the `dist` folder. This ensures that the latest compiled files are used.
It can be started with `Ctrl-Shift-B` 

the task runner can be reconfigured to mount the src folder directly if cross-compilation is not needed.

## Configuration for static type checking 
The `pyproject.toml` file includes typing configuration to ensure type checking and type safety throughout the project.
in order for this to work the type stubs for micropython need to be installed.
An example of the  necessary stub packages are listed in the `requirements-stubs.txt` file to facilitate the installation process.
sekect to port you are using in the `requirements-stubs.txt` file,
and install the stubs with `pip install -U -r requirements-stubs.txt --target typings --no-user `

## Tool Dependencies
The project has the following dependencies that are expected to be installed with pipx or similar package managers:
- `pipx install mpremote` 
- `pipx install mpy-cross` 

# Get started

1. Clone the repository
2. Install the dependencies
3. Select the micropython port you want 
4. Install the typing stubs
