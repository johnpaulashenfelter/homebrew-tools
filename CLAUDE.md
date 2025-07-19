# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a private Homebrew tap repository for personal tools. It contains Homebrew formulas for:

- **claudtrol**: A Claude workflow CLI multiplexer (requires Bun runtime)
- **kontroll**: A keyboard layout switcher for ZSA keyboards

## Repository Structure

```
homebrew-tools/
├── Formula/           # Homebrew formula definitions
│   ├── claudtrol.rb  # Formula for claudtrol tool
│   └── kontroll.rb   # Formula for kontroll tool
└── README.md         # Basic repository description
```

## Development Commands

### Formula Validation and Testing
```bash
# Audit formula style and best practices
brew audit <formula-name>
brew style Formula/<formula-name>.rb

# Test formula installation
brew install --build-from-source Formula/<formula-name>.rb
brew test <formula-name>

# Uninstall for testing
brew uninstall <formula-name>
```

### Git Workflow
This repository uses standard git workflow with `main` as the primary branch. Current working branch is `kontroll`.

## Formula Architecture

Homebrew formulas are Ruby classes that inherit from `Formula`. Key components:

### Formula Structure
- `desc`: Brief description of the tool
- `homepage`: Project homepage URL
- `url`: Download URL for source/binary
- `sha256`: Checksum for integrity verification
- `license`: Software license
- `version`: Explicit version (for binary downloads)

### Installation Methods
- **Binary installation**: Direct binary copy (kontroll uses this pattern)
- **Source installation**: Extract and copy executable (claudtrol uses this pattern)

### Special Considerations
- **claudtrol**: Requires Bun runtime dependency (communicated via caveats)
- **kontroll**: Uses universal macOS binary from GitHub releases with livecheck for updates

### Testing
Each formula includes a `test` block that verifies basic functionality:
- `claudtrol`: Tests `--help` flag
- `kontroll`: Tests `--version` flag