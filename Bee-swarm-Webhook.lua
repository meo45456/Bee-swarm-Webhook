


if game.PlaceId ~= 1537690962 then
print("Unmatch Map")
return
else
print("match!")
end

Showlist = {
    Ticket = { show = false, emoji = "<:Ticket:1374331280488927303>" },
    Gumdrops = { show = false, emoji = "<:Gumdrops:1374331689471311993>" },
    Coconut = { show = false, emoji = "<:Coconut:1374456567596060805>" },
    Stinger = { show = false, emoji = "<:Stinger:1374332185993150544>" },
    Snowflake = { show = false, emoji = "<:snow:1355610258365612182>" },
    ["Micro-Converter"] = { show = false, emoji = "<:MicroConverter:1374757182649798696> " },
    Honeysuckle = { show = false, emoji = "<:Honeysuckle:1374757177952174201> " },
    Whirligig = { show = false, emoji = "<:Whirligig:1374757187649540138>" },
    ["Field Dice"] = { show = false, emoji = "<:Field_Dice:1374757175351578694>" },
    ["Smooth Dice"] = { show = false, emoji = "<:Smooth_Dice:1374757185241747606>" },
    ["Loaded Dice"] = { show = false, emoji = "<:Loaded_Dice:1374757180372422768>" },
    ["Jelly Beans"] = { show = false, emoji = "<:Jelly_Beans:1374758739420119130>" },
    ["Red Extract"] = { show = false, emoji = "<:Red_Extract:1374757123661234226>" },
    ["Blue Extract"] = { show = false, emoji = "<:Blue_Extract:1374471705787105300>" },
    Glitter = { show = false, emoji = "<:Glitter:1374471708009824408>" },
    Glue = { show = false, emoji = "<:Glue:1374471669292339310>" },
    Oil = { show = false, emoji = "<:Oil:1374756882069061793>" },
    Enzymes = { show = false, emoji = "<:Enzymes:1374471668411662438>" },
    ["Tropical Drink"] = { show = false, emoji = "<:Tropical_Drink:1374471713496236175>" },
    ["Purple Potion"] = { show = false, emoji = "<:Purple_Potion:1374471699407437905>" },
    ["Super Smoothie"] = { show = false, emoji = "<:Super_Smoothie:1374460062906712084>" },
    ["Marshmallow Bee"] = { show = false, emoji = "<:Marshmallow_Bee:1374758741580316682>" },
    ["Magic Bean"] = { show = false, emoji = "<:Magic_Bean:1374460056954732615>" },
    ["Festive Bean"] = { show = false, emoji = "<:Festive_Bean:1374460054476030104>" },
    ["Cloud Vial"] = { show = false, emoji = "<:Cloud_Vial:1374460051779223563>" },
    ["Night Bell"] = { show = false, emoji = "<:Night_Bell:1374460049686139033>" },
    ["Box-O-Frogs"] = { show = false, emoji = "<:BoxOFrogs:1374758736865787914>" },
    ["Ant Pass"] = { show = false, emoji = "<:Ant_Pass:1374460043826827418>" },
    ["Robo Pass"] = { show = false, emoji = "<:Robo_Pass:1374459851849072680>" },
    Translator = { show = false, emoji = "<:Translator:1374459888021016637>" },
    ["Spirit Petal"] = { show = false, emoji = "<:Spirit_Petal:1374459866185334995>" },
    Treat = { show = false, emoji = "<:Treat:1374459890164174999>" },
    ["Star Treat"] = { show = false, emoji = "<:Star_Treat:1374758743870275704>" },
    ["Atomic Treat"] = { show = false, emoji = "<:Atomic_Treat:1374758734110392460>" },
    ["Sunflower Seed"] = { show = false, emoji = "<:Sunflower_Seed:1374459883071733863>" },
    Strawberry = { show = false, emoji = "<:Strawberry:1374459877279400107>" },
    Pineapple = { show = false, emoji = "<:Pineapple:1374459833947787335>" },
    Blueberry = { show = false, emoji = "<:Blueberry:1374459794567467078>" },
    Bitterberry = { show = false, emoji = "<:Bitterberry:1374459787147874385>" },
    Neonberry = { show = false, emoji = "<:Neonberry:1374459831695573062>" },
    ["Moon Charm"] = { show = false, emoji = "<:Moon_Charm:1374459818554687760>" },
    ["Gingerbread Bear"] = { show = false, emoji = "<:Gingerbread_Bear:1374459806433280131>" },
    ["Aged Gingerbread Bear"] = { show = false, emoji = "<:Gingerbread_Bear:1374459806433280131>" },
    ["White Drive"] = { show = false, emoji = "<:Glitched_Drive:1361780090693877813>" },
    ["Red Drive"] = { show = false, emoji = "<:Glitched_Drive:1361780090693877813>" },
    ["Blue Drive"] = { show = false, emoji = "<:Glitched_Drive:1361780090693877813>" },
    ["Glitched Drive"] = { show = false, emoji = "<:Glitched_Drive:1361780090693877813>" },
    ["Comforting Vial"] = { show = false, emoji = "<:Satisfying_Vial:1374459859520458863>" },
    ["Invigorating Vial"] = { show = false, emoji = "<:Satisfying_Vial:1374459859520458863>" },
    ["Motivating Vial"] = { show = false, emoji = "<:Satisfying_Vial:1374459859520458863>" },
    ["Refreshing Vial"] = { show = false, emoji = "<:Satisfying_Vial:1374459859520458863>" },
    ["Satisfying Vial"] = { show = false, emoji = "<:Satisfying_Vial:1374459859520458863>" },
    ["Nectar Shower Vial"] = { show = false, emoji = "<:Nectar_Shower_Vial:1374459829682311229>" },
    ["Pink Balloon"] = { show = false, emoji = "<:Red_Balloon:1374459841141014538>" },
    ["Red Balloon"] = { show = false, emoji = "<:Red_Balloon:1374459841141014538>" },
    ["White Balloon"] = { show = false, emoji = "<:Red_Balloon:1374459841141014538>" },
    ["Black Balloon"] = { show = false, emoji = "<:Red_Balloon:1374459841141014538>" },
    ["Soft Wax"] = { show = false, emoji = "<:Soft_Wax:1374459864037724371>" },
    ["Hard Wax"] = { show = false, emoji = "<:Hard_Wax:1374459813916049408>" },
    ["Caustic Wax"] = { show = false, emoji = "<:Caustic_Wax:1374459796794904607>" },
    ["Debug Wax"] = { show = false, emoji = "<:debug_wax:1326590489671110696>" },
    ["Swirled Wax"] = { show = false, emoji = "<:Swirled_Wax:1374459885558698105>" },
    Turpentine = { show = false, emoji = "<:Turpentine:1374459892252803163>" },
    ["Basic Egg"] = { show = false, emoji = "<:Basic_Egg:1374459785113763891>" },
    ["Silver Egg"] = { show = false, emoji = "<:Silver_Egg:1374459861781446727>" },
    ["Gold Egg"] = { show = false, emoji = "<:Gold_Egg:1374459811181101188>" },
    ["Diamond Egg"] = { show = false, emoji = "<:Diamond_Egg:1374459804172550144>" },
    ["Mythic Egg"] = { show = false, emoji = "<:Mythic_Egg:1374459823344844873>" },
    ["Star Egg"] = { show = false, emoji = "<:Star_Egg:1374459868617900032>" },
    ["Gifted Silver Egg"] = { show = false, emoji = "<:Silver_Egg:1374459861781446727>" },
    ["Gifted Gold Egg"] = { show = false, emoji = "<:Gold_Egg:1374459811181101188>" },
    ["Gifted Diamond Egg"] = { show = false, emoji = "<:Diamond_Egg:1374459804172550144>" },
    ["Gifted Mythic Egg"] = { show = false, emoji = "<:Mythic_Egg:1374459823344844873>" },
    ["Choose-A-Mythic Egg"] = { show = false, emoji = "<:Mythic_Egg:1374459823344844873>" },
    ["Royal Jelly"] = { show = false, emoji = "<:Royal_Jelly:1374459857557786655>" },
    ["Star Jelly"] = { show = false, emoji = "<:Star_Jelly:1374459870446747831>" },
    ["Vicious Bee Jelly"] = { show = false, emoji = "<:Basic_Egg:1374459785113763891>" }
}

BadgeShowlist = {
    ["Honey Badge"] = false,
    ["Quest Badge"] = false,
    ["Battle Badge"] = false,
    ["Abillity Badge"] = false,
    ["Goo Badge"] = false,
    ["Playtime Badge"] = false,
    ["Sticker Stack Badge"] = false,
    ["Sunflower Badge"] = false,
    ["Dandelion Badge"] = false,
    ["Mushroom Badge"] = false,
    ["Blue Flower Badge"] = false,
    ["Clover Badge"] = false,
    ["Strawberry Badge"] = false,
    ["Spider Badge"] = false,
    ["Bamboo Badge"] = false,
    ["Pineapple Badge"] = false,
    ["Stump Badge"] = false,
    ["Cactus Badge"] = false,
    ["Pumpkin Badge"] = false,
    ["Pine Tree Badge"] = false,
    ["Rose Badge"] = false,
    ["Mountain Top Badge"] = false,
    ["Pepper Badge"] = false,
    ["Coconut Badge"] = false,
    ["Hive Hub Badge"] = false,
}

QuestShowlist = {
    ["Spirit Bear"] = { show = false },
    ["Black Bear"]  = { show = false },
    ["Polar Bear"]  = { show = false },
    ["Panda Bear"]  = { show = false },
    ["Mother Bear"] = { show = false },
    ["Science Bear"] = { show = false },
	["Onett"] = { show = false },
}


local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer
local UserId = tostring(LocalPlayer.UserId)
local folderPath = "KhamKhomShop"
local fileName = folderPath .. "/" .. UserId .. "_Hook_Service.txt"
local itemHeight = 30

local function saveConfig()
    if not isfolder(folderPath) then makefolder(folderPath) end
    local dataToSave = {
        Showlist = {},
        BadgeShowlist = {},
        QuestShowlist = {} 
    }

    for k, v in pairs(Showlist) do
        dataToSave.Showlist[k] = { show = v.show, emoji = v.emoji }
    end
    for k, v in pairs(BadgeShowlist) do
        dataToSave.BadgeShowlist[k] = v
    end

    for k, v in pairs(QuestShowlist) do
        dataToSave.QuestShowlist[k] = { show = v.show }
    end

    writefile(fileName, HttpService:JSONEncode(dataToSave))
end


local function loadConfig()
    if isfile(fileName) then
        local data = readfile(fileName)
        local decoded = HttpService:JSONDecode(data)
        if decoded.Showlist then
            for k, v in pairs(decoded.Showlist) do
                if Showlist[k] then
                    Showlist[k].show = v.show
                end
            end
        end
        if decoded.BadgeShowlist then
            for k, v in pairs(decoded.BadgeShowlist) do
                if BadgeShowlist[k] ~= nil then
                    BadgeShowlist[k] = v
                end
            end
        end
        -- ✅ โหลดสถานะเควชรายหมี
        if decoded.QuestShowlist then
            for k, v in pairs(decoded.QuestShowlist) do
                if QuestShowlist[k] ~= nil and v and v.show ~= nil then
                    QuestShowlist[k].show = v.show
                end
            end
        end
    end
end

local function buildShowlistFrames()
    local itemFrames = {}
    local items = {}

    for name, data in pairs(Showlist) do
        table.insert(items, { name = name, data = data })
    end

    table.sort(items, function(a, b)
        return tostring(a.name):lower() < tostring(b.name):lower()
    end)

    for i, item in ipairs(items) do
        local itemFrame = Instance.new("Frame")
        itemFrame.Size = UDim2.new(1, 0, 0, 26)
        itemFrame.BackgroundColor3 = (i % 2 == 0)
            and Color3.fromRGB(26, 26, 26)
            or Color3.fromRGB(18, 18, 18)
        itemFrame.BorderSizePixel = 0

        local label = Instance.new("TextLabel", itemFrame)
        label.Name = "ItemName"
        label.Size = UDim2.new(0.7, -10, 1, 0)
        label.Position = UDim2.new(0, 10, 0, 0)
        label.BackgroundTransparency = 1
        label.Text = item.name
        label.TextColor3 = Color3.fromRGB(220, 220, 220)
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Font = Enum.Font.Gotham
        label.TextSize = 12
        label.TextScaled = false

        local toggle = Instance.new("TextButton", itemFrame)
        toggle.Size = UDim2.new(0.3, -8, 1, -8)
        toggle.Position = UDim2.new(0.7, 8, 0, 4)
        toggle.Text = item.data.show and "Show" or "Hide"
        toggle.TextColor3 = Color3.fromRGB(240, 240, 240)
        toggle.Font = Enum.Font.Gotham
        toggle.TextScaled = false
        toggle.TextSize = 12
        toggle.BorderSizePixel = 1

        local function updateToggleColor()
            if item.data.show then
                toggle.BackgroundColor3 = Color3.fromRGB(40, 90, 40)   -- ✅ เขียวบาง
                toggle.BorderColor3 = Color3.fromRGB(80, 160, 80)
            else
                toggle.BackgroundColor3 = Color3.fromRGB(90, 40, 40)   -- ❌ แดงบาง
                toggle.BorderColor3 = Color3.fromRGB(160, 80, 80)
            end
        end

        updateToggleColor()

        toggle.MouseButton1Click:Connect(function()
            item.data.show = not item.data.show
            toggle.Text = item.data.show and "Show" or "Hide"
            updateToggleColor()
            saveConfig()
        end)

        table.insert(itemFrames, itemFrame)
    end

    return itemFrames
end

local function buildBadgeShowlistFrames()
    local badgeFrames = {}
    local badges = {}

    for name, show in pairs(BadgeShowlist) do
        table.insert(badges, { name = name, show = show })
    end

    table.sort(badges, function(a, b)
        return tostring(a.name):lower() < tostring(b.name):lower()
    end)

    for i, badge in ipairs(badges) do
        local badgeFrame = Instance.new("Frame")
        badgeFrame.Size = UDim2.new(1, 0, 0, 26)
        badgeFrame.BackgroundColor3 = (i % 2 == 0)
            and Color3.fromRGB(26, 26, 26)
            or Color3.fromRGB(18, 18, 18)
        badgeFrame.BorderSizePixel = 0

        local label = Instance.new("TextLabel", badgeFrame)
        label.Name = "BadgeName"
        label.Size = UDim2.new(0.7, -10, 1, 0)
        label.Position = UDim2.new(0, 10, 0, 0)
        label.BackgroundTransparency = 1
        label.Text = badge.name
        label.TextColor3 = Color3.fromRGB(220, 220, 220)
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Font = Enum.Font.Gotham
        label.TextSize = 12
        label.TextScaled = false

        local toggle = Instance.new("TextButton", badgeFrame)
        toggle.Size = UDim2.new(0.3, -8, 1, -8)
        toggle.Position = UDim2.new(0.7, 8, 0, 4)
        toggle.Text = badge.show and "Show" or "Hide"
        toggle.TextColor3 = Color3.fromRGB(240, 240, 240)
        toggle.Font = Enum.Font.Gotham
        toggle.TextScaled = false
        toggle.TextSize = 12
        toggle.BorderSizePixel = 1

        local function updateToggleColor()
            if badge.show then
                toggle.BackgroundColor3 = Color3.fromRGB(40, 90, 40)
                toggle.BorderColor3 = Color3.fromRGB(80, 160, 80)
            else
                toggle.BackgroundColor3 = Color3.fromRGB(90, 40, 40)
                toggle.BorderColor3 = Color3.fromRGB(160, 80, 80)
            end
        end

        updateToggleColor()

        toggle.MouseButton1Click:Connect(function()
            BadgeShowlist[badge.name] = not BadgeShowlist[badge.name]
            badge.show = BadgeShowlist[badge.name]
            toggle.Text = badge.show and "Show" or "Hide"
            updateToggleColor()
            saveConfig()
        end)

        table.insert(badgeFrames, badgeFrame)
    end

    return badgeFrames
end

local function buildQuestFrames()
    local questFrames = {}
    local quests = {}

    for name, data in pairs(QuestShowlist) do
        table.insert(quests, { name = name, data = data })
    end

    table.sort(quests, function(a, b)
        return tostring(a.name):lower() < tostring(b.name):lower()
    end)

    for i, quest in ipairs(quests) do
        local questFrame = Instance.new("Frame")
        questFrame.Size = UDim2.new(1, 0, 0, 26)
        questFrame.BackgroundColor3 = (i % 2 == 0)
            and Color3.fromRGB(26, 26, 26)
            or Color3.fromRGB(18, 18, 18)
        questFrame.BorderSizePixel = 0

        local label = Instance.new("TextLabel", questFrame)
        label.Name = "QuestName"
        label.Size = UDim2.new(0.7, -10, 1, 0)
        label.Position = UDim2.new(0, 10, 0, 0)
        label.BackgroundTransparency = 1
        label.Text = quest.name
        label.TextColor3 = Color3.fromRGB(220, 220, 220)
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.Font = Enum.Font.Gotham
        label.TextSize = 12
        label.TextScaled = false

        local toggle = Instance.new("TextButton", questFrame)
        toggle.Size = UDim2.new(0.3, -8, 1, -8)
        toggle.Position = UDim2.new(0.7, 8, 0, 4)
        toggle.Text = quest.data.show and "Show" or "Hide"
        toggle.TextColor3 = Color3.fromRGB(240, 240, 240)
        toggle.Font = Enum.Font.Gotham
        toggle.TextScaled = false
        toggle.TextSize = 12
        toggle.BorderSizePixel = 1

        local function updateToggleColor()
            if quest.data.show then
                toggle.BackgroundColor3 = Color3.fromRGB(40, 90, 40)
                toggle.BorderColor3 = Color3.fromRGB(80, 160, 80)
            else
                toggle.BackgroundColor3 = Color3.fromRGB(90, 40, 40)
                toggle.BorderColor3 = Color3.fromRGB(160, 80, 80)
            end
        end

        updateToggleColor()

        toggle.MouseButton1Click:Connect(function()
            quest.data.show = not quest.data.show
            toggle.Text = quest.data.show and "Show" or "Hide"
            updateToggleColor()
            saveConfig()
        end)

        table.insert(questFrames, questFrame)
    end

    return questFrames
end

local function createUI(showFrames, badgeFrames, questFrames)
    -- ป้องกันซ้ำ
    if game.CoreGui:FindFirstChild("ItemUi") then
        game.CoreGui.ItemUi:Destroy()
        task.wait(0.05)
    end

    local itemhandbook = Instance.new("ScreenGui", game.CoreGui)
    itemhandbook.Name = "ItemUi"

    -- กล่องหลัก (เหลี่ยม มินิมอล)
    local mainFrame = Instance.new("Frame", itemhandbook)
    mainFrame.Size = UDim2.new(0, 440, 0, 520)
    mainFrame.AnchorPoint = Vector2.new(1, 0.5)
    mainFrame.Position = UDim2.new(1, -15, 0.5, 0)
    mainFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
    mainFrame.BorderSizePixel = 1
    mainFrame.BorderColor3 = Color3.fromRGB(50, 50, 50)
    mainFrame.Active = true

    -- Title Bar
    local titleBar = Instance.new("Frame", mainFrame)
    titleBar.Size = UDim2.new(1, 0, 0, 30)
    titleBar.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    titleBar.BorderSizePixel = 0

    local title = Instance.new("TextLabel", titleBar)
    title.Text = "Bee Swarm Config Panel"
    title.Size = UDim2.new(1, -10, 1, 0)
    title.Position = UDim2.new(0, 10, 0, 0)
    title.BackgroundTransparency = 1
    title.TextColor3 = Color3.fromRGB(220, 220, 220)
    title.Font = Enum.Font.GothamMedium
    title.TextScaled = false
    title.TextSize = 14
    title.TextXAlignment = Enum.TextXAlignment.Left

    -- SearchBox (อยู่ใต้ titleBar)
    local searchBox = Instance.new("TextBox", mainFrame)
    searchBox.PlaceholderText = "Search..."
    searchBox.Size = UDim2.new(1, -16, 0, 26)
    searchBox.Position = UDim2.new(0, 8, 0, 35 + 3) -- ระยะห่างเล็กน้อย
    searchBox.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
    searchBox.TextColor3 = Color3.fromRGB(220, 220, 220)
    searchBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
    searchBox.BorderSizePixel = 1
    searchBox.BorderColor3 = Color3.fromRGB(50, 50, 50)
    searchBox.TextXAlignment = Enum.TextXAlignment.Left
    searchBox.ClearTextOnFocus = false
    searchBox.Font = Enum.Font.Gotham
    searchBox.TextScaled = false
    searchBox.TextSize = 12
    searchBox.Text = ""

    -- แถบแท็บ (ใต้ SearchBox)
    local tabBar = Instance.new("Frame", mainFrame)
    tabBar.Size = UDim2.new(1, 0, 0, 28)
    tabBar.Position = UDim2.new(0, 0, 0, 35 + 3 + 26 + 5) -- title(30) + margin + search(26) + margin
    tabBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    tabBar.BorderSizePixel = 0

    local tabs = {
        {name = "Items", icon = "🎒"},
        {name = "Quests", icon = "📜"},
        {name = "Badges", icon = "🏅"},
        {name = "Settings", icon = "⚙️"},
    }

    local tabButtons = {}
    local activeTab = nil

    -- หน้าต่างเนื้อหา (ใช้พื้นที่จากใต้ tabBar ลงไป)
    local contentTop = 35 + 3 + 26 + 5 + 28 + 6
    local contentHeightOffset = -(contentTop + 8)

    -- Items
    local scrollShow = Instance.new("ScrollingFrame", mainFrame)
    scrollShow.Name = "scrollShow"
    scrollShow.Size = UDim2.new(1, -8, 1, contentHeightOffset)
    scrollShow.Position = UDim2.new(0, 4, 0, contentTop)
    scrollShow.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    scrollShow.BorderSizePixel = 0
    scrollShow.ScrollBarThickness = 6
    scrollShow.AutomaticCanvasSize = Enum.AutomaticSize.Y

    for i, frame in ipairs(showFrames) do
        frame.Parent = scrollShow
        frame.Position = UDim2.new(0, 0, 0, (i - 1) * 26)
        frame.Size = UDim2.new(1, 0, 0, 26)
        frame.BackgroundColor3 = (i % 2 == 0) and Color3.fromRGB(26, 26, 26) or Color3.fromRGB(18, 18, 18)
        frame.BorderSizePixel = 0
        local label = frame:FindFirstChild("ItemName")
        if label then
            label.TextColor3 = Color3.fromRGB(220, 220, 220)
            label.Font = Enum.Font.Gotham
            label.TextScaled = false
            label.TextSize = 12
        end
    end

    -- Quests (placeholder)
	local scrollQuest = Instance.new("ScrollingFrame", mainFrame)
	scrollQuest.Name = "scrollQuest"
	scrollQuest.Size = UDim2.new(1, -8, 1, contentHeightOffset) 
	scrollQuest.Position = UDim2.new(0, 4, 0, contentTop)
	scrollQuest.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	scrollQuest.BorderSizePixel = 0
	scrollQuest.ScrollBarThickness = 6
	scrollQuest.AutomaticCanvasSize = Enum.AutomaticSize.Y
	scrollQuest.Visible = false

	
	for i, frame in ipairs(questFrames) do
		frame.Parent = scrollQuest
		frame.Position = UDim2.new(0, 0, 0, (i - 1) * 26)
		frame.Size = UDim2.new(1, 0, 0, 26)
	end


    -- Badges
    local scrollBadge = Instance.new("ScrollingFrame", mainFrame)
    scrollBadge.Name = "scrollBadge"
    scrollBadge.Size = UDim2.new(1, -8, 1, contentHeightOffset)
    scrollBadge.Position = UDim2.new(0, 4, 0, contentTop)
    scrollBadge.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    scrollBadge.BorderSizePixel = 0
    scrollBadge.ScrollBarThickness = 6
    scrollBadge.Visible = false

    for i, frame in ipairs(badgeFrames) do
        frame.Parent = scrollBadge
        frame.Position = UDim2.new(0, 0, 0, (i - 1) * 26)
        frame.Size = UDim2.new(1, 0, 0, 26)
        frame.BackgroundColor3 = (i % 2 == 0) and Color3.fromRGB(26, 26, 26) or Color3.fromRGB(18, 18, 18)
        frame.BorderSizePixel = 0
        local label = frame:FindFirstChild("ItemName")
        if label then
            label.TextColor3 = Color3.fromRGB(220, 220, 220)
            label.Font = Enum.Font.Gotham
            label.TextScaled = false
            label.TextSize = 12
        end
    end

    -- Settings (placeholder)
    local scrollSettings = Instance.new("Frame", mainFrame)
    scrollSettings.Name = "scrollSettings"
    scrollSettings.Size = UDim2.new(1, -8, 1, contentHeightOffset)
    scrollSettings.Position = UDim2.new(0, 4, 0, contentTop)
    scrollSettings.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    scrollSettings.BorderSizePixel = 0
    scrollSettings.Visible = false

    local txt = Instance.new("TextLabel", scrollSettings)
    txt.Text = "⚙️ Settings Tab — Minimal UI"
    txt.TextColor3 = Color3.fromRGB(180, 180, 180)
    txt.Font = Enum.Font.Gotham
    txt.TextSize = 13
    txt.BackgroundTransparency = 1
    txt.Size = UDim2.new(1, 0, 0, 30)
    txt.Position = UDim2.new(0, 8, 0, 8)
    txt.TextXAlignment = Enum.TextXAlignment.Left

    -- สร้างปุ่มแท็บ
    for i, tab in ipairs(tabs) do
        local btn = Instance.new("TextButton", tabBar)
        btn.Size = UDim2.new(1 / #tabs, -1, 1, 0)
        btn.Position = UDim2.new((i - 1) / #tabs, i - 1, 0, 0)
        btn.Text = tab.icon .. "  " .. tab.name
        btn.Font = Enum.Font.Gotham
        btn.TextSize = 12
        btn.TextColor3 = Color3.fromRGB(200, 200, 200)
        btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        btn.BorderSizePixel = 0
        btn.AutoButtonColor = false
        tabButtons[tab.name] = btn
    end

    -- เปลี่ยนแท็บ
	local function switchTab(tabName)
		scrollShow.Visible     = (tabName == "Items")
		scrollQuest.Visible    = (tabName == "Quests")
		scrollBadge.Visible    = (tabName == "Badges")
		scrollSettings.Visible = (tabName == "Settings")

		for name, btn in pairs(tabButtons) do
			btn.BackgroundColor3 = (name == tabName) and Color3.fromRGB(45,45,45) or Color3.fromRGB(30,30,30)
		end
		activeTab = tabName
	end


    for name, btn in pairs(tabButtons) do
        btn.MouseButton1Click:Connect(function()
            switchTab(name)
        end)
    end

    -- ระบบค้นหา
    local function filterFrames(frames, searchText)
        local y = 0
        for _, frame in ipairs(frames) do
            local label = frame:FindFirstChildWhichIsA("TextLabel")
            local visible = true
            if label then
                visible = string.find(string.lower(label.Text), string.lower(searchText), 1, true) ~= nil
            end
            frame.Visible = visible
            if visible then
                frame.Position = UDim2.new(0, 0, 0, y)
                y = y + 26
            end
        end
    end

	searchBox:GetPropertyChangedSignal("Text"):Connect(function()
		if activeTab == "Items" then
			filterFrames(showFrames, searchBox.Text)
		elseif activeTab == "Badges" then
			filterFrames(badgeFrames, searchBox.Text)
		elseif activeTab == "Quests" then
			filterFrames(questFrames, searchBox.Text)
		end
	end)


    -- เปิดหน้าแรก
    switchTab("Items")

    return itemhandbook
end



loadConfig()
local showFrames = buildShowlistFrames()
local badgeFrames = buildBadgeShowlistFrames()
local questFrames = buildQuestFrames()
createUI(showFrames, badgeFrames, questFrames)

-----Webhook Auto----

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer
local UserId = LocalPlayer.UserId

local folderName = "ClematisHub/WebhookService_" .. UserId
local fileName = folderName .. "/config.json"

if not isfolder("ClematisHub") then makefolder("ClematisHub") end
if not isfolder(folderName) then makefolder(folderName) end

local config = {
    WebhookUrl = "",
    Enabled = false,
    Delay = 60,
    Anonymous = false,
}

if isfile(fileName) then
    local ok, data = pcall(function()
        return HttpService:JSONDecode(readfile(fileName))
    end)
    if ok and typeof(data) == "table" then
        config = data
    end
else
    writefile(fileName, HttpService:JSONEncode(config))
end

local function saveConfig()
    writefile(fileName, HttpService:JSONEncode(config))
end

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "WebhookUI"
gui.ResetOnSpawn = false

local frame = Instance.new("Frame")
frame.Name = "MainFrame"
frame.Size = UDim2.new(0, 320, 0, 420)
frame.Position = UDim2.new(0, 0, 0, 0)
frame.AnchorPoint = Vector2.new(0, 0)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 0
frame.ClipsDescendants = true
frame.Active = true
frame.Draggable = true
frame.ZIndex = 1
frame.Parent = gui

local UICorner = Instance.new("UICorner", frame)
UICorner.CornerRadius = UDim.new(0, 12)

local titleLabel = Instance.new("TextLabel", frame)
titleLabel.Size = UDim2.new(1, 0, 0, 30)
titleLabel.Position = UDim2.new(0, 0, 0.03, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "🌐 Weebhook Service"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextScaled = false
titleLabel.TextSize = 20
titleLabel.Font = Enum.Font.GothamBold
titleLabel.ZIndex = 3

local function createTextBox(name, placeholder, defaultText, position)
    local box = Instance.new("TextBox", frame)
    box.Name = name
    box.PlaceholderText = placeholder
    box.Text = defaultText or ""
    box.Size = UDim2.new(1, -20, 0, 30)
    box.Position = position
    box.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    box.TextColor3 = Color3.fromRGB(255, 255, 255)
    box.BorderSizePixel = 0
    box.Font = Enum.Font.Gotham
    box.TextScaled = false
    box.TextSize = 18
    local corner = Instance.new("UICorner", box)
    corner.CornerRadius = UDim.new(0, 8)
    return box
end

local function createButton(text, position, color)
    local btn = Instance.new("TextButton", frame)
    btn.Text = text
    btn.Size = UDim2.new(1, -20, 0, 30)
    btn.Position = position
    btn.BackgroundColor3 = color
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BorderSizePixel = 0
    btn.Font = Enum.Font.Gotham
    btn.TextScaled = false
    btn.TextSize = 18
    local corner = Instance.new("UICorner", btn)
    corner.CornerRadius = UDim.new(0, 8)
    return btn
end

local StartY = 40
local YGap = 40

local webhookBox = createTextBox("WebhookBox", "Enter Webhook URL", config.WebhookUrl, UDim2.new(0, 10, 0, StartY))
webhookBox.FocusLost:Connect(function()
    config.WebhookUrl = webhookBox.Text
    saveConfig()
end)

if config.Delay == nil then
    config.Delay = 60
    saveConfig()
end

local delayBox = createTextBox("DelayBox", "Delay (sec)", tostring(config.Delay), UDim2.new(0, 10, 0, StartY + YGap))
delayBox.FocusLost:Connect(function()
    local val = tonumber(delayBox.Text)
    if val then
        config.Delay = val
        saveConfig()
    end
end)

local flagOptions = {
    Item = false,
    Quest = false,
    Badge = false,
}

if config.Flags == nil then
    config.Flags = flagOptions
    saveConfig()
else
    for k, v in pairs(flagOptions) do
        if config.Flags[k] == nil then
            config.Flags[k] = v
        end
    end
end

local startY = StartY + YGap * 2 + 120

local flagLabel = Instance.new("TextLabel", frame)
flagLabel.Size = UDim2.new(1, -20, 0, 30)
flagLabel.Position = UDim2.new(0, 10, 0, startY)
flagLabel.BackgroundTransparency = 1
flagLabel.Text = "🚩 Flag Settings"
flagLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
flagLabel.TextScaled = false
flagLabel.TextSize = 18
flagLabel.Font = Enum.Font.GothamBold

local checkboxes = {}

local checkboxCount = 0
for name, default in pairs(flagOptions) do
    local checkbox = Instance.new("TextButton", frame)
    checkbox.Size = UDim2.new(1, -20, 0, 30)
    checkbox.Position = UDim2.new(0, 10, 0, startY + 30 + checkboxCount * 35)
    checkbox.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    checkbox.TextColor3 = Color3.fromRGB(255, 255, 255)
    checkbox.Font = Enum.Font.Gotham
    checkbox.TextScaled = false
    checkbox.TextSize = 18
    checkbox.Text = (config.Flags[name] and "✅ " or "❌ ") .. name

    local corner = Instance.new("UICorner", checkbox)
    corner.CornerRadius = UDim.new(0, 6)

    checkbox.MouseButton1Click:Connect(function()
        config.Flags[name] = not config.Flags[name]
        checkbox.Text = (config.Flags[name] and "✅ " or "❌ ") .. name
        saveConfig()
    end)

    checkboxes[name] = checkbox
    checkboxCount = checkboxCount + 1
end

---Service
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local menus = playerGui:WaitForChild("ScreenGui"):WaitForChild("Menus")
local childTabs = menus:WaitForChild("ChildTabs")
local eggsTab = childTabs:WaitForChild("Eggs Tab")
local badgesTab = childTabs:WaitForChild("Badges Tab")
local questsTab = childTabs:WaitForChild("Quests Tab")
local http = game:GetService("HttpService")

local usernamemode = game.Players.LocalPlayer.Name
if config.Anonymous then
    usernamemode = "Anonymous | ไม่เปิดเผยชื่อ"
else
    usernamemode = game.Players.LocalPlayer.Name
end

-- 🐝 สมสี - opentab แบบล็อกแท็บ + ส่ง Enter + คืนคอนโทรล (เสถียร)
-- ใช้ชื่อแท็บแบบที่มึงเรียกอยู่แล้ว เช่น "Eggs Tab", "Quests Tab", "Badges Tab"
local function findChildTabs()
    local player = game:GetService("Players").LocalPlayer
    local playerGui = player:FindFirstChild("PlayerGui")
    if not playerGui then return nil end
    local screenGui = playerGui:FindFirstChild("ScreenGui")
    if not screenGui then return nil end
    local menus = screenGui:FindFirstChild("Menus")
    if not menus then return nil end
    local childTabs = menus:FindFirstChild("ChildTabs")
    return childTabs
end

local function getTabByNameLike(tabDisplayName)
    local childTabs = findChildTabs()
    if not childTabs then return nil end
    local targetLower = string.lower(tabDisplayName)
    for _, tab in ipairs(childTabs:GetChildren()) do
        if (tab:IsA("ImageButton") or tab:IsA("TextButton")) and tab.Name then
            if string.find(string.lower(tab.Name), targetLower, 1, true) then
                return tab
            end
        end
    end
    return nil
end

function opentab(tabName)
    print("🎯 [เปิดแท็บ] " .. tostring(tabName))
    local tab = getTabByNameLike(tabName)
    if not tab then
        warn("❌ ไม่พบแท็บ: " .. tostring(tabName))
        return false
    end

    -- ล็อก selection ไปที่ปุ่มแท็บ
    game:GetService("GuiService").SelectedObject = tab
    task.wait(0.3)

    -- ส่งคีย์ Enter เพื่อกดแท็บ
    local VIM = game:GetService("VirtualInputManager")
    VIM:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
    task.wait(0.1)
    VIM:SendKeyEvent(false, Enum.KeyCode.Return, false, game)

    -- รอให้เนื้อหาแท็บโหลด
    task.wait(0.8)

    -- คืนการควบคุม
    game:GetService("GuiService").SelectedObject = nil
    print("✅ เปิดแท็บสำเร็จ + คืนคอนโทรล")
    return true
end

local function resettab()
    local sec = game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Menus.Children
    for _, v in pairs(sec:GetDescendants()) do
        if v:IsA("ScrollingFrame") and v.Name == "Content" then
            local childCount = #v:GetChildren()
            if childCount >= 1 then
                opentab(v.Parent.Name.." Tab")
            end
        end
    end
end

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local CoreGui = game:GetService("CoreGui")
local targets = {
    CoreGui:FindFirstChild("ItemUi"),
    CoreGui:FindFirstChild("WebhookUI")
}

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ToggleUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

local toggleFrame = Instance.new("Frame")
toggleFrame.Size = UDim2.new(0, 120, 0, 40)
toggleFrame.Position = UDim2.new(0.5, 0, 0.5, 10)
toggleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
toggleFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggleFrame.BorderSizePixel = 1
toggleFrame.Parent = screenGui


local toggleLabel = Instance.new("TextLabel")
toggleLabel.Size = UDim2.new(1, 0, 1, 0)
toggleLabel.BackgroundTransparency = 1
toggleLabel.Text = "Open/Close"
toggleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleLabel.TextScaled = true
toggleLabel.Parent = toggleFrame

local enabled = true

local function toggleUI()
    enabled = not enabled
    for _, ui in ipairs(targets) do
        if ui then
            ui.Enabled = enabled
        end
    end
end

toggleFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        toggleUI()
    end
end)

local dragging = false
local dragStartPos
local frameStartPos

toggleFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStartPos = input.Position
        frameStartPos = toggleFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStartPos
        toggleFrame.Position = UDim2.new(
            frameStartPos.X.Scale,
            frameStartPos.X.Offset + delta.X,
            frameStartPos.Y.Scale,
            frameStartPos.Y.Offset + delta.Y
        )
    end
end)

toggleFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseWheel then
        local delta = input.Position.Z / 120
        local newWidth = math.clamp(toggleFrame.Size.X.Offset + delta*10, 50, 300)
        local newHeight = math.clamp(toggleFrame.Size.Y.Offset + delta*5, 20, 150)
        toggleFrame.Size = UDim2.new(0, newWidth, 0, newHeight)
    end
end)

local function SendMessageEMBED(url, embed)
    local headers = {
        ["Content-Type"] = "application/json"
    }

    local data = {
        username = game.Players.LocalPlayer.Name,
        avatar_url = "https://media.discordapp.net/attachments/1371924996766564402/1374117907646255135/Main.png?ex=682e3407&is=682ce287&hm=3167e7ffde6ea2f6d6c2e014796c602684d24e29f01cb40014fea733c264b108&=&format=webp&quality=lossless",
        embeds = { {
            title = "**⸻ 🌻 Bee Swarm Simulator 🐝 ⸻**",
            color = embed.color or tonumber(0x00FFFF),
            thumbnail = { url = embed.thumbnail or "" },
            image = { url = embed.image or "" },
            fields = embed.fields or {},
            footer = {
                text = embed.footer and embed.footer.text or "📅 Time Report"
            },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }}
    }

    local success, err = pcall(function()
        http_request({
            Url = url,
            Method = "POST",
            Headers = headers,
            Body = http:JSONEncode(data)
        })
    end)

    if success then
        print("📤 Message Sent to Discord Webhook")
    else
        warn("❌ Webhook ส่งไม่สำเร็จ:", err)
    end
end

function randomHexColor()
    local randomColor = math.random(0, 0xFFFFFF)
    
    return randomColor
end

local function formatNumberWithCommas(n)
    n = math.floor(n)
    local formatted = tostring(n)
    local k
    while true do
        formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
        if k == 0 then break end
    end
    return formatted
end

AutoWebhook = config.Enabled or false

function eggtab_webhook_service()
    if not config.Flags.Item then return end
                task.wait(0.3)
                opentab("Eggs Tab")
                local allowedNames = {}
                for name, info in pairs(Showlist) do
                    if info.show then
                allowedNames[name] = info.emoji or "📦"
                end
            end
            task.wait(2)
                local maintofind
                local maxRetries = 50
                local tries = 0
                while not maintofind and tries < maxRetries do
                    tries = tries + 1

                    local Players = game:GetService("Players")
                    local localPlayer = Players.LocalPlayer
                    local playerGui = localPlayer:FindFirstChild("PlayerGui")
                    if not playerGui then 
                        warn("❌ ไม่พบ PlayerGui") 
                        break
                    end
                    local screenGui = playerGui:FindFirstChild("ScreenGui")
                    if not screenGui then 
                        warn("❌ ไม่พบ ScreenGui") 
                    else
                        local menus = screenGui:FindFirstChild("Menus")
                        if not menus then 
                            warn("❌ ไม่พบ Menus") 
                        else
                            local children = menus:FindFirstChild("Children")
                            if not children then 
                                warn("❌ ไม่พบ Children") 
                            else
                                local eggs = children:FindFirstChild("Eggs")
                                if not eggs then 
                                    warn("❌ ไม่พบ Eggs") 
                                else
                                    local content = eggs:FindFirstChild("Content")
                                    if not content then 
                                        warn("❌ ไม่พบ Content") 
                                    else
                                        maintofind = content:FindFirstChild("EggRows")
                                        if not maintofind then
                                            resettab()
                                            warn("❌ ไม่พบ Inventory Ui - Retry " .. tries)
                                        end
                                    end
                                end
                            end
                        end
                    end
    if not maintofind then
        resettab()
        task.wait(0.2)
    end
    end

    local TeleportService = game:GetService("TeleportService")
    local PlaceId, JobId = game.PlaceId, game.JobId

    if not maintofind then
        warn("❌ หยุดการทำงานเนื่องจากไม่พบ Inventory หลังจากลอง " .. maxRetries .. " ครั้ง กำลัง Rejoin")

        if #Players:GetPlayers() <= 1 then
            Players.LocalPlayer:Kick("\nRejoining...")
            task.wait()
            TeleportService:Teleport(PlaceId, Players.LocalPlayer)
        else
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, Players.LocalPlayer)
        end
    end

    local fields = {}
    local countLimit = 0
    local maxFields = 25

    for _, eggRow in pairs(maintofind:GetChildren()) do
        if countLimit >= maxFields then break end

            if eggRow:FindFirstChild("TypeName") and eggRow:FindFirstChild("EggSlot") then
            local typeName = eggRow.TypeName
            local eggSlot = eggRow.EggSlot
            local count = eggSlot:FindFirstChild("Count")

        if typeName:IsA("TextLabel") and count and count:IsA("TextLabel") then
            local nameText = string.sub(typeName.Text, 1, 256)

            if allowedNames[nameText] then
                local emoji = allowedNames[nameText]
                local displayText = emoji .. " [ " .. nameText .. " ] : " .. count.Text

                table.insert(fields, {
                    name = displayText,
                    value = " ",
                    inline = false
                })

                countLimit = countLimit + 1
                end
            end
        end
    end

    beeCount = 0

    local myname = game.Players.LocalPlayer.Name
    local hives = workspace.Honeycombs:GetChildren()
    local basemyhive = nil

    for _, hive in ipairs(hives) do
        local owner = hive:FindFirstChild("Owner")
        if owner and owner:IsA("ObjectValue") and owner.Value and owner.Value.Name == myname then
            basemyhive = hive
        end
    end

    if not basemyhive then
        warn("❌ ไม่พบ Hive ของคุณ")
    end

    if basemyhive then
    cells = basemyhive:FindFirstChild("Cells")

    if cells then
        for _, cell in ipairs(cells:GetChildren()) do
            local cellType = cell:FindFirstChild("CellType")
            if cellType and cellType:IsA("StringValue") and cellType.Value ~= "Empty" then
            beeCount = beeCount + 1
            end
        end
    else
        warn("❌ ไม่พบ Cells ภายใน Hive")
    end
    end

    if beeCount == 0 then
        finalbeeCount = "```" .. "❌ ผู้เล่นไม่ได้รับช่องรัง" .. "```"
    end

        if beeCount >= 1 then
        finalbeeCount = "```" .. "จำนวนผึ้ง : " .. tostring(beeCount) .. " ตัว" .. "```"
    end

    local HttpService = game:GetService("HttpService")
    local userId = game.Players.LocalPlayer.UserId
    local apiURL = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. userId .. "&size=420x420&format=Png&isCircular=false"

    local avatarImageURL = nil

    local success, response = pcall(function()
        local json = HttpService:JSONDecode(game:HttpGet(apiURL))
        avatarImageURL = json.data[1].imageUrl
    end)

    if not avatarImageURL then
        avatarImageURL = "https://tr.rbxcdn.com/default_avatar.png"
    end

    local myhoney = game:GetService("Players").LocalPlayer.CoreStats.Honey.Value
    local mypollen = game:GetService("Players").LocalPlayer.CoreStats.Pollen.Value
    local mycapacity = game:GetService("Players").LocalPlayer.CoreStats.Capacity.Value

    local inventoryText = ""

    if #fields == 0 then
        inventoryText = inventoryText .. "❌ ไม่ได้ตั้งค่าไอเทมที่จะส่งข้อมูล\n"
    else
        for _, field in ipairs(fields) do
            inventoryText = inventoryText .. "> " .. field.name .. "\n"
        end
    end

    inventoryText = inventoryText

    local sectionFields = {
        { name = "<:user:1374753027625582682> Username ", value = "```" .. usernamemode .. "```", inline = false },
        { name = "**⸻ Information ⸻**", value = " ", inline = false }
    }

    local baseFields = {
        { name = "<:Honey:1374751354622574763> **Honey**", value = "```" .. formatNumberWithCommas(myhoney) .. "```", inline = false },
        { name = "<:Pollen:1374751948774969344> **Pollen/Capacity**", value = "```" .. formatNumberWithCommas(mypollen) .. "/" .. formatNumberWithCommas(mycapacity) .. "```", inline = true },
        { name = "<:Basic_Egg:1374459785113763891> **Bee count**", value = finalbeeCount, inline = true },
        { name = "<:Inv:1374752562087067801> **Inventory**", value = inventoryText, inline = false }
    }

    local finalFields = {}
    for _, field in ipairs(sectionFields) do
        table.insert(finalFields, field)
    end
    for _, field in ipairs(baseFields) do
        table.insert(finalFields, field)
    end

    if config.WebhookUrl == "" or nil then
            game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "❌ ล้มเหลว!",
            Text = "ส่งไม่สำเร็จ: Webhook Url ว่างเปล่า",
            Icon = "rbxthumb://type=Asset&id=6031071050&w=150&h=150",
            Duration = 6
            })
    end
    SendMessageEMBED(config.WebhookUrl, {
        color = randomHexColor(),
        thumbnail = avatarImageURL,
        image = "https://cdn.discordapp.com/attachments/1371924996766564402/1374403252057149450/KhamKhomShop.jpg?ex=682dec46&is=682c9ac6&hm=66f4dac5960243b3717a984a746c87b66a9de5e721446b0b9eda12032943b98e&",
        fields = finalFields,
        footer = {
            text = "⸻ » Powered by KhamKhomShop | Webhook Service « ⸻"
        }
    })

task.wait(1)
end


function questtab_webhook_service()
    if not config.Flags.Quest then return end

    local Players = game:GetService("Players")
    local localPlayer = Players.LocalPlayer
    local HttpService = game:GetService("HttpService")
    local TeleportService = game:GetService("TeleportService")
    resettab()
    opentab("Quests Tab")
            task.wait(2)
                local maintofind2
                local maxRetries2 = 50
                local tries2 = 0
                while not maintofind2 and tries2 < maxRetries2 do
                    tries2 = tries2 + 1

                    local Players = game:GetService("Players")
                    local localPlayer = Players.LocalPlayer
                    local playerGui = localPlayer:FindFirstChild("PlayerGui")
                    if not playerGui then 
                        warn("❌ ไม่พบ PlayerGui") 
                        break
                    end
                    local screenGui = playerGui:FindFirstChild("ScreenGui")
                    if not screenGui then 
                        warn("❌ ไม่พบ ScreenGui") 
                    else
                        local menus = screenGui:FindFirstChild("Menus")
                        if not menus then 
                            warn("❌ ไม่พบ Menus") 
                        else
                            local children = menus:FindFirstChild("Children")
                            if not children then 
                                warn("❌ ไม่พบ Children") 
                            else
                                local eggs = children:FindFirstChild("Quests")
                                if not eggs then 
                                    warn("❌ ไม่พบ Quests") 
                                else
                                    local content = eggs:FindFirstChild("Content")
                                    if not content then 
                                        warn("❌ ไม่พบ Content") 
                                    else
                                        maintofind2 = content:FindFirstChild("Frame")
                                        if not maintofind2 then
                                            resettab()
                                            warn("❌ ไม่พบ Inventory Ui - Retry " .. tries2)
                                        end
                                    end
                                end
                            end
                        end
                    end
    if not maintofind2 then
        resettab()
        task.wait(0.2)
    end
    end

    local TeleportService = game:GetService("TeleportService")
    local PlaceId, JobId = game.PlaceId, game.JobId

    if not maintofind2 then
        warn("❌ หยุดการทำงานเนื่องจากไม่พบ Inventory หลังจากลอง " .. maxRetries2 .. " ครั้ง กำลัง Rejoin")

        if #Players:GetPlayers() <= 1 then
            Players.LocalPlayer:Kick("\nRejoining...")
            task.wait()
            TeleportService:Teleport(PlaceId, Players.LocalPlayer)
        else
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, Players.LocalPlayer)
        end
    end

    -- ✅ Map: ชื่อเควช (ที่อ่านจาก UI) → ชื่อหมีเจ้าของเควช

	local QuestOwnerMap = {
    -- 🧭 Spirit Bear
    ["Spirit's Starter"] = "Spirit Bear",
    ["The First Offering"] = "Spirit Bear",
    ["Rules of The Road"] = "Spirit Bear",
    ["QR Quest"] = "Spirit Bear",
    ["Pleasant Pastimes"] = "Spirit Bear",
    ["Nature's Lessons"] = "Spirit Bear",
    ["The Gifts Of Life"] = "Spirit Bear",
    ["Out-Questing Questions"] = "Spirit Bear",
    ["Forcefully Friendly"] = "Spirit Bear",
    ["Sway Away"] = "Spirit Bear",
    ["Memories of Memories"] = "Spirit Bear",
    ["Beans Becoming"] = "Spirit Bear",
    ["Do You Bee-lieve in Magic?"] = "Spirit Bear",
    ["The Ways Of The Winds / The Wind And Its Way"] = "Spirit Bear",
    ["Beauty Duty"] = "Spirit Bear",
    ["Witness Grandeur"] = "Spirit Bear",
    ["Beeternity"] = "Spirit Bear",
    ["A Breath Of Blue"] = "Spirit Bear",
    ["Glory Of Goo"] = "Spirit Bear",
    ["Tickle The Wind"] = "Spirit Bear",
    ["Rhubarb That Could Have Been"] = "Spirit Bear",
    ["Dreams Of Being A Bee"] = "Spirit Bear",
    ["The Sky Over The Stump"] = "Spirit Bear",
    ["Space Oblivion"] = "Spirit Bear",
    ["Pollenpalooza"] = "Spirit Bear",
    ["Dancing With Stick Bug"] = "Spirit Bear",
    ["Bear Without Despair"] = "Spirit Bear",
    ["Spirit Spree"] = "Spirit Bear",
    ["Echoing Call"] = "Spirit Bear",
    ["Spring Out Of The Mountain"] = "Spirit Bear",


    -- ⚫ Black Bear
    -- 🥈 Silver Egg Quests (6)
    ["Sunflower Start"] = "Black Bear",
    ["Dandelion Deed"] = "Black Bear",
    ["Pollen Fetcher"] = "Black Bear",
    ["Red Request"] = "Black Bear",
    ["Into The Blue"] = "Black Bear",
    ["Variety Fetcher"] = "Black Bear",

    -- 🥇 Gold Egg Quests (9)
    ["Bamboo Boogie"] = "Black Bear",
    ["Red Request 2"] = "Black Bear",
    ["Cobweb Sweeper"] = "Black Bear",
    ["Leisure Loot"] = "Black Bear",
    ["White Pollen Wrangler"] = "Black Bear",
    ["Pineapple Picking"] = "Black Bear",
    ["Pollen Fetcher 2"] = "Black Bear",
    ["Weed Wacker"] = "Black Bear",
    ["Red + Blue = Gold"] = "Black Bear",

    -- 💎 Diamond Egg Quests (20)
    ["Colorless Collection"] = "Black Bear",
    ["Spirit of Springtime"] = "Black Bear",
    ["Weed Wacker 2"] = "Black Bear",
    ["Pollen Fetcher 3"] = "Black Bear",
    ["Lucky Landscaping"] = "Black Bear",
    ["Azure Adventure"] = "Black Bear",
    ["Pink Pineapples"] = "Black Bear",
    ["Blue Mushrooms"] = "Black Bear",
    ["Cobweb Sweeper 2"] = "Black Bear",
    ["Rojo-A-Go-Go"] = "Black Bear",
    ["Pumpkin Plower"] = "Black Bear",
    ["Bouncing Around Biomes"] = "Black Bear",
    ["Blue Pineapples"] = "Black Bear",
    ["Rose Request"] = "Black Bear",
    ["Search For The White Clover"] = "Black Bear",
    ["Stomping Grounds"] = "Black Bear",
    ["Collecting Cliffside"] = "Black Bear",
    ["Mountain Meandering"] = "Black Bear",
    ["Quest Of Legends"] = "Black Bear",

    -- 🌟 Star Jelly Quests (20)
    ["High Altitude"] = "Black Bear",
    ["Blissfully Blue"] = "Black Bear",
    ["Rouge Round-up"] = "Black Bear",
    ["White As Snow"] = "Black Bear",
    ["Solo On The Stump"] = "Black Bear",
    ["Colorful Craving"] = "Black Bear",
    ["Pumpkins, Please!"] = "Black Bear",
    ["Smorgasbord"] = "Black Bear",
    ["Pollen Fetcher 5"] = "Black Bear",
    ["White Clover Redux"] = "Black Bear",
    ["Strawberry Field Forever"] = "Black Bear",
    ["Tasting The Sky"] = "Black Bear",
    ["Whispy and Crispy"] = "Black Bear",
    ["Walk Through The Woods"] = "Black Bear",
    ["Get Red-y"] = "Black Bear",
    ["One Stop On The Tip Top"] = "Black Bear",
    ["Blue Mushrooms 2"] = "Black Bear",
    ["Pretty Pumpkins"] = "Black Bear",
    ["Black Bear, Why?"] = "Black Bear",
    ["Bee A Star"] = "Black Bear",

    -- 🧬 Mythic Egg Quests (20)
    ["Bamboo Boogie 2: Bamboo Boogaloo"] = "Black Bear",
    ["Rocky Red Mountain"] = "Black Bear",
    ["Can't Without Ants"] = "Black Bear",
    ["The 15 Bee Zone"] = "Black Bear",
    ["Bubble Trouble"] = "Black Bear",
    ["Sweet And Sour"] = "Black Bear",
    ["Rare Red Clover"] = "Black Bear",
    ["Low Tier Treck"] = "Black Bear",
    ["Okey-Pokey"] = "Black Bear",
    ["Pollen Fetcher 6"] = "Black Bear",
    ["Capsaicin Collector"] = "Black Bear",
    ["Mountain Mix"] = "Black Bear",
    ["You Blue It"] = "Black Bear",
    ["Variety Fetcher 2"] = "Black Bear",
    ["Getting Stumped"] = "Black Bear",
    ["Weed Wacker 3"] = "Black Bear",
    ["All-Whitey Then"] = "Black Bear",
    ["Red Delicacy"] = "Black Bear",
    ["Boss Battles"] = "Black Bear",
    ["Myth In The Making"] = "Black Bear",

    -- 🧊 Polar Bear
    ["Polar Power"] = "Polar Bear",
    ["Cooking With Polar Bear"] = "Polar Bear",
    ["Chef's Helper"] = "Polar Bear",
    ["Lunch Time!"] = "Polar Bear",
    ["Starry Feast"] = "Polar Bear",

    -- 🐼 Panda Bear
    -- 🥈 Silver Egg Quests (8)
    ["Lesson on Ladybugs"] = "Panda Bear",
    ["Rhino Rumble"] = "Panda Bear",
    ["Beetle Battle"] = "Panda Bear",
    ["Spider Slayer"] = "Panda Bear",
    ["Ladybug Bonker"] = "Panda Bear",
    ["Spider Slayer 2"] = "Panda Bear",
    ["Rhino Wrecking"] = "Panda Bear",
    ["Final Showdown"] = "Panda Bear",

    -- 🥇 Gold Egg Quests (4)
    ["Werewolf Hunter"] = "Panda Bear",
    ["Skirmish with Scorpions"] = "Panda Bear",
    ["Mantis Massacre"] = "Panda Bear",
    ["The REAL Final Showdown"] = "Panda Bear",

    -- 🌟 Star Egg / Star Treat / Ant Quests (15)
    ["Ant Arrival"] = "Panda Bear",
    ["Winged Wack Attack"] = "Panda Bear",
    ["Fire Fighter"] = "Panda Bear",
    ["Army Ant Assault"] = "Panda Bear",
    ["Colossal Combat"] = "Panda Bear",
    ["Eager Exterminator"] = "Panda Bear",
    ["Leaper Lickin'"] = "Panda Bear",
    ["Colossal Combat 2"] = "Panda Bear",
    ["Outrageous Onslaught"] = "Panda Bear",
    ["Royal Rumble"] = "Panda Bear",
    ["Ultimate Ant Annihilation 1"] = "Panda Bear",
    ["Ultimate Ant Annihilation 2"] = "Panda Bear",
    ["Ultimate Ant Annihilation 3"] = "Panda Bear",
	["Ultimate Ant Annihilation 4"] = "Panda Bear",
    ["Ultimate Ant Annihilation 5"] = "Panda Bear",

    -- 🧸 Mother Bear’s Treat Tutorial
    ["Treat Tutorial"] = "Mother Bear",
    ["Bonding With Bees"] = "Mother Bear",
    ["Search For A Sunflower Seed"] = "Mother Bear",
    ["The Gist Of Jellies"] = "Mother Bear",
    ["Search For Strawberries"] = "Mother Bear",
    ["Binging On Blueberries"] = "Mother Bear",
    ["Royal Jelly Jamboree"] = "Mother Bear",
    ["Search For Sunflower Seeds"] = "Mother Bear",
    ["Picking Out Pineapples"] = "Mother Bear",

    -- 🧸 Mother Bear’s Family Quest Line
    ["Seven To Seven"] = "Mother Bear",
    ["Mother Bear's Midterm"] = "Mother Bear",
    ["Eight To Eight"] = "Mother Bear",
    ["Sights On The Stars"] = "Mother Bear",
    ["The Family Final"] = "Mother Bear",

	-- 🧪 Science Bear Quests
    -- 🧠 Initial Quest List (16)
    ["Preliminary Research"] = "Science Bear",
    ["Biology Study"] = "Science Bear",
    ["Proving The Hypothesis"] = "Science Bear",
    ["Bear Botany"] = "Science Bear",
    ["Kingdom Collection"] = "Science Bear",
    ["Defensive Adaptions"] = "Science Bear",
    ["Benefits Of Technology"] = "Science Bear",
    ["Spider Study"] = "Science Bear",
    ["Roses And Weeds"] = "Science Bear",
    ["Blue Review"] = "Science Bear",
    ["Ongoing Progress"] = "Science Bear",
    ["Red / Blue Duality"] = "Science Bear",
    ["Costs Of Computation"] = "Science Bear",
    ["Pollination Practice"] = "Science Bear",
    ["Optimizing Abilities"] = "Science Bear",
    ["Ready For Infrared"] = "Science Bear",

    -- 🔬 Translator Quest List (15)
    ["Breaking Down Badges"] = "Science Bear",
    ["Subsidized Agriculture"] = "Science Bear",
    ["Meticulously Crafted"] = "Science Bear",
    ["Smart, Not Hard"] = "Science Bear",
    ["Limits of Language"] = "Science Bear",
    ["Patterns and Probability"] = "Science Bear",
    ["Chemical Analysis"] = "Science Bear",
    ["Mark Mechanics"] = "Science Bear",
    ["Meditating On Phenomenon"] = "Science Bear",
    ["Beesperanto"] = "Science Bear",
    ["Hive Minded Bias"] = "Science Bear",
    ["Mushroom Measurement Monotony"] = "Science Bear",
    ["The Power Of Information"] = "Science Bear",
    ["Testing Teamwork"] = "Science Bear",
    ["Epistemological Endeavor"] = "Science Bear",
	
	-- 👑 Onett Quests (Star Journey Line)
    ["Star Journey 1"] = "Onett",
    ["Star Journey 2"] = "Onett",
    ["Star Journey 3"] = "Onett",
    ["Star Journey 4"] = "Onett",
    ["Star Journey 5"] = "Onett",

    -- 🦅 Riley Bee
    ["Red Request 1"]  = "Riley Bee",
    ["Red Request 10"] = "Riley Bee",
    ["Red Request 15"] = "Riley Bee",

    -- 💧 Bucko Bee
    ["Blue Request 1"]  = "Bucko Bee",
    ["Blue Request 10"] = "Bucko Bee",
    ["Blue Request 15"] = "Bucko Bee",
}

	local questBoxes = maintofind2:GetChildren()
	local questTextLines = {}

	for _, questBox in ipairs(questBoxes) do
		if questBox:IsA("Frame") then
			local titleBarBG = questBox:FindFirstChild("TitleBarBG")
			if titleBarBG then
				local titleBarText = titleBarBG:FindFirstChild("TitleBar")
				if titleBarText and titleBarText:IsA("TextLabel") then
					local mainQuestName = titleBarText.Text

					-- 🧠 หาเจ้าของเควชจาก Map
					local bearName = QuestOwnerMap[mainQuestName]

					if not bearName then
						-- (ทางเลือก) log ไว้ช่วยแมพชื่อใหม่ทีหลัง
						warn("[QuestOwnerMap] not found for quest:", mainQuestName)
					end

					-- ✅ เช็คว่าเจ้าของเควชถูกเปิด Show ในแท็บ Quests มั้ย
				if bearName and QuestShowlist[bearName] and QuestShowlist[bearName].show then
					table.insert(questTextLines, "")
					table.insert(questTextLines, "📜 **[" .. bearName .. "] " .. mainQuestName .. "**")
					table.insert(questTextLines, "───────────────────────────")

						-- เก็บรายละเอียด task แต่ละบรรทัด
						local taskBars = questBox:GetChildren()
						for _, taskBar in ipairs(taskBars) do
							if taskBar.Name == "TaskBar" and taskBar:IsA("Frame") then
								local descLabel = taskBar:FindFirstChild("Description")
								if descLabel and descLabel:IsA("TextLabel") then
									local text = descLabel.Text:gsub("^%s+", ""):gsub("%s+$", "")

									-- แยกประเภทข้อความ
									if string.find(text, "Complete!") then
										-- ✅ เควชย่อยเสร็จแล้ว
										table.insert(questTextLines, "  ✅ " .. text:gsub("Complete!", ""):gsub("%s+$", ""))
									elseif string.find(text, "%d+/%d+") then
										-- 🔸 Progress (ตัวเลข)
										table.insert(questTextLines, "  🔸 " .. text)
									else
										-- 🔹 รายการเควชย่อยทั่วไป
										table.insert(questTextLines, "- " .. text)
									end
								end
							end
						end

						table.insert(questTextLines, "")
					end
				end
			end
		end
	end

	-- ต่อจากนี้จัด `questContent` / ส่ง webhook ตามของเดิม
	local questContent = "```" .. "\n" ..
	table.concat(questTextLines, "\n") .. "\n```"
	if questContent == "" then
		questContent = "❌ ไม่พบเควชที่เข้าเงื่อนไข (หมีที่เปิด Show)"
	else
		questContent = "```\n" .. questContent .. "\n```"
	end

    local userId = localPlayer.UserId
    local apiURL = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. userId .. "&size=420x420&format=Png&isCircular=false"

    local avatarImageURL = "https://tr.rbxcdn.com/default_avatar.png"
    local success, response = pcall(function()
        local json = HttpService:JSONDecode(game:HttpGet(apiURL))
        avatarImageURL = json.data[1].imageUrl
    end)

        beeCount = 0

    local myname = game.Players.LocalPlayer.Name
    local hives = workspace.Honeycombs:GetChildren()
    local basemyhive = nil

    for _, hive in ipairs(hives) do
        local owner = hive:FindFirstChild("Owner")
        if owner and owner:IsA("ObjectValue") and owner.Value and owner.Value.Name == myname then
            basemyhive = hive
        end
    end

    if not basemyhive then
        warn("❌ ไม่พบ Hive ของคุณ")
    end

    if basemyhive then
    cells = basemyhive:FindFirstChild("Cells")

    if cells then
        for _, cell in ipairs(cells:GetChildren()) do
            local cellType = cell:FindFirstChild("CellType")
            if cellType and cellType:IsA("StringValue") and cellType.Value ~= "Empty" then
            beeCount = beeCount + 1
            end
        end
    else
        warn("❌ ไม่พบ Cells ภายใน Hive")
    end
    end

    local myhoney = localPlayer.CoreStats.Honey.Value
    local mypollen = localPlayer.CoreStats.Pollen.Value
    local mycapacity = localPlayer.CoreStats.Capacity.Value
    if beeCount == 0 then
        finalbeeCount = "```" .. "❌ ผู้เล่นไม่ได้รับช่องรัง" .. "```"
    end

        if beeCount >= 1 then
        finalbeeCount = "```" .. "จำนวนผึ้ง : " .. tostring(beeCount) .. " ตัว" .. "```"
    end

    local sectionFields = {
        { name = "<:user:1374753027625582682> Username ", value = "```" .. tostring(usernamemode) .. "```", inline = false },
        { name = "**⸻ Information ⸻**", value = " ", inline = false }
    }

    local baseFields = {
        { name = "<:Honey:1374751354622574763> **Honey**", value = "```" .. formatNumberWithCommas(myhoney) .. "```", inline = false },
        { name = "<:Pollen:1374751948774969344> **Pollen/Capacity**", value = "```" .. formatNumberWithCommas(mypollen) .. "/" .. formatNumberWithCommas(mycapacity) .. "```", inline = true },
        { name = "<:Basic_Egg:1374459785113763891> **Bee count**", value = tostring(finalbeeCount), inline = true },
        { name = "<:QuestMenuIcon:1379030225748361236> **Quest**", value = questContent, inline = false }
    }

    local finalFields = {}
    for _, field in ipairs(sectionFields) do table.insert(finalFields, field) end
    for _, field in ipairs(baseFields) do table.insert(finalFields, field) end

    if not config.WebhookUrl or config.WebhookUrl == "" then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "❌ ล้มเหลว!",
            Text = "ส่งไม่สำเร็จ: Webhook Url ว่างเปล่า",
            Icon = "rbxthumb://type=Asset&id=6031071050&w=150&h=150",
            Duration = 6
        })
        return
    end

    SendMessageEMBED(config.WebhookUrl, {
        color = randomHexColor(),
        thumbnail = avatarImageURL,
        image = "https://cdn.discordapp.com/attachments/1371924996766564402/1374403252057149450/KhamKhomShop.jpg",
        fields = finalFields,
        footer = {
            text = "⸻ » Powered by Clematis | Webhook Service « ⸻"
        }
    })

    task.wait(1)
end

function badgetab_webhook_service()
    if not config.Flags.Badge then 
        print("[Debug] Badge flag ไม่ได้เปิดใช้งาน")
        return 
    end

    local Players = game:GetService("Players")
    local localPlayer = Players.LocalPlayer
    local HttpService = game:GetService("HttpService")
    local GuiService = game:GetService("GuiService")
    local TeleportService = game:GetService("TeleportService")
    opentab("Badges Tab")
    task.wait(2)

    local maintofind3
    local maxRetries3 = 50
    local tries3 = 0

    while not maintofind3 and tries3 < maxRetries3 do
        tries3 = tries3 + 1

        local playerGui = localPlayer:FindFirstChild("PlayerGui")
        local screenGui = playerGui and playerGui:FindFirstChild("ScreenGui")
        local menus = screenGui and screenGui:FindFirstChild("Menus")
        local children = menus and menus:FindFirstChild("Children")
        local badges = children and children:FindFirstChild("Badges")
        local content = badges and badges:FindFirstChild("Content")
        maintofind3 = content and content:FindFirstChild("Frame")

        if not maintofind3 then
            warn("❌ ไม่พบ Badge Tab - Retry " .. tries3)
            resettab()
            task.wait(0.2)
        else
            print("[Debug] พบ Badge Tab หลังจากพยายาม " .. tries3 .. " ครั้ง")
        end
    end

    if not maintofind3 then
        resettab()
        warn("❌ หยุดการทำงานเนื่องจากไม่พบ Badge Tab")
        return
    end

    local fields = {}
    local countLimit = 0
    local maxFields = 25

    for _, badgeBox in ipairs(maintofind3:GetChildren()) do
        if countLimit >= maxFields then 
            break 
        end

        local badgeNameLabel = badgeBox:FindFirstChild("TitleBar")
        local taskBar = badgeBox:FindFirstChild("TaskBar")
        local badgeDescLabel = taskBar and taskBar:FindFirstChild("Description")

        if badgeNameLabel and badgeDescLabel
            and badgeNameLabel:IsA("TextLabel")
            and badgeDescLabel:IsA("TextLabel") then

            local badgeName = badgeNameLabel.Text:lower()
            local badgeDesc = badgeDescLabel.Text

            for keyword, enabled in pairs(BadgeShowlist) do
                if enabled and badgeName:find(keyword:lower(), 1, true) then
                    print("[Debug] เจอ Badge ที่ตรงกับ keyword: " .. keyword .. " => " .. badgeNameLabel.Text)
                    table.insert(fields, {
                        name = badgeNameLabel.Text,
                        value = badgeDesc,
                        inline = false
                    })
                    countLimit = countLimit + 1
                    break
                end
            end
        end
    end
    local badgeContent = "```"

if #fields > 0 then
    for _, field in ipairs(fields) do
        badgeContent = badgeContent .. field.name .. "\n" .. field.value .. "\n\n"
    end
else
    badgeContent = badgeContent .. "ไม่มี badges ที่ตรงกับเงื่อนไข\n"
end

badgeContent = badgeContent .. "```"


    local userId = localPlayer.UserId
    local apiURL = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. userId .. "&size=420x420&format=Png&isCircular=false"

    local avatarImageURL = "https://tr.rbxcdn.com/default_avatar.png"
    local success, response = pcall(function()
        local json = HttpService:JSONDecode(game:HttpGet(apiURL))
        avatarImageURL = json.data[1].imageUrl
    end)

    local beeCount = 0
    local myname = localPlayer.Name
    local hives = workspace.Honeycombs:GetChildren()
    local basemyhive = nil

    for _, hive in ipairs(hives) do
        local owner = hive:FindFirstChild("Owner")
        if owner and owner:IsA("ObjectValue") and owner.Value and owner.Value.Name == myname then
            basemyhive = hive
        end
    end

    if not basemyhive then
        warn("❌ ไม่พบ Hive ของคุณ")
    end

    if basemyhive then
        local cells = basemyhive:FindFirstChild("Cells")
        if cells then
            for _, cell in ipairs(cells:GetChildren()) do
                local cellType = cell:FindFirstChild("CellType")
                if cellType and cellType:IsA("StringValue") and cellType.Value ~= "Empty" then
                    beeCount = beeCount + 1
                end
            end
        else
            warn("❌ ไม่พบ Cells ภายใน Hive")
        end
    end

    local myhoney = localPlayer.CoreStats.Honey.Value
    local mypollen = localPlayer.CoreStats.Pollen.Value
    local mycapacity = localPlayer.CoreStats.Capacity.Value

    local finalbeeCount = beeCount == 0 and "```❌ ผู้เล่นไม่ได้รับช่องรัง```" or ("```จำนวนผึ้ง : " .. tostring(beeCount) .. " ตัว```")

    local sectionFields = {
        { name = "<:user:1374753027625582682> Username ", value = "```" .. tostring(usernamemode) .. "```", inline = false },
        { name = "**⸻ Information ⸻**", value = " ", inline = false }
    }

    local baseFields = {
        { name = "<:Honey:1374751354622574763> **Honey**", value = "```" .. formatNumberWithCommas(myhoney) .. "```", inline = false },
        { name = "<:Pollen:1374751948774969344> **Pollen/Capacity**", value = "```" .. formatNumberWithCommas(mypollen) .. "/" .. formatNumberWithCommas(mycapacity) .. "```", inline = true },
        { name = "<:Basic_Egg:1374459785113763891> **Bee count**", value = tostring(finalbeeCount), inline = true },
        { name = "<:BadgeIcon:1379063427208581160> **Badges**", value = badgeContent, inline = false }
    }

    local finalFields = {}
    for _, field in ipairs(sectionFields) do table.insert(finalFields, field) end
    for _, field in ipairs(baseFields) do table.insert(finalFields, field) end

    if not config.WebhookUrl or config.WebhookUrl == "" then
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "❌ ล้มเหลว!",
            Text = "ส่งไม่สำเร็จ: Webhook Url ว่างเปล่า",
            Icon = "rbxthumb://type=Asset&id=6031071050&w=150&h=150",
            Duration = 6
        })
        return
    end

    SendMessageEMBED(config.WebhookUrl, {
        color = randomHexColor(),
        thumbnail = avatarImageURL,
        image = "https://cdn.discordapp.com/attachments/1371924996766564402/1374403252057149450/KhamKhomShop.jpg",
        fields = finalFields,
        footer = {
            text = "⸻ » Powered by Clematis | Webhook Service « ⸻"
        }
    })

    task.wait(1)
end

local looping = false

local function startLoop()
    if config.Enabled and not looping then
        looping = true
        task.spawn(function()
            task.wait(1)
            while config.Enabled do
                    resettab()
                    eggtab_webhook_service()
                    questtab_webhook_service()
                    badgetab_webhook_service()
                    resettab()
                task.wait(config.Delay)
            end
            looping = false
        end)
    end
end

local toggleButton = createButton(config.Enabled and "Disable" or "Enable", UDim2.new(0, 10, 0, StartY + YGap * 2), config.Enabled and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(200, 0, 0))
toggleButton.MouseButton1Click:Connect(function()
    config.Enabled = not config.Enabled
    saveConfig()

    toggleButton.Text = config.Enabled and "Disable" or "Enable"
    toggleButton.BackgroundColor3 = config.Enabled and Color3.fromRGB(0, 200, 0) or Color3.fromRGB(200, 0, 0)

    startLoop()
end)

startLoop()

local anonymousToggle = createButton(config.Anonymous and "Anonymous: ON" or "Anonymous: OFF", UDim2.new(0, 10, 0, StartY + YGap * 3), config.Anonymous and Color3.fromRGB(100, 200, 255) or Color3.fromRGB(80, 80, 80))
anonymousToggle.MouseButton1Click:Connect(function()
    config.Anonymous = not config.Anonymous
    saveConfig()

    anonymousToggle.Text = config.Anonymous and "Anonymous: ON" or "Anonymous: OFF"
    anonymousToggle.BackgroundColor3 = config.Anonymous and Color3.fromRGB(100, 200, 255) or Color3.fromRGB(80, 80, 80)

    if config.Anonymous then
        usernamemode = "Anonymous | ไม่เปิดเผยชื่อ"
    else
        usernamemode = game.Players.LocalPlayer.Name
    end
end)

local testButton = createButton("Test Webhook", UDim2.new(0, 10, 0, StartY + YGap * 4), Color3.fromRGB(100, 100, 255))
testButton.MouseButton1Click:Connect(function()
    eggtab_webhook_service()
    questtab_webhook_service()
    badgetab_webhook_service()
    resettab()
end)

local hideCheckbox = Instance.new("TextButton", frame)
hideCheckbox.Size = UDim2.new(0, 20, 0, 20)
hideCheckbox.Position = UDim2.new(1, -30, 1, -30)
hideCheckbox.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
hideCheckbox.Text = config.HideAfterLoad and "✔" or ""
hideCheckbox.TextColor3 = Color3.fromRGB(255, 255, 255)
hideCheckbox.TextScaled = true
hideCheckbox.BorderSizePixel = 0
local cbCorner = Instance.new("UICorner", hideCheckbox)
cbCorner.CornerRadius = UDim.new(0, 4)

local hideLabel = Instance.new("TextLabel", frame)
hideLabel.Size = UDim2.new(0, 120, 0, 20)
hideLabel.Position = UDim2.new(1, -160, 1, -30)
hideLabel.BackgroundTransparency = 1
hideLabel.Text = "hide ui after loaded"
hideLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
hideLabel.TextScaled = true
hideLabel.Font = Enum.Font.Gotham
hideLabel.TextXAlignment = Enum.TextXAlignment.Left

if config.HideAfterLoad == nil then
    config.HideAfterLoad = false
    saveConfig()
end

hideCheckbox.MouseButton1Click:Connect(function()
    config.HideAfterLoad = not config.HideAfterLoad
    hideCheckbox.Text = config.HideAfterLoad and "✔" or ""
    saveConfig()
end)

if config.HideAfterLoad then
    gui.Enabled = false
    itemhandbook.Enabled = false
end

task.wait(2)

local coreGui = game:GetService("CoreGui")
local clematisGui = nil
local webhookGui = nil

for _, v in pairs(coreGui:GetDescendants()) do
    if v:IsA("ScreenGui") then
        if v.Name == "ClematisItemUI" then
            clematisGui = v
        elseif v.Name == "WebhookUI" then
            webhookGui = v
        end
    end
end

if not clematisGui and not webhookGui then
    warn("ไม่พบ GUI ทั้งสองตัว")
    return
end

local player = game:GetService("Players").LocalPlayer
local playerGui = player:FindFirstChild("PlayerGui")
if not playerGui then
    warn("PlayerGui not found!")
    return
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ToggleShowHide"
screenGui.IgnoreGuiInset = true
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global 
screenGui.DisplayOrder = 9999
screenGui.Parent = coreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 100, 0, 100)
frame.Position = UDim2.new(0, 20, 1, -120)
frame.BackgroundTransparency = 1
frame.BorderSizePixel = 0
frame.BackgroundColor3 = Color3.fromRGB(153, 102, 204)
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0.2, 0)
corner.Parent = frame

local button = Instance.new("ImageButton")
button.Size = UDim2.new(0.5, 0, 0.5, 0)
button.BackgroundTransparency = 1
button.Image = ""  -- ไอคอนปุ่ม
button.ImageColor3 = Color3.fromRGB(255, 255, 255)
button.Parent = frame

local isEnabled = true
button.MouseButton1Click:Connect(function()
    isEnabled = not isEnabled

    if clematisGui then
        clematisGui.Enabled = isEnabled
    end
    if webhookGui then
        webhookGui.Enabled = isEnabled
    end

    local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
    local goal = {Size = UDim2.new(0, 60, 0, 60)}
    local tween = game:GetService("TweenService"):Create(button, tweenInfo, goal)
    tween:Play()
    tween.Completed:Connect(function()
        local returnTween = game:GetService("TweenService"):Create(button, tweenInfo, {Size = UDim2.new(0, 50, 0, 50)})
        returnTween:Play()
    end)
end)

local dragging = false
local dragInput, mousePos, buttonPos
local userInputService = game:GetService("UserInputService")

button.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        mousePos = input.Position
        buttonPos = button.Position
    end
end)

button.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - mousePos
        button.Position = UDim2.new(buttonPos.X.Scale, buttonPos.X.Offset + delta.X, buttonPos.Y.Scale, buttonPos.Y.Offset + delta.Y)
    end
end)

button.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

-- NameUI
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NameUI"
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
screenGui.DisplayOrder = 9999

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 50)
frame.Position = UDim2.new(0, 10, 1, -60)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = false
frame.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local nameLabel = Instance.new("TextLabel")
nameLabel.Size = UDim2.new(1, 0, 1, 0)
nameLabel.BackgroundTransparency = 1
nameLabel.Text = player.Name
nameLabel.Font = Enum.Font.GothamMedium
nameLabel.TextSize = 18
nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
nameLabel.TextXAlignment = Enum.TextXAlignment.Center
nameLabel.Parent = frame

local dragging = false
local dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    frame.Position = UDim2.new(
        startPos.X.Scale,
        startPos.X.Offset + delta.X,
        startPos.Y.Scale,
        startPos.Y.Offset + delta.Y
    )
end

frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        update(input)
    end
end)

local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local targets = {
    CoreGui:FindFirstChild("ItemUi"),
    CoreGui:FindFirstChild("WebhookUI")
}

local enabled = true

local function toggleUI()
    enabled = not enabled
    for _, ui in ipairs(targets) do
        if ui then
            ui.Enabled = enabled
        end
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.LeftControl then
        toggleUI()
    end
end)
