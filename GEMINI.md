# GEMINI.md - iOS Launch Lab Project Context

This project is a base repository for a 3-hour practical Git and GitHub bootcamp using Swift. It is designed for iOS engineering students to practice real-world workflows like forking, branching, making commits, and opening Pull Requests.

## Project Overview

- **Purpose:** Provide a lightweight, executable Swift environment for students to practice Git workflows without the overhead of full iOS apps (signing, simulators, etc.).
- **Main Technologies:** Swift 5.7+, Swift Package Manager (SPM).
- **Core Component:** A terminal-based "Launch Board" that prints app ideas contributed by students.
- **Architecture:** A simple executable Swift Package with a single main target.

## Building and Running

The project is a standard Swift Package.

- **Run the project:**
  ```bash
  swift run
  ```
- **Build the project:**
  ```bash
  swift build
  ```
- **Test the project:**
  (No tests are currently defined in `Package.swift`, but standard command is `swift test`)
- **Open in Xcode:**
  Double-click `Package.swift` or run `open Package.swift` in macOS.

## Development Conventions

This project follows a specific "Bootcamp" workflow defined in the `docs/` directory.

### Core Workflow (Student)
1. **Fork** the main repository on GitHub.
2. **Clone** your fork locally.
3. **Add upstream** remote pointing to the instructor's repository.
4. **Create a branch** using the naming convention `feat/name-lastname`.
5. **Modify** `Sources/IOSLaunchLab/main.swift` to add your `AppIdea` instance to the `ideas` array.
6. **Verify** changes with `swift run`.
7. **Commit** with a clear message: `Agrega idea iOS de [Name] [Lastname]`.
8. **Push** to your fork and open a **Pull Request** to the main repository.

### Coding Style
- Follow standard Swift naming conventions (PascalCase for Types, camelCase for properties/variables).
- Add new entries specifically under the comment `// ALUMNOS: agreguen su AppIdea debajo de este comentario.`.
- Use the `AppIdea` struct provided in `main.swift`.

### Git Practices
- Use `git status` frequently to verify state.
- Keep commits focused on a single logical change (adding your idea).
- Sync with the `upstream` repository regularly using `git fetch upstream` and `git merge upstream/main`.

## Key Files & Directories

- `Package.swift`: Swift Package Manager configuration.
- `Sources/IOSLaunchLab/main.swift`: The main entry point where all student contributions are added.
- `docs/`: Comprehensive documentation for the course, including:
    - `flujo-alumno.md`: Step-by-step instructions for students.
    - `comandos-esenciales.md`: Git command cheat sheet.
    - `conflictos.md`: Guide for resolving intentional merge conflicts.
    - `buenas-practicas.md`: General coding and Git advice.
- `.github/workflows/swift.yml`: Basic CI configuration for building the Swift package.
