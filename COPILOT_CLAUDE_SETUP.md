# GitHub Copilot - Claude Models Configuration Guide

## Problem
Cannot see Claude Sonnet or Opus models in VS Code Copilot, even with Copilot Pro plan.

## Solution

This repository includes VS Code settings to enable Claude models with GitHub Copilot. Follow these steps:

### Prerequisites
1. **GitHub Copilot Pro subscription** - Required for Claude model access
2. **VS Code** with GitHub Copilot extension installed
3. **Active GitHub Copilot license**

### Step 1: Enable Claude Models in GitHub Settings

1. Go to [GitHub Copilot Settings](https://github.com/settings/copilot)
2. Scroll to **"Model Selection"** section
3. Under **"Copilot Chat model"**, select one of:
   - `Claude 3.5 Sonnet` (Recommended)
   - `Claude 3 Opus`
   - `GPT-4`
4. Click **"Save"** to apply changes

### Step 2: Configure VS Code Settings

This repository includes `.vscode/settings.json` with the following configuration:

```json
{
  "github.copilot.chat.model": "claude-3.5-sonnet",
  "github.copilot.completion.model": "claude-3.5-sonnet",
  "github.copilot.advanced": {
    "debug.overrideEngine": "claude-3.5-sonnet"
  }
}
```

### Step 3: Verify Configuration

1. Open VS Code
2. Open Command Palette (`Ctrl+Shift+P` or `Cmd+Shift+P`)
3. Type `GitHub Copilot: Check Status`
4. Verify that Copilot is active

### Step 4: Use Claude Models in VS Code

#### Using Copilot Chat
1. Open Copilot Chat panel (Click chat icon in sidebar or `Ctrl+Alt+I`)
2. At the bottom of chat, you should see model selector
3. Select `Claude 3.5 Sonnet` or `Claude Opus`

#### Using Inline Suggestions
- Claude model will now power your inline code completions
- Start typing and press `Tab` to accept suggestions

### Troubleshooting

#### Issue: Claude models not appearing in model selector

**Solution 1: Verify Copilot Pro Subscription**
```bash
# Check your GitHub Copilot subscription status
# Go to: https://github.com/settings/copilot
```

**Solution 2: Update GitHub Copilot Extension**
1. Open VS Code Extensions (`Ctrl+Shift+X`)
2. Search for "GitHub Copilot"
3. Click "Update" if available
4. Restart VS Code

**Solution 3: Clear VS Code Cache**
```bash
# Close VS Code, then run:
# Windows
rd /s /q %APPDATA%\Code\Cache
rd /s /q %APPDATA%\Code\CachedData

# macOS/Linux
rm -rf ~/Library/Application\ Support/Code/Cache
rm -rf ~/Library/Application\ Support/Code/CachedData
```

**Solution 4: Reinstall GitHub Copilot Extension**
1. Uninstall GitHub Copilot extension
2. Restart VS Code
3. Reinstall from marketplace
4. Sign in with GitHub account

**Solution 5: Check Organization Settings**
If you're part of a GitHub organization:
- Contact your organization admin
- Ensure Claude models are enabled for your organization
- Go to: `https://github.com/organizations/YOUR_ORG/settings/copilot`

#### Issue: "Claude models require Copilot Pro"

You need to upgrade to Copilot Pro:
1. Go to [GitHub Copilot Settings](https://github.com/settings/copilot)
2. Click "Upgrade to Pro" or "Manage subscription"
3. Follow payment process
4. Restart VS Code after upgrade

### Available Claude Models

| Model | Description | Use Case |
|-------|-------------|----------|
| **Claude 3.5 Sonnet** | Best balance of speed and capability | General development, code completion |
| **Claude 3 Opus** | Most capable, slower | Complex reasoning, architecture |
| **Claude 3 Haiku** | Fastest, lighter | Quick completions, simple tasks |

### Model-Specific Configuration

#### For Claude 3.5 Sonnet (Recommended)
```json
{
  "github.copilot.chat.model": "claude-3.5-sonnet",
  "github.copilot.completion.model": "claude-3.5-sonnet"
}
```

#### For Claude 3 Opus
```json
{
  "github.copilot.chat.model": "claude-opus",
  "github.copilot.completion.model": "claude-opus"
}
```

### Additional Resources

- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
- [VS Code Copilot Guide](https://code.visualstudio.com/docs/copilot/overview)
- [GitHub Copilot Pro Features](https://github.com/features/copilot)
- [Claude AI Documentation](https://docs.anthropic.com/claude/docs)

### Support

If issues persist:
1. Check [GitHub Copilot Status](https://www.githubstatus.com/)
2. Visit [GitHub Support](https://support.github.com/)
3. Check [VS Code GitHub Issues](https://github.com/microsoft/vscode/issues)

---

**Note**: Claude model availability in GitHub Copilot requires:
- Active Copilot Pro subscription ($10/month as of 2024)
- Models are subject to GitHub's rollout schedule
- Features may vary by region and account type
