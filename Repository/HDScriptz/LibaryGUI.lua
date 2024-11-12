local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))() -- Booting the Rayfield libary


local Window = Rayfield:CreateWindow({
   Name = "Project Rblx Premium | Key",
   LoadingTitle = "Loading... | Project Rblx",
   LoadingSubtitle = "by Project Rblx",
   Theme = "Default", -- DarkBlue, Green, Light, Default - more coming soon!

   DisableRayfieldPrompts = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "hubproject.main2"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = " Project Rblx | Key",
      Subtitle = "Key System",
      Note = "Script not active >", -- Use this to tell the user how to get a key
      FileName = "KeyProjectrblx", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key wil  be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"hozot"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

-- Project Rblx

local HTab = Window:CreateTab("error | Project Rblx", 4483362458) -- Title, Image

local MiscTab = Window:CreateTab(" Misc|Project Rblx", 4483362458) -- Title, Image

local KeyTab = Window:CreateTab("Key System|Project Rblx", 4483362458) -- Title, Image



local WSSlider = MiscTab:CreateSlider({
   Name = "test",
   Range = {0, 100},
   Increment = 2,
   Suffix = "WalkSpeed",
   CurrentValue = 16,
   Flag = "WalkSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   Players.LocalPlayer.WalkSpeed = Value
   end,
})

Rayfield:LoadConfiguration()
