-- 🧩 PART 1 START : Map Check + Data Table

if game.PlaceId ~= 1537690962 then
    warn("❌ ไม่ใช่แม็พ Bee Swarm Simulator — สคริปต์หยุดทำงาน")
    return
else
    print("✅ ตรวจสอบแม็พสำเร็จ: Bee Swarm Simulator")
end

-- 🎒 รายการไอเท็มทั้งหมด (Showlist)
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

-- 🏅 รายการ Badge ที่เลือกได้
QuestShowlist = {
    ["Spirit Bear"] = { show = false },
    ["Black Bear"]  = { show = false },
    ["Polar Bear"]  = { show = false },
    ["Panda Bear"]  = { show = false },
    ["Mother Bear"] = { show = false },
    ["Science Bear"] = { show = false },
	["Onett"] = { show = false },
}

-- 🧸 รายชื่อหมีและเควชที่เลือกได้
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


-- 🧩 PART 1 END

-- 🧩 PART 2 START : Save / Load Config + UI Builder

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer
local UserId = tostring(LocalPlayer.UserId)
local folderPath = "KhamKhomShop"
local fileName = folderPath .. "/" .. UserId .. "_Hook_Service.txt"
local itemHeight = 26

-- 💾 ฟังก์ชันบันทึกข้อมูล config (สถานะ Show/Hide)
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

-- 📂 โหลด config กลับมา (ถ้ามีไฟล์เก็บไว้)
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

		if decoded.QuestShowlist then
			for k, v in pairs(decoded.QuestShowlist) do
				if QuestShowlist[k] ~= nil and v and v.show ~= nil then
					QuestShowlist[k].show = v.show
				end
			end
		end
	end
end

-- 🎨 ฟังก์ชันสร้าง Frame ของแต่ละไอเท็มใน Showlist
local function buildShowlistFrames()
	local itemFrames, items = {}, {}
	for name, data in pairs(Showlist) do
		table.insert(items, { name = name, data = data })
	end

	table.sort(items, function(a, b)
		return tostring(a.name):lower() < tostring(b.name):lower()
	end)

	for i, item in ipairs(items) do
		local frame = Instance.new("Frame")
		frame.Size = UDim2.new(1, 0, 0, itemHeight)
		frame.BackgroundColor3 = (i % 2 == 0)
			and Color3.fromRGB(26, 26, 26)
			or Color3.fromRGB(18, 18, 18)
		frame.BorderSizePixel = 0

		local label = Instance.new("TextLabel", frame)
		label.Size = UDim2.new(0.7, -10, 1, 0)
		label.Position = UDim2.new(0, 10, 0, 0)
		label.BackgroundTransparency = 1
		label.Text = item.name
		label.TextColor3 = Color3.fromRGB(220, 220, 220)
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.Font = Enum.Font.Gotham
		label.TextSize = 12

		local toggle = Instance.new("TextButton", frame)
		toggle.Size = UDim2.new(0.3, -8, 1, -8)
		toggle.Position = UDim2.new(0.7, 8, 0, 4)
		toggle.Text = item.data.show and "Show" or "Hide"
		toggle.Font = Enum.Font.Gotham
		toggle.TextSize = 12
		toggle.BorderSizePixel = 1

		local function updateColor()
			if item.data.show then
				toggle.BackgroundColor3 = Color3.fromRGB(40, 90, 40)
				toggle.BorderColor3 = Color3.fromRGB(80, 160, 80)
			else
				toggle.BackgroundColor3 = Color3.fromRGB(90, 40, 40)
				toggle.BorderColor3 = Color3.fromRGB(160, 80, 80)
			end
		end
		updateColor()

		toggle.MouseButton1Click:Connect(function()
			item.data.show = not item.data.show
			toggle.Text = item.data.show and "Show" or "Hide"
			updateColor()
			saveConfig()
		end)

		table.insert(itemFrames, frame)
	end
	return itemFrames
end

-- 🏅 ฟังก์ชันสร้าง Frame ของ Badge
local function buildBadgeShowlistFrames()
	local badgeFrames, badges = {}, {}
	for name, show in pairs(BadgeShowlist) do
		table.insert(badges, { name = name, show = show })
	end
	table.sort(badges, function(a, b) return a.name < b.name end)

	for i, badge in ipairs(badges) do
		local frame = Instance.new("Frame")
		frame.Size = UDim2.new(1, 0, 0, itemHeight)
		frame.BackgroundColor3 = (i % 2 == 0)
			and Color3.fromRGB(26, 26, 26)
			or Color3.fromRGB(18, 18, 18)
		frame.BorderSizePixel = 0

		local label = Instance.new("TextLabel", frame)
		label.Size = UDim2.new(0.7, -10, 1, 0)
		label.Position = UDim2.new(0, 10, 0, 0)
		label.BackgroundTransparency = 1
		label.Text = badge.name
		label.TextColor3 = Color3.fromRGB(220, 220, 220)
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.Font = Enum.Font.Gotham
		label.TextSize = 12

		local toggle = Instance.new("TextButton", frame)
		toggle.Size = UDim2.new(0.3, -8, 1, -8)
		toggle.Position = UDim2.new(0.7, 8, 0, 4)
		toggle.Text = badge.show and "Show" or "Hide"
		toggle.Font = Enum.Font.Gotham
		toggle.TextSize = 12

		local function updateColor()
			if badge.show then
				toggle.BackgroundColor3 = Color3.fromRGB(40, 90, 40)
			else
				toggle.BackgroundColor3 = Color3.fromRGB(90, 40, 40)
			end
		end
		updateColor()

		toggle.MouseButton1Click:Connect(function()
			badge.show = not badge.show
			BadgeShowlist[badge.name] = badge.show
			toggle.Text = badge.show and "Show" or "Hide"
			updateColor()
			saveConfig()
		end)

		table.insert(badgeFrames, frame)
	end
	return badgeFrames
end

-- 🧸 ฟังก์ชันสร้าง Frame ของ Quest
local function buildQuestFrames()
	local questFrames, quests = {}, {}
	for name, data in pairs(QuestShowlist) do
		table.insert(quests, { name = name, data = data })
	end
	table.sort(quests, function(a, b) return a.name < b.name end)

	for i, quest in ipairs(quests) do
		local frame = Instance.new("Frame")
		frame.Size = UDim2.new(1, 0, 0, itemHeight)
		frame.BackgroundColor3 = (i % 2 == 0)
			and Color3.fromRGB(26, 26, 26)
			or Color3.fromRGB(18, 18, 18)
		frame.BorderSizePixel = 0

		local label = Instance.new("TextLabel", frame)
		label.Size = UDim2.new(0.7, -10, 1, 0)
		label.Position = UDim2.new(0, 10, 0, 0)
		label.BackgroundTransparency = 1
		label.Text = quest.name
		label.TextColor3 = Color3.fromRGB(220, 220, 220)
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.Font = Enum.Font.Gotham
		label.TextSize = 12

		local toggle = Instance.new("TextButton", frame)
		toggle.Size = UDim2.new(0.3, -8, 1, -8)
		toggle.Position = UDim2.new(0.7, 8, 0, 4)
		toggle.Text = quest.data.show and "Show" or "Hide"
		toggle.Font = Enum.Font.Gotham
		toggle.TextSize = 12

		local function updateColor()
			if quest.data.show then
				toggle.BackgroundColor3 = Color3.fromRGB(40, 90, 40)
			else
				toggle.BackgroundColor3 = Color3.fromRGB(90, 40, 40)
			end
		end
		updateColor()

		toggle.MouseButton1Click:Connect(function()
			quest.data.show = not quest.data.show
			toggle.Text = quest.data.show and "Show" or "Hide"
			updateColor()
			saveConfig()
		end)

		table.insert(questFrames, frame)
	end
	return questFrames
end

-- 🧩 PART 2 END


-- 🧩 PART 3 START : Bee Swarm Config Panel UI

-- 🎨 โทนสีอบอุ่นแบบคาเฟ่
local cozyTheme = {
	bg_dark = Color3.fromRGB(60, 42, 33),     -- น้ำตาลเข้มอบอุ่น
	bg_mid  = Color3.fromRGB(75, 50, 40),     -- น้ำตาลกลาง
	bg_light = Color3.fromRGB(230, 200, 170), -- น้ำตาลครีม
	border = Color3.fromRGB(180, 140, 90),    -- ทองนุ่มๆ
	text_main = Color3.fromRGB(255, 240, 210),
	text_sub = Color3.fromRGB(230, 210, 180),
	accent = Color3.fromRGB(200, 160, 110),   -- ปุ่ม highlight
	success = Color3.fromRGB(110, 80, 50),
	fail = Color3.fromRGB(90, 50, 40),
}

-- ☕ Bee Swarm Config Panel (โทนน้ำตาลอบอุ่น)
local function createUI(showFrames, badgeFrames, questFrames)
	if game.CoreGui:FindFirstChild("ItemUi") then
		game.CoreGui.ItemUi:Destroy()
		task.wait(0.05)
	end

	local itemhandbook = Instance.new("ScreenGui", game.CoreGui)
	itemhandbook.Name = "ItemUi"

	-- 🖼️ กล่องหลัก
	local mainFrame = Instance.new("Frame", itemhandbook)
	mainFrame.Size = UDim2.new(0, 440, 0, 520)
	mainFrame.AnchorPoint = Vector2.new(1, 0.5)
	mainFrame.Position = UDim2.new(1, -15, 0.5, 0)
	mainFrame.BackgroundColor3 = cozyTheme.bg_dark
	mainFrame.BorderColor3 = cozyTheme.border
	mainFrame.BorderSizePixel = 1
	mainFrame.Active = true
	Instance.new("UICorner", mainFrame).CornerRadius = UDim.new(0, 10)

	local stroke = Instance.new("UIStroke", mainFrame)
	stroke.Thickness = 1.5
	stroke.Color = cozyTheme.border

	-- 🎚️ Title Bar
	local titleBar = Instance.new("Frame", mainFrame)
	titleBar.Size = UDim2.new(1, 0, 0, 30)
	titleBar.BackgroundColor3 = cozyTheme.bg_mid
	titleBar.BorderSizePixel = 0
	Instance.new("UICorner", titleBar).CornerRadius = UDim.new(0, 10)

	local title = Instance.new("TextLabel", titleBar)
	title.Text = "☕ Bee Swarm Config Panel (Cozy Café Theme)"
	title.Size = UDim2.new(1, -10, 1, 0)
	title.Position = UDim2.new(0, 10, 0, 0)
	title.BackgroundTransparency = 1
	title.TextColor3 = cozyTheme.text_main
	title.Font = Enum.Font.GothamBold
	title.TextSize = 14
	title.TextXAlignment = Enum.TextXAlignment.Left

    -- 🔍 ช่องค้นหา
    local searchBox = Instance.new("TextBox", mainFrame)
    searchBox.Size = UDim2.new(1, -16, 0, 26)
    searchBox.Position = UDim2.new(0, 8, 0, 38)
    searchBox.BackgroundColor3 = cozyTheme.bg_mid
    searchBox.TextColor3 = cozyTheme.text_main
    searchBox.PlaceholderText = "🔎 ค้นหา..."         -- 🧹 ไม่มีข้อความตั้งต้น
    searchBox.Text = ""                    -- 🧹 ล้างค่าข้อความเริ่มต้น
    searchBox.PlaceholderColor3 = cozyTheme.text_sub
    searchBox.BorderSizePixel = 0
    searchBox.TextXAlignment = Enum.TextXAlignment.Left
    searchBox.ClearTextOnFocus = false
    searchBox.Font = Enum.Font.Gotham
    searchBox.TextSize = 12
    Instance.new("UICorner", searchBox).CornerRadius = UDim.new(0, 6)
    local searchStroke = Instance.new("UIStroke", searchBox)
    searchStroke.Color = cozyTheme.border
    searchStroke.Thickness = 1


	-- 🗂️ แถบแท็บ (เมนูหลัก)
	local tabBar = Instance.new("Frame", mainFrame)
	tabBar.Size = UDim2.new(1, 0, 0, 28)
	tabBar.Position = UDim2.new(0, 0, 0, 72)
	tabBar.BackgroundColor3 = cozyTheme.bg_mid
	tabBar.BorderSizePixel = 0
	Instance.new("UICorner", tabBar).CornerRadius = UDim.new(0, 10)

	local tabs = {
		{name = "Items", icon = "🎒"},
		{name = "Quests", icon = "📜"},
		{name = "Badges", icon = "🏅"},
		{name = "Settings", icon = "⚙️"},
	}

	local tabButtons = {}
	local activeTab = nil

	-- 📜 ส่วนเนื้อหา
	local contentTop = 72 + 34
	local contentHeightOffset = -(contentTop + 8)

	local function makeScroll(name)
		local sc = Instance.new("ScrollingFrame", mainFrame)
		sc.Name = name
		sc.Size = UDim2.new(1, -8, 1, contentHeightOffset)
		sc.Position = UDim2.new(0, 4, 0, contentTop)
		sc.BackgroundColor3 = cozyTheme.bg_dark
		sc.BorderSizePixel = 0
		sc.ScrollBarThickness = 6
		sc.AutomaticCanvasSize = Enum.AutomaticSize.Y
		sc.Visible = false
		Instance.new("UICorner", sc).CornerRadius = UDim.new(0, 8)
		return sc
	end

	local scrollShow = makeScroll("scrollShow")
	local scrollQuest = makeScroll("scrollQuest")
	local scrollBadge = makeScroll("scrollBadge")
	local scrollSettings = makeScroll("scrollSettings")

	for i, frame in ipairs(showFrames) do
		frame.Parent = scrollShow
		frame.Position = UDim2.new(0, 0, 0, (i - 1) * 26)
	end
	for i, frame in ipairs(questFrames) do
		frame.Parent = scrollQuest
		frame.Position = UDim2.new(0, 0, 0, (i - 1) * 26)
	end
	for i, frame in ipairs(badgeFrames) do
		frame.Parent = scrollBadge
		frame.Position = UDim2.new(0, 0, 0, (i - 1) * 26)
	end

	local txt = Instance.new("TextLabel", scrollSettings)
	txt.Text = "⚙️ Settings Tab — (ยังไม่เพิ่มเนื้อหา)"
	txt.TextColor3 = cozyTheme.text_sub
	txt.Font = Enum.Font.Gotham
	txt.TextSize = 13
	txt.BackgroundTransparency = 1
	txt.Size = UDim2.new(1, 0, 0, 30)
	txt.Position = UDim2.new(0, 8, 0, 8)
	txt.TextXAlignment = Enum.TextXAlignment.Left

	-- 🔘 ปุ่มแท็บแต่ละอัน
	for i, tab in ipairs(tabs) do
		local btn = Instance.new("TextButton", tabBar)
		btn.Size = UDim2.new(1 / #tabs, -1, 1, 0)
		btn.Position = UDim2.new((i - 1) / #tabs, i - 1, 0, 0)
		btn.Text = tab.icon .. "  " .. tab.name
		btn.Font = Enum.Font.GothamBold
		btn.TextSize = 12
		btn.TextColor3 = cozyTheme.text_main
		btn.BackgroundColor3 = cozyTheme.bg_dark
		btn.BorderSizePixel = 0
		btn.AutoButtonColor = false
		Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
		tabButtons[tab.name] = btn
	end

	-- 💡 ระบบเปลี่ยนแท็บ
	local function switchTab(tabName)
		scrollShow.Visible = (tabName == "Items")
		scrollQuest.Visible = (tabName == "Quests")
		scrollBadge.Visible = (tabName == "Badges")
		scrollSettings.Visible = (tabName == "Settings")

		for name, btn in pairs(tabButtons) do
			btn.BackgroundColor3 = (name == tabName)
				and cozyTheme.accent
				or cozyTheme.bg_dark
		end
		activeTab = tabName
	end

	for name, btn in pairs(tabButtons) do
		btn.MouseButton1Click:Connect(function()
			switchTab(name)
		end)
	end

	-- 🔍 ระบบค้นหา
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

	-- ✳️ เปิดหน้าแรกเป็น Items
	switchTab("Items")

	print("☕ [CozyUI] โหลด UI ธีมคาเฟ่น้ำตาลอบอุ่นสำเร็จ 🐝")
	return itemhandbook
end


-- โหลด config และสร้าง UI ตอนเริ่มต้น
loadConfig()
local showFrames = buildShowlistFrames()
local badgeFrames = buildBadgeShowlistFrames()
local questFrames = buildQuestFrames()
createUI(showFrames, badgeFrames, questFrames)

-- 🧩 PART 3 END


-- 🧩 PART 4 START : Webhook Config + UI Panel (FULL MERGE VERSION)
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

-- 📁 โฟลเดอร์เก็บข้อมูล config
local folderName = "ClematisHub/WebhookService"
local configFile = folderName .. "/" .. LocalPlayer.UserId .. "_config.json"

-- 💾 default config เริ่มต้น
local config = {
	WebhookUrl = "",
	Enabled = false,
	Delay = 3600,
	Anonymous = false,
	Flags = {
		Item = false,
		Quest = false,
		Badge = false,
		Honey = false,
	},
	WaitBeforeSend = false,
	UIVisible = true -- ✅ ต้องอยู่ข้างในสุดก่อนปิดวงเล็บนี้
}


-- 📦 ฟังก์ชันบันทึก config 
local function saveWebhookConfig()
	if not isfolder("ClematisHub") then makefolder("ClematisHub") end
	if not isfolder(folderName) then makefolder(folderName) end

	local success, err = pcall(function()
		writefile(configFile, HttpService:JSONEncode(config))
	end)

	if success then
		print("💾 [Webhook] บันทึก config แล้ว:", configFile)
	else
		warn("❌ [Webhook] บันทึก config ไม่สำเร็จ:", err)
	end
end

-- 📥 โหลด config จากไฟล์
local function loadWebhookConfig()
	if isfile(configFile) then
		local success, data = pcall(function()
			return HttpService:JSONDecode(readfile(configFile))
		end)
		if success and type(data) == "table" then
			for k, v in pairs(data) do
				if type(v) == "table" then
					config[k] = config[k] or {}
					for subK, subV in pairs(v) do
						config[k][subK] = subV
					end
				else
					config[k] = v
				end
			end
		end
	end
end
loadWebhookConfig()

config.ItemTargets = config.ItemTargets or {}       -- เป้าหมายของแต่ละไอเท็ม
config.ItemExtraFarm = config.ItemExtraFarm or {}   -- จำนวนที่ต้องฟาร์มเพิ่ม
config.ItemCurrent = config.ItemCurrent or {}       -- จำนวนจริงจากในเกม


------------------------------------------------------------
-- 🖥️ สร้าง GUI หลัก
------------------------------------------------------------
if game.CoreGui:FindFirstChild("WebhookUI") then
	game.CoreGui.WebhookUI:Destroy()
	task.wait(0.05)
end

local screenGui = Instance.new("ScreenGui", game.CoreGui)
screenGui.Name = "WebhookUI"

local cozyTheme = {
	bg_dark = Color3.fromRGB(60, 42, 33),
	bg_mid  = Color3.fromRGB(75, 50, 40),     
	bg_light = Color3.fromRGB(230, 200, 170),
	border = Color3.fromRGB(180, 140, 90),    
	text_main = Color3.fromRGB(255, 240, 210),
	text_sub = Color3.fromRGB(230, 210, 180),
	accent = Color3.fromRGB(200, 160, 110),   
	success = Color3.fromRGB(110, 80, 50),
	fail = Color3.fromRGB(90, 50, 40),
}

-- กล่องหลัก
local frame = Instance.new("Frame", screenGui)
frame.Name = "WebhookMainFrame"
frame.Size = UDim2.new(0, 380, 0, 480)
frame.Position = UDim2.new(0, 20, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
frame.BorderColor3 = Color3.fromRGB(50, 50, 50)
frame.Active = true
frame.Draggable = true

-- Title Bar
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, -10, 0, 30)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "🌐 Webhook Auto Reporter"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamMedium
title.TextSize = 14
title.TextXAlignment = Enum.TextXAlignment.Left

------------------------------------------------------------
-- 📦 ส่วนเนื้อหา UI
------------------------------------------------------------
local spacing = 8
local nextY = 40

-- URL Box
local urlBox = Instance.new("TextBox", frame)
urlBox.PlaceholderText = "ใส่ Webhook URL ของ Discord ตรงนี้"
urlBox.Size = UDim2.new(1, -20, 0, 28)
urlBox.Position = UDim2.new(0, 10, 0, nextY)
urlBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
urlBox.BorderColor3 = Color3.fromRGB(60, 60, 60)
urlBox.TextColor3 = Color3.fromRGB(220, 220, 220)
urlBox.Font = Enum.Font.Gotham
urlBox.TextSize = 12
urlBox.Text = config.WebhookUrl or ""
urlBox.FocusLost:Connect(function()
	if urlBox.Text ~= "" then
		config.WebhookUrl = urlBox.Text
		saveWebhookConfig()
	end
end)
nextY += 28 + spacing

-- Delay Box
local delayBox = Instance.new("TextBox", frame)
delayBox.PlaceholderText = "ตั้งเวลา Delay (วินาที)"
delayBox.Size = UDim2.new(0.5, -15, 0, 26)
delayBox.Position = UDim2.new(0, 10, 0, nextY)
delayBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
delayBox.BorderColor3 = Color3.fromRGB(60, 60, 60)
delayBox.TextColor3 = Color3.fromRGB(220, 220, 220)
delayBox.Font = Enum.Font.Gotham
delayBox.TextSize = 12
delayBox.Text = tostring(config.Delay)
delayBox.FocusLost:Connect(function()
	local val = tonumber(delayBox.Text)
	if val then
		config.Delay = val
		saveWebhookConfig()
	end
end)
nextY += 26 + spacing

-- Enable Button
local enableButton = Instance.new("TextButton", frame)
enableButton.Size = UDim2.new(1, -20, 0, 32)
enableButton.Position = UDim2.new(0, 10, 0, nextY)
enableButton.Font = Enum.Font.GothamMedium
enableButton.TextSize = 14
enableButton.BorderSizePixel = 0

local function updateEnableButton()
	if config.Enabled then
		enableButton.Text = "🟢 ENABLED (Click to Stop)"
		enableButton.BackgroundColor3 = Color3.fromRGB(50, 130, 50)
	else
		enableButton.Text = "🔴 DISABLED (Click to Start)"
		enableButton.BackgroundColor3 = Color3.fromRGB(130, 50, 50)
	end
end
updateEnableButton()

enableButton.MouseButton1Click:Connect(function()
	config.Enabled = not config.Enabled
	saveWebhookConfig()
	updateEnableButton()
	if config.Enabled then
		startLoop(true)
	else
		stopLoop()
	end
end)
nextY += 32 + spacing

-- Anonymous Button
local anonButton = Instance.new("TextButton", frame)
anonButton.Size = UDim2.new(1, -20, 0, 28)
anonButton.Position = UDim2.new(0, 10, 0, nextY)
anonButton.Font = Enum.Font.Gotham
anonButton.TextSize = 13
anonButton.TextColor3 = Color3.fromRGB(255, 255, 255)
anonButton.BorderSizePixel = 0
anonButton.Text = config.Anonymous and "🕵️ Anonymous: ON" or "🕵️ Anonymous: OFF"
anonButton.BackgroundColor3 = config.Anonymous and Color3.fromRGB(50, 90, 50) or Color3.fromRGB(90, 50, 50)
anonButton.MouseButton1Click:Connect(function()
	config.Anonymous = not config.Anonymous
	anonButton.Text = config.Anonymous and "🕵️ Anonymous: ON" or "🕵️ Anonymous: OFF"
	anonButton.BackgroundColor3 = config.Anonymous and Color3.fromRGB(50, 90, 50) or Color3.fromRGB(90, 50, 50)
	saveWebhookConfig()
end)
nextY += 28 + spacing

-- Flag Buttons (4)
local flagList = {"Item", "Quest", "Honey"}
local flagSizeY = 30
local flagSpacing = 6
for i, name in ipairs(flagList) do
	local btn = Instance.new("TextButton", frame)
	btn.Size = UDim2.new(0.48, -10, 0, flagSizeY)
	local row = math.floor((i - 1) / 2)
	local col = (i % 2 == 0) and 1 or 0
	btn.Position = UDim2.new(col == 1 and 0.52 or 0, col == 1 and -10 or 10, 0, nextY + row * (flagSizeY + flagSpacing))
	btn.Text = (config.Flags[name] and "✅ " or "❌ ") .. name
	btn.TextColor3 = Color3.fromRGB(255, 255, 255)
	btn.Font = Enum.Font.Gotham
	btn.TextSize = 14
	btn.BorderSizePixel = 0
	btn.BackgroundColor3 = config.Flags[name] and Color3.fromRGB(40, 90, 40) or Color3.fromRGB(90, 40, 40)
	btn.MouseButton1Click:Connect(function()
		config.Flags[name] = not config.Flags[name]
		btn.Text = (config.Flags[name] and "✅ " or "❌ ") .. name
		btn.BackgroundColor3 = config.Flags[name] and Color3.fromRGB(40, 90, 40) or Color3.fromRGB(90, 40, 40)
		saveWebhookConfig()
	end)
end
nextY += (flagSizeY * 2) + (flagSpacing * 2) + spacing

-- WaitBeforeSend
local waitCheck = Instance.new("TextButton", frame)
waitCheck.Size = UDim2.new(1, -20, 0, 26)
waitCheck.Position = UDim2.new(0, 10, 0, nextY)
waitCheck.Font = Enum.Font.Gotham
waitCheck.TextSize = 12
waitCheck.TextColor3 = Color3.fromRGB(255, 255, 255)
waitCheck.BorderSizePixel = 0
local function updateWaitCheck()
	waitCheck.Text = (config.WaitBeforeSend and "☑️ ") or "⬜ "
	waitCheck.Text = waitCheck.Text .. "รอหน้าปิด UI ทั้งคู่ก่อนส่ง Webhook"
	waitCheck.BackgroundColor3 = config.WaitBeforeSend and Color3.fromRGB(50, 90, 50) or Color3.fromRGB(70, 40, 40)
end
updateWaitCheck()
waitCheck.MouseButton1Click:Connect(function()
	config.WaitBeforeSend = not config.WaitBeforeSend
	updateWaitCheck()
	saveWebhookConfig()
end)
nextY += 26 + spacing

-- ปรับขนาด Frame ให้อัตโนมัติ
frame.Size = UDim2.new(0, 380, 0, nextY + 40)

------------------------------------------------------------
-- ⌨️ Ctrl + ซ้าย เพื่อเปิด/ปิด UI
------------------------------------------------------------
-- 🧩 ระบบเปิด/ปิด UI ด้วย Ctrl ซ้าย + จำสถานะ

local uiVisible = config.UIVisible -- โหลดค่าจาก config ที่บันทึกไว้ก่อนหน้า

local function toggleUI()
	uiVisible = not uiVisible
	config.UIVisible = uiVisible -- 💾 บันทึกสถานะใหม่

	-- 🟢 UI หลัก (Webhook Panel)
	local mainUI = game.CoreGui:FindFirstChild("WebhookUI")
	if mainUI then
		mainUI.Enabled = uiVisible
	end

	-- 🎒 UI ของ Item/Quest/Badge
	local itemUI = game.CoreGui:FindFirstChild("ItemUi")
	if itemUI then
		itemUI.Enabled = uiVisible
	end

	saveWebhookConfig() -- ✅ เซฟสถานะทุกครั้งที่กด Ctrl ซ้าย

	print("💾 [UI] เปลี่ยนสถานะ UI เป็น:", uiVisible and "เปิดอยู่" or "ปิดอยู่")
end

-- 🎮 ตรวจจับการกด Ctrl ซ้าย
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if input.KeyCode == Enum.KeyCode.LeftControl then
		toggleUI()
	end
end)

-- 🟢 โหลดสถานะ UI ตาม config ตอนเริ่มเกม
task.defer(function()
	local mainUI = game.CoreGui:FindFirstChild("WebhookUI")
	local itemUI = game.CoreGui:FindFirstChild("ItemUi")

	if mainUI then mainUI.Enabled = config.UIVisible end
	if itemUI then itemUI.Enabled = config.UIVisible end

	print("💾 [UI] โหลดสถานะตอนเริ่มเกม =", config.UIVisible and "เปิดอยู่" or "ปิดอยู่")
end)
-- 🧩 END PART 4 (Full Merged Edition)


-- 🧩 PART 5 START : opentab + webhook services + loop system

local function debugPrint(msg)
	if config and config.DebugMode then
		print("[🐝 DEBUG] " .. tostring(msg))
	end
end

local function checkValidWebhookUrl(url)
	if not url then return false end
	return (type(url) == "string" and url:match("^https://discord.com/api/webhooks/"))
end

-- ✅ ฟังก์ชันส่ง Discord Embed ตัวจริง (สมบูรณ์)
local function sendDiscordEmbed(url, embed)
	if not checkValidWebhookUrl(url) then
		warn("❌ URL Webhook ไม่ถูกต้อง หรือว่างเปล่า")
		return false
	end

	local HttpService = game:GetService("HttpService")
	local payload = {
		username = config.Anonymous and "Anonymous" or LocalPlayer.Name,
		embeds = { embed },
	}

	local req = http_request or (syn and syn.request)
	if not req then
		warn("❌ ไม่พบฟังก์ชัน request (http_request / syn.request)")
		return false
	end

	local success, err = pcall(function()
		req({
			Url = url,
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = HttpService:JSONEncode(payload)
		})
	end)

	if not success then
		warn("⚠️ ส่ง Webhook ไม่สำเร็จ:", err)
		return false
	end

	debugPrint("✅ ส่งข้อมูลไปยัง Discord เรียบร้อยแล้ว (" .. (embed.title or "ไม่มีชื่อ") .. ")")
	return true
end

local GuiService = game:GetService("GuiService")
local VIM = game:GetService("VirtualInputManager")
local LocalPlayer = game:GetService("Players").LocalPlayer

-- 🔍 ฟังก์ชันหาปุ่มแท็บจากชื่อ
local function getTabByNameLike(tabDisplayName)
	local pg = LocalPlayer:FindFirstChild("PlayerGui")
	local sg = pg and pg:FindFirstChild("ScreenGui")
	local menus = sg and sg:FindFirstChild("Menus")
	local childTabs = menus and menus:FindFirstChild("ChildTabs")
	if not childTabs then return nil end

	local target = string.lower(tabDisplayName)
	for _, tab in ipairs(childTabs:GetChildren()) do
		if (tab:IsA("ImageButton") or tab:IsA("TextButton")) then
			if string.find(string.lower(tab.Name), target, 1, true) then
				return tab
			end
		end
	end
	return nil
end

-- 📖 ฟังก์ชันเปิดเมนูหลัก (ให้โหลดแท็บก่อน)
local function openMainMenu()
	local pg = LocalPlayer:FindFirstChild("PlayerGui")
	local buttons = pg and pg:FindFirstChild("ScreenGui") and pg.ScreenGui:FindFirstChild("Buttons")
	if buttons and buttons:FindFirstChild("MainMenu") then
		local btn = buttons.MainMenu
		VIM:SendMouseButtonEvent(0, 0, 0, true, btn, 0)
		VIM:SendMouseButtonEvent(0, 0, 0, false, btn, 0)
		print("📖 [Menu] เปิดเมนูหลักเพื่อโหลดแท็บทั้งหมด")
		task.wait(1)
	end
end


-- 🧭 ฟังก์ชันเปิดแท็บ (เวอร์ชันเสถียร + ปิดก่อนคืน)
function opentab(tabName)
	print("🎯 [OpenTab] กำลังเปิดแท็บ: " .. tostring(tabName))

	local pg = LocalPlayer:WaitForChild("PlayerGui", 5)
	local screenGui = pg and pg:WaitForChild("ScreenGui", 5)
	local menus = screenGui and screenGui:WaitForChild("Menus", 5)
	local childTabs = menus and menus:WaitForChild("ChildTabs", 5)
	if not childTabs then
		warn("❌ [OpenTab] ไม่พบ ChildTabs ใน GUI")
		return false
	end

	-- 🔍 หาแท็บจากชื่อ (ยืดหยุ่น)
	local tabFound = nil
	for _, tab in ipairs(childTabs:GetChildren()) do
		if (tab:IsA("ImageButton") or tab:IsA("TextButton")) then
			local lname = string.lower(tab.Name)
			local target = string.lower(tabName)
			if lname:find(target) or lname:find(target:gsub(" tab","")) then
				tabFound = tab
				break
			end
		end
	end
	if not tabFound then
		warn("❌ [OpenTab] ไม่พบแท็บ: " .. tostring(tabName))
		return false
	end

	-- 🟢 เปิดแท็บ (กด Enter 1 ครั้ง)
	GuiService.SelectedObject = tabFound
	task.wait(0.15)
	VIM:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
	task.wait(0.05)
	VIM:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
	print("🟩 [OpenTab] เปิดแท็บ " .. tabName .. " แล้ว...")

	-- ⏳ รอโหลดเนื้อหา
	local success = false
	for i = 1, 15 do
		local children = menus:FindFirstChild("Children")
		local targetTab = children and (children:FindFirstChild(tabName:gsub(" Tab", "")) or children:FindFirstChild(tabName))
		local content = targetTab and targetTab:FindFirstChild("Content")

		if content and #content:GetChildren() >= 2 then
			success = true
			print("✅ [OpenTab] โหลดเนื้อหาแท็บ '" .. tabName .. "' สำเร็จ (รอบ " .. i .. ")")
			break
		end
		task.wait(0.5)
	end

	if not success then
		warn("⚠️ [OpenTab] โหลดแท็บไม่สำเร็จ: " .. tabName)
		GuiService.SelectedObject = nil
		return false
	end

	-- 🕓 รอเพิ่มอีกหน่อย กันข้อมูลโหลดไม่ครบ
	task.wait(3)
	print("✅ [OpenTab] เปิดแท็บและโหลดครบเรียบร้อย: " .. tabName)
end

-- 🔒 ปิดแท็บด้วยชื่อ (แบบเสถียร)
function closetab(tabName)
	print("📂 [CloseTab] พยายามปิดแท็บ: " .. tostring(tabName))

	local pg = LocalPlayer:FindFirstChild("PlayerGui")
	local sg = pg and pg:FindFirstChild("ScreenGui")
	local menus = sg and sg:FindFirstChild("Menus")
	local childTabs = menus and menus:FindFirstChild("ChildTabs")
	if not childTabs then
		warn("⚠️ [CloseTab] ไม่พบ ChildTabs")
		return false
	end

	local tabFound = childTabs:FindFirstChild(tabName)
	if not tabFound then
		-- fallback หาด้วยชื่อยืดหยุ่น
		for _, tab in ipairs(childTabs:GetChildren()) do
			if string.find(string.lower(tab.Name), string.lower(tabName:gsub(" tab", ""))) then
				tabFound = tab
				break
			end
		end
	end

	if not tabFound then
		warn("⚠️ [CloseTab] ไม่พบแท็บที่จะปิด: " .. tostring(tabName))
		return false
	end

	-- 🔽 ส่ง Enter เพื่อปิด
	GuiService.SelectedObject = tabFound
	task.wait(0.15)
	VIM:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
	task.wait(0.05)
	VIM:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
	task.wait(0.25)

	GuiService.SelectedObject = nil
	print("✅ [CloseTab] ปิดแท็บ '" .. tabName .. "' สำเร็จแล้ว")
	return true
end

------------------------------------------------------------
-- 🧩 ฟังก์ชัน Helper สำหรับฟอร์แมตตัวเลข & ส่ง Embed
------------------------------------------------------------

-- 💬 ฟอร์แมตตัวเลขให้มีคอมมา (เช่น 1234567 → 1,234,567)
local function formatNumberWithCommas(num)
	local formatted = tostring(num)
	while true do
		formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", '%1,%2')
		if k == 0 then break end
	end
	return formatted
end

-- 📡 ฟังก์ชันส่ง Discord Embed (รองรับ thumbnail และ footer)
local function SendMessageEMBED(url, data)
	if not url or url == "" then
		warn("❌ Webhook URL ว่างเปล่า - ยกเลิกการส่ง")
		return
	end

	local HttpService = game:GetService("HttpService")
	local payload = {
		username = "Bee Swarm Auto Reporter 🐝",
		embeds = {
			{
				title = data.title or "Report",
				color = data.color or 0xFFFF00,
				thumbnail = { url = data.thumbnail or "" },
				fields = data.fields or {},
				footer = data.footer or { text = "Bee Swarm Reporter" },
				timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ") -- UTC timestamp
			}
		}
	}

	local req = http_request or (syn and syn.request)
	if not req then
		warn("❌ ไม่พบฟังก์ชัน request (http_request/syn.request)")
		return
	end

	local success, err = pcall(function()
		req({
			Url = url,
			Method = "POST",
			Headers = { ["Content-Type"] = "application/json" },
			Body = HttpService:JSONEncode(payload)
		})
	end)

	if success then
		print("✅ ส่ง Embed สำเร็จ:", data.title or "No title")
	else
		warn("⚠️ ส่ง Embed ไม่สำเร็จ:", err)
	end
end

-- 🍯 honey --
-- 💾 เก็บค่าสุดท้ายไว้ใช้เปรียบเทียบในรอบถัดไป
local lastHoney = nil

function honey_webhook_service()
	if not (config.Flags and config.Flags.Honey) then return end
	
	local player = game.Players.LocalPlayer
	local stats = player:FindFirstChild("CoreStats")
	if not stats then return end

	local honey = stats:FindFirstChild("Honey") and stats.Honey.Value or 0
	local pollen = stats:FindFirstChild("Pollen") and stats.Pollen.Value or 0
	local capacity = stats:FindFirstChild("Capacity") and stats.Capacity.Value or 0

	-- 🧸 ดึง avatar
	local avatarURL = "https://tr.rbxcdn.com/default_avatar.png"
	pcall(function()
		local url = "https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=" .. player.UserId .. "&size=420x420&format=Png&isCircular=false"
		local data = game:GetService("HttpService"):JSONDecode(game:HttpGet(url))
		if data and data.data and data.data[1] and data.data[1].imageUrl then
			avatarURL = data.data[1].imageUrl
		end
	end)

	-- 💬 ฟังก์ชันฟอร์แมตตัวเลข
	local function formatNumber(num)
		local formatted = tostring(math.floor(num))
		while true do
			formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
			if k == 0 then break end
		end
		return formatted
	end

	-- 📊 คำนวณเปอร์เซ็นต์การเติมกระเป๋า
	local percentFull = 0
	if capacity > 0 then
		percentFull = math.floor((pollen / capacity) * 100)
	end

	-- 🌈 แถบ progress bar
	local function progressBar(pct)
		local filled = math.floor(pct / 10)
		local bar = string.rep("🟩", filled) .. string.rep("⬛", 10 - filled)
		return bar .. " `" .. tostring(pct) .. "%`"
	end

	-- 💰 คำนวณการเปลี่ยนแปลง Honey
	local diffText = "🔸 (ข้อมูลรอบแรก)"
	if lastHoney then
		local diff = honey - lastHoney
		if diff > 0 then
			diffText = "🪙 เพิ่มขึ้น **+" .. formatNumber(diff) .. "** 🍯"
		elseif diff < 0 then
			diffText = "🔻 ลดลง **" .. formatNumber(diff) .. "** 🍯"
		else
			diffText = "⚖️ คงที่ — ไม่มีการเปลี่ยนแปลง"
		end
	end
	lastHoney = honey  -- บันทึกค่าสุดท้ายไว้ใช้เทียบรอบหน้า

	local honeyStr = formatNumber(honey)
	local pollenStr = formatNumber(pollen)
	local capacityStr = formatNumber(capacity)
	local progress = progressBar(percentFull)

	-- ✨ Embed layout สวยแบบพรีเมียม
	local embed = {
		title = "🍯 Honey Report",
		color = 0xF1C40F, -- ทอง
		thumbnail = { url = avatarURL },
		description = table.concat({
			"📊 รายงานสถานะทรัพยากรของผู้เล่น **" .. player.Name .. "**",
			"",
			"🍯 **Honey** : `" .. honeyStr .. "`",
			diffText,
			"",
			"🌸 **Pollen** : `" .. pollenStr .. "`",
			"📦 **Capacity** : `" .. capacityStr .. "`",
			"",
			"🧮 **การเติมกระเป๋า:**",
			progress,
			"",
			"───────────────────────────────"
		}, "\n"),

		footer = {
			text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") .. " | Bee Swarm Auto Reporter",
		}
	}

	sendDiscordEmbed(config.WebhookUrl, embed)
	print("✅ [Honey] ส่งข้อมูล Honey Report สำเร็จ")
end

-- 🎒 Inventory Report (Bee Swarm Deluxe Edition)
local function eggtab_webhook_service()
	if not (config.Flags and config.Flags.Item) then return end
	print("[EggTab] เริ่มเปิดแท็บ Eggs ...")

	opentab("Eggs Tab")
	task.wait(2.5)

	local maintofind = nil
	local tries, delay = 0, 0.6

	while not maintofind and tries < 25 do
		tries = tries + 1
		local pg = LocalPlayer:FindFirstChild("PlayerGui")
		local content = pg and pg:FindFirstChild("ScreenGui")
			and pg.ScreenGui:FindFirstChild("Menus")
			and pg.ScreenGui.Menus:FindFirstChild("Children")
			and pg.ScreenGui.Menus.Children:FindFirstChild("Eggs")
			and pg.ScreenGui.Menus.Children.Eggs:FindFirstChild("Content")

		if content and #content:GetChildren() > 0 then
			maintofind = content:FindFirstChild("EggRows")
			if maintofind and #maintofind:GetChildren() > 0 then
				print("[EggTab] พบ EggRows หลังจาก " .. tries .. " รอบ")
				break
			end
		end
		task.wait(delay)
	end

	if not maintofind then
		warn("[EggTab] ไม่พบ EggRows - ยกเลิกการส่งข้อมูล")
		return
	end

	-- 🧮 เก็บรายการไอเท็ม
	local itemList, countShown = {}, 0

	for _, row in ipairs(maintofind:GetChildren()) do
		local n = row:FindFirstChild("TypeName")
		local s = row:FindFirstChild("EggSlot")
		local c = s and s:FindFirstChild("Count")

		if n and c then
			local itemName = n.Text
			local itemCount = c.Text
			local emoji = (Showlist[itemName] and Showlist[itemName].emoji) or ":package:"
			local showFlag = Showlist[itemName] and Showlist[itemName].show

			if showFlag then
				countShown = countShown + 1
				table.insert(itemList, string.format("%s **%s** — `%s`", emoji, itemName, itemCount))
			end
		end
	end

	-- ถ้าไม่มีข้อมูล
	if #itemList == 0 then
		table.insert(itemList, "❌ ไม่มีไอเท็มที่เลือกแสดง (เปิด 'Show' ใน Item Config ก่อน)")
	end

	-- 📦 ตกแต่งข้อความสวยงาม
	local descText = table.concat({
		"**🎒 รายงานกระเป๋าไอเท็มของคุณ**",
		"----------------------------------",
		table.concat(itemList, "\n"),
		"----------------------------------",
		string.format("**รวมทั้งหมด:** %d รายการ", countShown)
	}, "\n")

	-- ✉️ ส่ง Embed
	sendDiscordEmbed(config.WebhookUrl, {
		title = "🎒 Inventory Report",
		color = 0x3498DB, -- ฟ้าเข้มสไตล์ Bee Swarm
		description = descText,
		footer = {
			text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") .. " | Bee Swarm Auto Reporter",
		}
	})

	print("[EggTab] ✅ ส่ง Webhook สำเร็จ — ปิดแท็บ")
	task.wait(1.5)
	closetab("Eggs Tab")
	print("[EggTab] 🔒 ปิดแท็บเรียบร้อย")
	return true
end


-- 📜 Royal Quest Report — Epic Edition (1 Quest per Embed)
local function questtab_webhook_service()
	if not (config.Flags and config.Flags.Quest) then return end

	print("👑 [QuestTab] เปิดแท็บ Quests เพื่อสร้างรายงานสุดหรู...")
	opentab("Quests Tab")
	task.wait(2.5)

	-- 🧩 ดึง Content ของ Quest
	local maintofind2
	for i = 1, 30 do
		local pg = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
		local content = pg
			and pg:FindFirstChild("ScreenGui")
			and pg.ScreenGui:FindFirstChild("Menus")
			and pg.ScreenGui.Menus:FindFirstChild("Children")
			and pg.ScreenGui.Menus.Children:FindFirstChild("Quests")
			and pg.ScreenGui.Menus.Children.Quests:FindFirstChild("Content")
		if content and #content:GetChildren() > 0 then
			maintofind2 = content:FindFirstChild("Frame")
			if maintofind2 then break end
		end
		task.wait(0.4)
	end

	if not maintofind2 then
		warn("⚠️ [QuestTab] ไม่พบแท็บ Quests")
		return
	end

	-- 🧭 อีโมจิ + สีประจำหมี (ธีม Royal)
	local bearStyle = {
		["Black Bear"] = { icon = "🐻", color = 0x2E86C1 },
		["Brown Bear"] = { icon = "🍯", color = 0xAF601A },
		["Panda Bear"] = { icon = "🥋", color = 0x212F3C },
		["Science Bear"] = { icon = "⚗️", color = 0x5DADE2 },
		["Polar Bear"] = { icon = "🍔", color = 0xAED6F1 },
		["Spirit Bear"] = { icon = "🌸", color = 0xBB8FCE },
		["Mother Bear"] = { icon = "🧸", color = 0xF1948A },
		["Honey Bee"] = { icon = "🐝", color = 0xF1C40F },
		["Riley Bee"] = { icon = "🔥", color = 0xE74C3C },
		["Bucko Bee"] = { icon = "💧", color = 0x3498DB },
		["Gummy Bear"] = { icon = "🍬", color = 0xF8C471 },
		["Stick Bug"] = { icon = "🪳", color = 0x58D68D },
		["Onett"] = { icon = "👑", color = 0xF7DC6F },
		["Bubble Bee Man"] = { icon = "🫧", color = 0x85C1E9 },
	}

	-- 🧾 เก็บเควชทั้งหมด
	local questList = {}
	for _, questBox in ipairs(maintofind2:GetChildren()) do
		if questBox:IsA("Frame") then
			local titleBarBG = questBox:FindFirstChild("TitleBarBG")
			local titleLabel = titleBarBG and titleBarBG:FindFirstChild("TitleBar")
			if titleLabel and titleLabel:IsA("TextLabel") then
				local questName = titleLabel.Text
				local bear = QuestOwnerMap[questName] or "Unknown"
				local style = bearStyle[bear] or { icon = "🐾", color = 0xB57EDC }

                if QuestShowlist[bear] and QuestShowlist[bear].show then
                    local tasks = {}

                    local function emojiByText(text)
                        if text:find("Collect") then return "🌿"
                        elseif text:find("Defeat") then return "🐞"
                        elseif text:find("Feed") then return "🍯"
                        elseif text:find("Raise") then return "🐝"
                        elseif text:find("Craft") then return "🧺"
                        elseif text:find("Convert") then return "🔁"
                        elseif text:find("Use") then return "🎁"
                        else return "📜"
                        end
                    end

                    for _, taskBar in ipairs(questBox:GetChildren()) do
                        if taskBar.Name == "TaskBar" and taskBar:IsA("Frame") then
                            local desc = taskBar:FindFirstChild("Description")
                            if desc and desc:IsA("TextLabel") then
                                local text = desc.Text:gsub("^%s+", ""):gsub("%s+$", "")
                                local emoji = emojiByText(text)

                                -- ✅ รองรับทั้ง ".1,398/..." และ ". 1,398/..."
                                text = text:gsub("%.[ ]*(%d+/%d+)", ". %1")

                                if text:find("Complete!") then
                                    text = text:gsub("Complete!", ""):gsub("%s+$", "")
                                    table.insert(tasks, string.format("✅ **%s %s** — เสร็จแล้วเรียบร้อย 🍯", emoji, text))
                                else
                                    table.insert(tasks, string.format("🍂 **%s %s**", emoji, text))
                                end
                            end
                        end
                    end




					table.insert(questList, {
						bear = bear,
						icon = style.icon,
						color = style.color,
						name = questName,
						tasks = tasks
					})
				end
			end
		end
	end

	if #questList == 0 then
		sendDiscordEmbed(config.WebhookUrl, {
			title = "📜 Quest Report",
			color = 0xB57EDC,
			description = "❌ ไม่มีเควชที่เปิด Show อยู่ใน UI",
			footer = { text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") }
		})
		closetab("Quests Tab")
		return
	end

	-- 🌟 แสดง 1 Quest ต่อ Embed
	for i, q in ipairs(questList) do
		local lines = {}
		table.insert(lines, "╭──────────────────────────────╮")
		table.insert(lines, string.format("%s **%s — `%s`**", q.icon, q.bear, q.name))
		table.insert(lines, "╰──────────────────────────────╯\n")

		local doneCount, total = 0, #q.tasks
		for _, t in ipairs(q.tasks) do
			table.insert(lines, t)
			if t:find("✅") then doneCount += 1 end
		end

		table.insert(lines, "\n───────────────────────────────")
		table.insert(lines, string.format("🎯 **สถานะความคืบหน้า:** %d/%d ภารกิจเสร็จสิ้น ✅", doneCount, total))
		table.insert(lines, "───────────────────────────────")

		local desc = table.concat(lines, "\n")

		sendDiscordEmbed(config.WebhookUrl, {
			title = string.format("%s Quest Report — %s", q.icon, q.bear),
			color = q.color,
			description = desc,
			footer = {
				text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") ..
					string.format(" | Quest %d/%d | Bee Swarm Reporter", i, #questList)
			}
		})

		task.wait(2)
	end

	task.wait(1)
	closetab("Quests Tab")
	print("✅ [QuestTab] ส่ง Quest Report ครบ " .. tostring(#questList) .. " หน้าแล้ว!")
end


-- 🏅 Badge Report
local function badgetab_webhook_service()
	if not (config.Flags and config.Flags.Badge) then return end

	print("🎯 [BadgeTab] เปิดแท็บ Badges ...")
	opentab("Badge")
	task.wait(2)

	local maintofind = nil
	for i = 1, 20 do
		local pg = LocalPlayer:FindFirstChild("PlayerGui")
		local content = pg
			and pg:FindFirstChild("ScreenGui")
			and pg.ScreenGui:FindFirstChild("Menus")
			and pg.ScreenGui.Menus:FindFirstChild("Children")
			and pg.ScreenGui.Menus.Children:FindFirstChild("Badges")
			and pg.ScreenGui.Menus.Children.Badges:FindFirstChild("Content")

		if content and #content:GetChildren() > 0 then
			-- ✅ หาตัวแรกที่เป็น ScrollingFrame ภายใน Content
			for _, obj in ipairs(content:GetChildren()) do
				if obj:IsA("ScrollingFrame") then
					maintofind = obj
					break
				end
			end
		end

		if maintofind then
			print("✅ [BadgeTab] พบ BadgeList หลังจาก " .. i .. " รอบ")
			break
		end
		task.wait(0.5)
	end

	if not maintofind then
		warn("⚠️ [BadgeTab] ไม่พบ BadgeList หรือ Content ว่าง — ยกเลิกส่งข้อมูล")
		return
	end

	-- 🏅 ดึงข้อมูล Badge
	local fields = {}
	for _, b in ipairs(maintofind:GetChildren()) do
		local name = b:FindFirstChild("BadgeTitle")
		local level = b:FindFirstChild("BadgeLevel")
		if name and level then
			if BadgeShowlist[name.Text] then
				table.insert(fields, { name = "🏅 " .. name.Text, value = level.Text })
			end
		end
	end

	sendDiscordEmbed(config.WebhookUrl, {
		title = "🏅 Badge Report",
		color = 0x9B59B6,
		fields = (#fields > 0 and fields) or {
			{ name = "No Badge", value = "ไม่มี Badge ที่เลือกแสดง" }
		},
		footer = { text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") }
	})
	print("✅ [BadgeTab] ส่งข้อมูล Badge ไปยัง Webhook สำเร็จ")
end

--- ===== Loop System  ===== - - -
local looping = false
local loopThread = nil

local function runOneCycle()
	-- เรียกเฉพาะที่เลือก Flag ไว้จริง ๆ
	if config.Flags.Honey then honey_webhook_service() task.wait(1) end
	if not config.Enabled then return end

	if config.Flags.Item then eggtab_webhook_service() task.wait(1) end
	if not config.Enabled then return end

	if config.Flags.Quest then questtab_webhook_service() task.wait(1) end
	if not config.Enabled then return end

	--if config.Flags.Badge then badgetab_webhook_service() task.wait(1) end
end

function startLoop(force)
	if looping then return end
	if not (force or config.Enabled) then return end

	looping = true
	loopThread = task.spawn(function()
		while looping and config.Enabled do
			runOneCycle()

			-- รอแบบเช็คหยุดได้ทุกวินาที
			local secs = tonumber(config.Delay) or 3600
			for i = 1, secs do
				if (not looping) or (not config.Enabled) then break end
				task.wait(1)
			end
		end
		looping = false
		loopThread = nil
	end)
end

function stopLoop()
	config.Enabled = false
	looping = false
	saveWebhookConfig()
	if loopThread then
		task.cancel(loopThread)
		loopThread = nil
	end
end

loadWebhookConfig()

if config.Enabled then
	print("🔄 [Auto Start] เริ่มทำงาน Webhook Loop อัตโนมัติหลังโหลด config")
	startLoop(true)
end

-- Test Webhook
local testButton = Instance.new("TextButton", frame)
testButton.Size = UDim2.new(1, -20, 0, 30)
testButton.Position = UDim2.new(0, 10, 0, nextY)
testButton.Text = "📡 TEST WEBHOOK (Send Preview)"
testButton.Font = Enum.Font.GothamBold
testButton.TextSize = 13
testButton.TextColor3 = Color3.fromRGB(255, 255, 255)
testButton.BackgroundColor3 = Color3.fromRGB(60, 100, 160)
testButton.BorderSizePixel = 0

-- 🧩 ปุ่ม TEST WEBHOOK (ส่งทดสอบ)
testButton.MouseButton1Click:Connect(function()
	if not checkValidWebhookUrl(config.WebhookUrl) then
		warn("❌ กรุณาใส่ Webhook URL ก่อน")
		return
	end

	-- 🔒 ป้องกันกดซ้ำขณะกำลังทดสอบอยู่
	if config._isTesting then
		warn("⚠️ [Webhook] กำลังทดสอบอยู่แล้ว กรุณารอให้จบรอบก่อน")
		return
	end
	config._isTesting = true

	print("🚀 [Webhook] เริ่มทดสอบส่งข้อมูล (Preview Mode)...")

	task.spawn(function()
		local count = 0

		if config.Flags.Honey then
			count += 1
			print("🍯 [TEST] ส่ง Honey Report ...")
			honey_webhook_service()
			task.wait(1.5)
		end

		if config.Flags.Item then
			count += 1
			print("🎒 [TEST] เปิดแท็บ Eggs และส่งข้อมูล...")
			eggtab_webhook_service()
			task.wait(2)
		end

		if config.Flags.Quest then
			count += 1
			print("📜 [TEST] เปิดแท็บ Quests และส่งข้อมูล...")
			questtab_webhook_service()
			task.wait(2)
		end

		if config.Flags.Badge then
			count += 1
			print("🏅 [TEST] เปิดแท็บ Badge และส่งข้อมูล...")
			badgetab_webhook_service()
			task.wait(2)
		end

		if count == 0 then
			warn("⚠️ [Webhook] ไม่มีแท็บไหนถูกเลือกใน Flag — ไม่ได้ส่งอะไรเลย")
		else
			print("✅ [Webhook] การทดสอบส่งเสร็จสิ้น (" .. count .. " ส่วน)")
		end

		config._isTesting = false
	end)
end)
nextY += 30 + spacing

-- 🧩 PART 5 END

------------------------------------------------------------
-- 🐝 Floating Player Info (มุมซ้ายล่าง)
------------------------------------------------------------

-- ☕ สมสี - กล่องชื่อผู้เล่นโทนน้ำตาลอบอุ่น 🐝🍪
if game.CoreGui:FindFirstChild("PlayerInfoGui") then
	game.CoreGui.PlayerInfoGui:Destroy()
end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- 🍯 GUI หลัก
local playerInfoGui = Instance.new("ScreenGui")
playerInfoGui.Name = "PlayerInfoGui"
playerInfoGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
playerInfoGui.IgnoreGuiInset = true
playerInfoGui.ResetOnSpawn = false
playerInfoGui.Parent = game.CoreGui

-- 🪵 กล่องหลัก (โทนน้ำตาลอบอุ่น)
local frame = Instance.new("Frame")
frame.Name = "PlayerBox"
frame.Size = UDim2.new(0, 240, 0, 60)
frame.Position = UDim2.new(0, 20, 1, -100)
frame.BackgroundColor3 = Color3.fromRGB(92, 64, 51) -- น้ำตาลเข้มอบอุ่น
frame.BorderSizePixel = 0
frame.Parent = playerInfoGui

-- ☁️ เงานุ่ม
local shadow = Instance.new("ImageLabel", frame)
shadow.Image = "rbxassetid://1316045217"
shadow.ImageTransparency = 0.85
shadow.Size = UDim2.new(1, 12, 1, 12)
shadow.Position = UDim2.new(0, -6, 0, -6)
shadow.ZIndex = 0
shadow.BackgroundTransparency = 1

-- 🍫 มุมโค้งมน
local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 10)

-- 🍪 ขอบกล่องสีน้ำตาลทอง
local stroke = Instance.new("UIStroke", frame)
stroke.Thickness = 1.5
stroke.Color = Color3.fromRGB(190, 150, 100) -- น้ำตาลทองนุ่มๆ

-- 🧁 เส้นแบ่งกลาง
local divider = Instance.new("Frame", frame)
divider.Size = UDim2.new(0.9, 0, 0, 1)
divider.Position = UDim2.new(0.05, 0, 0.55, 0)
divider.BackgroundColor3 = Color3.fromRGB(150, 110, 80)
divider.BorderSizePixel = 0

-- 🐝 ชื่อผู้เล่น
local playerName = Instance.new("TextLabel")
playerName.Name = "PlayerName"
playerName.Size = UDim2.new(1, -20, 0, 28)
playerName.Position = UDim2.new(0, 10, 0, 6)
playerName.BackgroundTransparency = 1
playerName.TextColor3 = Color3.fromRGB(255, 230, 180) -- ครีมทองอบอุ่น
playerName.Font = Enum.Font.GothamBold
playerName.TextSize = 18
playerName.TextXAlignment = Enum.TextXAlignment.Left
playerName.Text = "🐝 " .. LocalPlayer.Name
playerName.Parent = frame

-- ⏱️ เวลาเล่นเกม
local playtimeLabel = Instance.new("TextLabel")
playtimeLabel.Name = "PlaytimeLabel"
playtimeLabel.Size = UDim2.new(1, -20, 0, 24)
playtimeLabel.Position = UDim2.new(0, 10, 0, 34)
playtimeLabel.BackgroundTransparency = 1
playtimeLabel.TextColor3 = Color3.fromRGB(230, 200, 160) -- น้ำตาลครีมละมุน
playtimeLabel.Font = Enum.Font.Gotham
playtimeLabel.TextSize = 14
playtimeLabel.TextXAlignment = Enum.TextXAlignment.Left
playtimeLabel.Text = "⏱️ เล่นมาแล้ว 0 วิ"
playtimeLabel.Parent = frame

-- ☕ เอฟเฟกต์นุ่มเวลาโหลด (fade in)
frame.BackgroundTransparency = 1
playerName.TextTransparency = 1
playtimeLabel.TextTransparency = 1
task.spawn(function()
	for i = 1, 10 do
		local alpha = i / 10
		frame.BackgroundTransparency = 1 - (0.85 * alpha)
		playerName.TextTransparency = 1 - alpha
		playtimeLabel.TextTransparency = 1 - alpha
		task.wait(0.05)
	end
end)

-- 🕒 นับเวลาเล่นแบบเรียลไทม์
local startTime = os.time()
task.spawn(function()
	while task.wait(1) do
		local elapsed = os.time() - startTime
		local h = math.floor(elapsed / 3600)
		local m = math.floor((elapsed % 3600) / 60)
		local s = elapsed % 60

		local text
		if h > 0 then
			text = string.format("⏱️ เล่นมาแล้ว %d ชม. %02d นาที", h, m)
		elseif m > 0 then
			text = string.format("⏱️ เล่นมาแล้ว %d นาที %02d วิ", m, s)
		else
			text = string.format("⏱️ เล่นมาแล้ว %d วิ", s)
		end

		playtimeLabel.Text = text
	end
end)

print("☕ [PlayerInfoGui] โหลดกล่องชื่อผู้เล่นโทนน้ำตาลอบอุ่นเรียบร้อย 🐝")
