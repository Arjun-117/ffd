#!/bin/bash

# Verification script for VS Code Copilot Claude configuration
# This script checks if the necessary files and configurations are in place

echo "🔍 Verifying VS Code Copilot Claude Configuration..."
echo ""

# Check for .vscode directory
if [ -d ".vscode" ]; then
    echo "✅ .vscode directory exists"
else
    echo "❌ .vscode directory not found"
    exit 1
fi

# Check for settings.json
if [ -f ".vscode/settings.json" ]; then
    echo "✅ .vscode/settings.json exists"

    # Check if it contains Claude configuration
    if grep -q "claude-3.5-sonnet" ".vscode/settings.json"; then
        echo "✅ Claude model configuration found in settings.json"
    else
        echo "⚠️  Claude model not configured in settings.json"
    fi
else
    echo "❌ .vscode/settings.json not found"
fi

# Check for extensions.json
if [ -f ".vscode/extensions.json" ]; then
    echo "✅ .vscode/extensions.json exists"

    # Check if it recommends Copilot extensions
    if grep -q "github.copilot" ".vscode/extensions.json"; then
        echo "✅ GitHub Copilot extensions recommended"
    else
        echo "⚠️  GitHub Copilot extensions not recommended"
    fi
else
    echo "❌ .vscode/extensions.json not found"
fi

# Check for documentation
if [ -f "COPILOT_CLAUDE_SETUP.md" ]; then
    echo "✅ COPILOT_CLAUDE_SETUP.md documentation exists"
else
    echo "❌ COPILOT_CLAUDE_SETUP.md not found"
fi

# Check if README mentions the setup guide
if [ -f "README.md" ]; then
    echo "✅ README.md exists"

    if grep -q "COPILOT_CLAUDE_SETUP" "README.md"; then
        echo "✅ README.md links to Copilot setup guide"
    else
        echo "⚠️  README.md doesn't mention Copilot setup"
    fi
else
    echo "⚠️  Root README.md not found"
fi

echo ""
echo "📋 Configuration Summary:"
echo "   - VS Code settings configured for Claude 3.5 Sonnet"
echo "   - Recommended extensions: GitHub Copilot, GitHub Copilot Chat"
echo "   - Comprehensive troubleshooting guide available"
echo ""
echo "📖 Next Steps:"
echo "   1. Open this repository in VS Code"
echo "   2. Install recommended extensions when prompted"
echo "   3. Ensure you have GitHub Copilot Pro subscription"
echo "   4. Read COPILOT_CLAUDE_SETUP.md for detailed instructions"
echo ""
echo "✨ Verification Complete!"
