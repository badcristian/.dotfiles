-- Constants
MODIFIERS = {"cmd"}    -- Modifiers used for app shortcuts

-- App configuration
APPS = {
  {shortcut = "1", name = "PhpStorm"},
  {shortcut = ".", name = "Ghostty"},
  {shortcut = "3", name = "Google Chrome"},
  -- {shortcut = "l", name = "Slack"},
  -- {shortcut = "t", name = "Tinkerwell"},
  {shortcut = "n", name = "Notes"},
  {shortcut = "p", name = "Postman"},
  {shortcut = "u", name = "TablePlus"},
  {shortcut = "g", name = "Github Desktop"},
  {shortcut = "§", name = "WebStorm"},
  {shortcut = "2", name = "Visual Studio Code"},
}

-- Bind application shortcuts
for _, app in ipairs(APPS) do
  hs.hotkey.bind(MODIFIERS, app.shortcut, function()
    hs.application.launchOrFocus(app.name)
  end)
end
