-- ✅ เพิ่มตอนต้นไฟล์ paste.txt ก่อน PART 1
local player = game.Players.LocalPlayer
local character = workspace:FindFirstChild(player.Name) or player.Character
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local QuestModule     = require(ReplicatedStorage:WaitForChild("Quests"))
local BadgeModule     = require(ReplicatedStorage:WaitForChild("Badges"))
local NumberCommas    = require(ReplicatedStorage:WaitForChild("NumberCommas"))
local ClientStatCache = require(ReplicatedStorage:WaitForChild("ClientStatCache"))

-- ✅ ดึง data ด้วย getgc() เหมือนกัน
local data = nil
for _, v in pairs(getgc(true)) do
    if type(v) == "table" and rawget(v, "Honey") and rawget(v, "Eggs") then
        if v.UserId == player.UserId then
            data = v
            break
        end
    end
end

if not data then
    warn("❌ ไม่พบ data จาก getgc()")
    -- ไม่ return เพราะ LocalScript หลักต้องรันต่อ
    -- questtab_webhook_service จะ guard เองด้านใน
end

-- 🧩 PART 1 START : Map Check + Data Table

if game.PlaceId ~= 1537690962 then
    warn("❌ ไม่ใช่แม็พ Bee Swarm Simulator — สคริปต์หยุดทำงาน")
    return
else
    print("✅ ตรวจสอบแม็พสำเร็จ: Bee Swarm Simulator")
end

-- ตัวบนสุดใช้ร่วมกันทั้งไฟล์
local function shorten(num)
    num = tonumber(num) or 0
    if num >= 1e9 then return (string.format("%.1fB", num / 1e9):gsub("%.0B","B"))
    elseif num >= 1e6 then return (string.format("%.1fM", num / 1e6):gsub("%.0M","M"))
    elseif num >= 1e3 then return (string.format("%.1fk", num / 1e3):gsub("%.0k","k"))
    else return tostring(math.floor(num)) end
end

-- 🎒 รายการไอเท็มทั้งหมด (Showlist)
Showlist = {
    Honey                   = { show = false, emoji = "<:Honey:1477943827938414703>", order = 1 },
    Ticket                  = { show = false, emoji = "<:Ticket:1374331280488927303>", order = 2 },
    Gumdrops                = { show = false, emoji = "<:Gumdrops:1374331689471311993>", order = 3 },
    Coconut                 = { show = false, emoji = "<:Coconut:1374456567596060805>", order = 4 },
    Stinger                 = { show = false, emoji = "<:Stinger:1374332185993150544>", order = 5 },
    Snowflake               = { show = false, emoji = "<:Snowflake:1477965610943250504>", order = 6 },
    ["Micro-Converter"]     = { show = false, emoji = "<:MicroConverter:1374757182649798696>", order = 7 },
    Honeysuckle             = { show = false, emoji = "<:Honeysuckle:1374757177952174201>", order = 8 },
    Whirligig               = { show = false, emoji = "<:Whirligig:1374757187649540138>", order = 9 },
    FieldDice               = { show = false, emoji = "<:Field_Dice:1374757175351578694>", order = 10 },
    SmoothDice              = { show = false, emoji = "<:Smooth_Dice:1374757185241747606>", order = 11 },
    LoadedDice              = { show = false, emoji = "<:Loaded_Dice:1374757180372422768>", order = 12 },
    JellyBeans              = { show = false, emoji = "<:Jelly_Beans:1374758739420119130>", order = 13 },
    RedExtract              = { show = false, emoji = "<:Red_Extract:1374757123661234226>", order = 14 },
    BlueExtract             = { show = false, emoji = "<:Blue_Extract:1374471705787105300>", order = 15 },
    Glitter                 = { show = false, emoji = "<:Glitter:1374471708009824408>", order = 16 },
    Glue                    = { show = false, emoji = "<:Glue:1374471669292339310>", order = 17 },
    Oil                     = { show = false, emoji = "<:Oil:1374756882069061793>", order = 18 },
    Enzymes                 = { show = false, emoji = "<:Enzymes:1374471668411662438>", order = 19 },
    TropicalDrink           = { show = false, emoji = "<:Tropical_Drink:1374471713496236175>", order = 20 },
    PurplePotion            = { show = false, emoji = "<:Purple_Potion:1374471699407437905>", order = 21 },
    ["SuperSmoothie"]      = { show = false, emoji = "<:Super_Smoothie:1374460062906712084>", order = 22 },
    ["MarshmallowBee"]     = { show = false, emoji = "<:Marshmallow_Bee:1374758741580316682>", order = 23 },
    MagicBean               = { show = false, emoji = "<:Magic_Bean:1374460056954732615>", order = 24 },
    ["Festive Bean"]        = { show = false, emoji = "<:Festive_Bean:1374460054476030104>", order = 25 },
    ["Cloud Vial"]          = { show = false, emoji = "<:Cloud_Vial:1374460051779223563>", order = 26 },
    ["Night Bell"]          = { show = false, emoji = "<:Night_Bell:1374460049686139033>", order = 27 },
    ["Box-O-Frogs"]         = { show = false, emoji = "<:BoxOFrogs:1374758736865787914>", order = 28 },
    AntPass                 = { show = false, emoji = "<:Ant_Pass:1374460043826827418>", order = 29 },
    RoboPass                = { show = false, emoji = "<:Robo_Pass:1374459851849072680>", order = 30 },
    Translator              = { show = false, emoji = "<:Translator:1374459888021016637>", order = 31 },
    SpiritPetal             = { show = false, emoji = "<:Spirit_Petal:1374459866185334995>", order = 32 },
    Treat                   = { show = false, emoji = "<:Treat:1374459890164174999>", order = 33 },
    ["StarTreat"]          = { show = false, emoji = "<:Star_Treat:1374758743870275704>", order = 34 },
    AtomicTreat             = { show = false, emoji = "<:Atomic_Treat:1374758734110392460>", order = 35 },
    SunflowerSeed           = { show = false, emoji = "<:Sunflower_Seed:1374459883071733863>", order = 36 },
    Strawberry              = { show = false, emoji = "<:Strawberry:1374459877279400107>", order = 37 },
    Pineapple               = { show = false, emoji = "<:Pineapple:1374459833947787335>", order = 38 },
    Blueberry               = { show = false, emoji = "<:Blueberry:1374459794567467078>", order = 39 },
    Bitterberry             = { show = false, emoji = "<:Bitterberry:1374459787147874385>", order = 40 },
    Neonberry               = { show = false, emoji = "<:Neonberry:1374459831695573062>", order = 41 },
    MoonCharm               = { show = false, emoji = "<:Moon_Charm:1374459818554687760>", order = 42 },
    GingerbreadBear         = { show = false, emoji = "<:Gingerbread_Bear:1374459806433280131>", order = 43 },
    ["Aged Gingerbread Bear"]= { show = false, emoji = "<:Gingerbread_Bear:1374459806433280131>", order = 44 },
    ["WhiteDrive"]         = { show = false, emoji = "<:Glitched_Drive:1361780090693877813>", order = 45 },
    ["RedDrive"]           = { show = false, emoji = "<:Glitched_Drive:1361780090693877813>", order = 46 },
    ["BlueDrive"]          = { show = false, emoji = "<:Glitched_Drive:1361780090693877813>", order = 47 },
    ["Glitched Drive"]      = { show = false, emoji = "<:Glitched_Drive:1361780090693877813>", order = 48 },
    ComfortingVial          = { show = false, emoji = "<:Hivesticker_comforting_nectar_ic:1477638183658193076>", order = 49 },
    ["InvigoratingVial"]   = { show = false, emoji = "<:Hivesticker_invigoratingnectar:1477638223432777879>", order = 50 },
    ["MotivatingVial"]     = { show = false, emoji = "<:Hivesticker_motivating_nectar_ic:1477638254261174444>", order = 51 },
    ["RefreshingVial"]     = { show = false, emoji = "<:Hivesticker_refreshing_nectar_ic:1477638291548541029>", order = 52 },
    ["SatisfyingVial"]     = { show = false, emoji = "<:Hivesticker_satisfying_nectar_ic:1477638328676519967>", order = 53 },
    ["NectarShowerVial"]  = { show = false, emoji = "<:Nectar_Shower_Vial:1374459829682311229>", order = 54 },
    PinkBalloon             = { show = false, emoji = "<:Red_Balloon:1374459841141014538>", order = 55 },
    RedBalloon              = { show = false, emoji = "<:Red_Balloon:1374459841141014538>", order = 56 },
    WhiteBalloon            = { show = false, emoji = "<:Red_Balloon:1374459841141014538>", order = 57 },
    BlackBalloon            = { show = false, emoji = "<:Red_Balloon:1374459841141014538>", order = 58 },
    SoftWax                 = { show = false, emoji = "<:Soft_Wax:1374459864037724371>", order = 59 },
    HardWax                 = { show = false, emoji = "<:Hard_Wax:1374459813916049408>", order = 60 },
    CausticWax              = { show = false, emoji = "<:Caustic_Wax:1374459796794904607>", order = 61 },
    ["DebugWax"]           = { show = false, emoji = "<:debug_wax:1326590489671110696>", order = 62 },
    ["SwirledWax"]         = { show = false, emoji = "<:Swirled_Wax:1374459885558698105>", order = 63 },
    Turpentine              = { show = false, emoji = "<:Turpentine:1374459892252803163>", order = 64 },
    Basic                   = { show = false, emoji = "<:Basic_Egg:1374459785113763891>", order = 65 },
    Silver                  = { show = false, emoji = "<:Silver_Egg:1374459861781446727>", order = 66 },
    ["Gold Egg"]            = { show = false, emoji = "<:Gold_Egg:1374459811181101188>", order = 67 },
    Diamond                 = { show = false, emoji = "<:Diamond_Egg:1374459804172550144>", order = 68 },
    ["Mythic Egg"]          = { show = false, emoji = "<:Mythic_Egg:1374459823344844873>", order = 69 },
    ["Star Egg"]            = { show = false, emoji = "<:Star_Egg:1374459868617900032>", order = 70 },
    GiftedSilver            = { show = false, emoji = "<:Silver_Egg:1374459861781446727>", order = 71 },
    ["Gifted Gold Egg"]     = { show = false, emoji = "<:Gold_Egg:1374459811181101188>", order = 72 },
    ["Gifted Diamond Egg"]  = { show = false, emoji = "<:Diamond_Egg:1374459804172550144>", order = 73 },
    ["Gifted Mythic Egg"]   = { show = false, emoji = "<:Mythic_Egg:1374459823344844873>", order = 74 },
    ["Choose-A-Mythic Egg"] = { show = false, emoji = "<:Mythic_Egg:1374459823344844873>", order = 75 },
    RoyalJelly              = { show = false, emoji = "<:Royal_Jelly:1374459857557786655>", order = 76 },
    StarJelly               = { show = false, emoji = "<:Star_Jelly:1374459870446747831>", order = 77 },
    ViciousJelly            = { show = false, emoji = "<:Basic_Egg:1374459785113763891>", order = 78 },
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
    ["Riley Bee"]    = { show = false },
    ["Bucko Bee"]    = { show = false },
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
    ["Do You Bee-lieve In Magic?"] = "Spirit Bear",
    ["The Ways Of The Winds / The Wind And Its Ways"] = "Spirit Bear",
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
}

-- 🧩 PART 1 END

-- 🧩 PART 1.5 START : Prepare ExtraFarm Data
-- เพิ่มช่องสำหรับจำนวนที่ต้องฟาร์มเพิ่ม (ExtraFarm)
-- และแน่ใจว่าทุกอย่างมีค่าเริ่มต้นก่อนใช้งาน

for k, v in pairs(Showlist) do
	if v.extrafarm == nil then
		v.extrafarm = 0  -- ตั้งค่าเริ่มต้นเป็น 0
	end
end
-- 🧩 PART 1.5 END

-- 🧩 PART 1.6 START : Tool Craft Requirement Table (Fixed Goals)

-- อันนี้คือ “รายการอุปกรณ์” ที่อยากติดตาม พร้อม “ของที่ต้องใช้” แบบฟิกตายตัว
-- เพิ่ม/แก้/ลบ ภายหลังได้ง่ายๆ โดยเพิ่มในตารางนี้
ToolList = {

    ["Rake"] = {
        show = false,
        emoji = "<:Hivesticker_rake:1477983185798172784>",
        requirements = {
            { name = "Honey", goal = 800 },
        }
    },

    ["Clippers"] = {
        show = false,
        emoji = "<:Hivesticker_clippers:1477983231109238946>",
        requirements = {
            { name = "Honey", goal = 2200 },
        }
    },

    ["Magnet"] = {
        show = false,
        emoji = "<:Hivesticker_magnet:1477983279243202560>",
        requirements = {
            { name = "Honey", goal = 5500 },
        }
    },

    ["Vacuum"] = {
        show = false,
        emoji = "<:Hivesticker_vacuum:1477983368103858317>",
        requirements = {
            { name = "Honey", goal = 14000 },
        }
    },

    ["Super-Scooper"] = {
        show = false,
        emoji = "<:Hivesticker_superscooper:1477983436449779733>",
        requirements = {
            { name = "Honey", goal = 40000 },
        }
    },

    ["Pulsar"] = {
        show = false,
        emoji = "<:Hivesticker_pulsar:1477983478837547048>",
        requirements = {
            { name = "Honey", goal = 125000 },
        }
    },

    ["Electro-Magnet"] = {
        show = false,
        emoji = "<:Hivesticker_electromagnet:1477983530112913490>",
        requirements = {
            { name = "Honey", goal = 300000 },
        }
    },

    ["Scissors"] = {
        show = false,
        emoji = "<:Hivesticker_scissors:1477983581375565834>",
        requirements = {
            { name = "Honey", goal = 850000 },
        }
    },

    ["Honey Dipper"] = {
        show = false,
        emoji = "<:Hivesticker_honey_dipper:1477983623553482923>",
        requirements = {
            { name = "Honey", goal = 1500000 },
        }
    },

    ["Bubble Wand"] = {
        show = false,
        emoji = "<:Hivesticker_bubble_wand:1477983664599208008>",
        requirements = {
            { name = "Honey", goal = 3500000 },
        }
    },

    ["Scythe"] = {
        show = false,
        emoji = "<:Hivesticker_scythe:1477983732278493224>",
        requirements = {
            { name = "Honey", goal = 3500000 },
        }
    },

    ["Sticker-Seeker"] = {
        show = false,
        emoji = "📜",
        requirements = {
            { name = "Honey", goal = 60000000 },
            { name = "Glue", goal = 1 },
            { name = "Oil", goal = 1 },
            { name = "SoftWax", goal = 5 },
            { name = "Neonberry", goal = 5 },
            { name = "MicroConverter", goal = 10 },
        }
    },

    ["Golden Rake"] = {
        show = false,
        emoji = "<:Hivesticker_golden_rake:1477983776536793161>",
        requirements = {
            { name = "Honey", goal = 20000000 },
        }
    },

    ["Spark Staff"] = {
        show = false,
        emoji = "<:Hivesticker_spark_staff:1477983815702937742>",
        requirements = {
            { name = "Honey", goal = 60000000 },
        }
    },

    ["Porcelain Dipper"] = {
        show = false,
        emoji = "<:Hivesticker_porcelain_dipper:1477983847336382665>",
        requirements = {
            { name = "Honey", goal = 150000000 },
        }
    },

    ["Petal Wand"] = {
        show = false,
        emoji = "<:Hivesticker_petal_wand:1477983886414974987>",
        requirements = {
            { name = "Honey", goal = 1500000000 },
            { name = "SpiritPetal", goal = 1 },
            { name = "Enzymes", goal = 75 },
            { name = "StarJelly", goal = 10 },
            { name = "Glitter", goal = 25 },
        }
    },

    ["Dark Scythe"] = {
        show = false,
        emoji = "<:Hivesticker_dark_scythe:1477983972230434926>",
        requirements = {
            { name = "Honey", goal = 2500000000000 },
            { name = "RedExtract", goal = 1500 },
            { name = "Stinger", goal = 150 },
            { name = "HardWax", goal = 100 },
            { name = "CausticWax", goal = 50 },
            { name = "SuperSmoothie", goal = 50 },
            { name = "InvigoratingVial", goal = 3 },
        }
    },

    ["Tide Popper"] = {
        show = false,
        emoji = "<:Hivesticker_tide_popper:1477983921667837983>",
        requirements = {
            { name = "Honey", goal = 2500000000000 },
            { name = "BlueExtract", goal = 1500 },
            { name = "Stinger", goal = 150 },
            { name = "TropicalDrink", goal = 150 },
            { name = "SwirledWax", goal = 75 },
            { name = "SuperSmoothie", goal = 50 },
            { name = "ComfortingVial", goal = 3 },
        }
    },

    ["Gummyballer"] = {
        show = false,
        emoji = "<:Hivesticker_gummyballer:1477984050177245215>",
        requirements = {
            { name = "Honey", goal = 10000000000000 },
            { name = "Glue", goal = 1500 },
            { name = "Gumdrops", goal = 2000 },
            { name = "CausticWax", goal = 50 },
            { name = "SuperSmoothie", goal = 50 },
            { name = "Turpentine", goal = 5 },
            { name = "SatisfyingVial", goal = 3 },
        }
    },

    ["Pouch"] = {
    show = false,
    emoji = "<:Pouch1:1478062328242114570>",
    requirements = {
        { name = "Honey", goal = 650 },
    }
},

    ["Jar"] = {
        show = false,
        emoji = "<:Jar:1478062363499429908>",
        requirements = {
            { name = "Honey", goal = 650 },
        }
    },

    ["Backpack"] = {
        show = false,
        emoji = "<:Backpack:1478062405526360206>",
        requirements = {
            { name = "Honey", goal = 5500 },
        }
    },

    ["Canister"] = {
        show = false,
        emoji = "<:Canister:1478064742399475763>",
        requirements = {
            { name = "Honey", goal = 22000 },
        }
    },

    ["Mega-Jug"] = {
        show = false,
        emoji = "<:MegaJug:1478064784908746772>",
        requirements = {
            { name = "Honey", goal = 50000 },
        }
    },

    ["Compressor"] = {
        show = false,
        emoji = "<:MegaJug:1478064784908746772>", -- ถ้าคุณมี emoji แยกสำหรับ Compressor ค่อยเปลี่ยนทีหลัง
        requirements = {
            { name = "Honey", goal = 160000 },
        }
    },

    ["Elite Barrel"] = {
        show = false,
        emoji = "<:Elite_Barrel:1478064907906711613>",
        requirements = {
            { name = "Honey", goal = 650000 },
        }
    },

    ["Port-O-Hive"] = {
        show = false,
        emoji = "<:PortOHive:1478064937887731824>",
        requirements = {
            { name = "Honey", goal = 1250000 },
        }
    },

    ["Blue Port-O-Hive"] = {
        show = false,
        emoji = "<:Blue_PortOHive:1478064977083633665>",
        requirements = {
            { name = "Honey", goal = 12500000 },
            { name = "BlueExtract", goal = 2 },
            { name = "SoftWax", goal = 2 },
        }
    },

    ["Red Port-O-Hive"] = {
        show = false,
        emoji = "<:Red_PortOHive:1478065012286292174>",
        requirements = {
            { name = "Honey", goal = 12500000 },
            { name = "RedExtract", goal = 2 },
            { name = "SoftWax", goal = 2 },
        }
    },

    ["Porcelain Port-O-Hive"] = {
        show = false,
        emoji = "<:Porcelain_PortOHive:1478065072315044040>",
        requirements = {
            { name = "Honey", goal = 250000000 },
            { name = "Glitter", goal = 3 },
            { name = "SoftWax", goal = 3 },
            { name = "MoonCharm", goal = 10 },
        }
    },

    ["Coconut Canister"] = {
        show = false,
        emoji = "<:Coconut_Canister:1478065147728629902>",
        requirements = {
            { name = "Honey", goal = 25000000000 },
            { name = "TropicalDrink", goal = 150 },
            { name = "Coconut", goal = 250 },
            { name = "RedExtract", goal = 150 },
            { name = "BlueExtract", goal = 150 },
            { name = "RefreshingVial", goal = 2 },
        }
    },


    ["Brave Guard"] = {
        show = false,
        emoji = "<:Brave_Guard:1478067742459429096>",
        requirements = {
            { name = "Honey", goal = 300000 },
            { name = "Stinger", goal = 3 },
        }
    },

    ["Hasty Guard"] = {
        show = false,
        emoji = "<:Hasty_Guard:1478067771786133737>",
        requirements = {
            { name = "Honey", goal = 300000 },
            { name = "MoonCharm", goal = 5 },
        }
    },

    ["Bomber Guard"] = {
        show = false,
        emoji = "<:Bomber_Guard:1478067806141677611>",
        requirements = {
            { name = "Honey", goal = 300000 },
            { name = "SunflowerSeed", goal = 25 },
        }
    },

    ["Looker Guard"] = {
        show = false,
        emoji = "<:Looker_Guard:1478067844796121118>",
        requirements = {
            { name = "Honey", goal = 300000 },
            { name = "SunflowerSeed", goal = 25 },
        }
    },

    ["Blue Guard"] = {
        show = false,
        emoji = "<:Blue_Guard:1478067888014229627>",
        requirements = {
            { name = "Honey", goal = 1000000 },
            { name = "Blueberry", goal = 50 },
            { name = "RoyalJelly", goal = 1 },
            { name = "MoonCharm", goal = 3 },
        }
    },

    ["Elite Blue Guard"] = {
        show = false,
        emoji = "<:Elite_Blue_Guard:1478067929424859322>",
        requirements = {
            { name = "Honey", goal = 5000000 },
            { name = "BlueExtract", goal = 3 },
            { name = "Blueberry", goal = 50 },
            { name = "RoyalJelly", goal = 5 },
            { name = "MoonCharm", goal = 15 },
        }
    },

    ["Bucko Guard"] = {
        show = false,
        emoji = "<:Bucko_Guard:1478067966506565662>",
        requirements = {
            { name = "Honey", goal = 30000000 },
            { name = "BlueExtract", goal = 10 },
            { name = "Blueberry", goal = 100 },
            { name = "Glue", goal = 5 },
            { name = "MoonCharm", goal = 75 },
        }
    },

    ["Red Guard"] = {
        show = false,
        emoji = "<:Red_Guard:1478068006033686639>",
        requirements = {
            { name = "Honey", goal = 750000 },
            { name = "Strawberry", goal = 50 },
            { name = "RoyalJelly", goal = 1 },
            { name = "Stinger", goal = 1 },
        }
    },

    ["Elite Red Guard"] = {
        show = false,
        emoji = "<:Elite_Red_Guard:1478068045317541989>",
        requirements = {
            { name = "Honey", goal = 5000000 },
            { name = "RedExtract", goal = 3 },
            { name = "Strawberry", goal = 50 },
            { name = "RoyalJelly", goal = 5 },
            { name = "Stinger", goal = 5 },
        }
    },

    ["Riley Guard"] = {
        show = false,
        emoji = "<:Riley_Guard:1478068077131337869>",
        requirements = {
            { name = "Honey", goal = 30000000 },
            { name = "RedExtract", goal = 10 },
            { name = "Strawberry", goal = 100 },
            { name = "Glue", goal = 5 },
            { name = "Stinger", goal = 25 },
        }
    },

    ["Cobalt Guard"] = {
        show = false,
        emoji = "<:CobaltguardPNG:1478068112548167855>",
        requirements = {
            { name = "Honey", goal = 200000000 },
            { name = "BlueExtract", goal = 100 },
            { name = "Stinger", goal = 100 },
            { name = "Enzymes", goal = 50 },
            { name = "Glitter", goal = 25 },
        }
    },

    ["Crimson Guard"] = {
        show = false,
        emoji = "<:CrimsonguardPNG:1478068160690262077>",
        requirements = {
            { name = "Honey", goal = 200000000 },
            { name = "RedExtract", goal = 100 },
            { name = "Stinger", goal = 100 },
            { name = "Oil", goal = 50 },
            { name = "Glitter", goal = 25 },
        }
    },

    ["Helmet"] = {
    show = false,
    emoji = "<:Helmet:1478066159461859470>",
    requirements = {
        { name = "Honey", goal = 30000 },
        { name = "Pineapple", goal = 5 },
        { name = "MoonCharm", goal = 1 },
    }
},

["Propeller Hat"] = {
    show = false,
    emoji = "<:Propeller:1478066200159453244>",
    requirements = {
        { name = "Honey", goal = 2500000 },
        { name = "Gumdrops", goal = 25 },
        { name = "Pineapple", goal = 100 },
        { name = "MoonCharm", goal = 5 },
    }
},

["Beekeeper's Mask"] = {
    show = false,
    emoji = "<:Beekeeper27s_Mask:1478066248871968899>",
    requirements = {
        { name = "Honey", goal = 20000000 },
        { name = "Enzymes", goal = 5 },
        { name = "Glue", goal = 3 },
        { name = "Glitter", goal = 1 },
    }
},

["Honey Mask"] = {
    show = false,
    emoji = "<:Honey_Mask:1478066289984409640>",
    requirements = {
        { name = "Honey", goal = 100000000 },
        { name = "Treat", goal = 9999 },
        { name = "Oil", goal = 50 },
        { name = "Enzymes", goal = 25 },
        { name = "GoldEgg", goal = 5 },
    }
},

["Fire Mask"] = {
    show = false,
    emoji = "<:Fire_Mask:1478066330685935686>",
    requirements = {
        { name = "Honey", goal = 100000000 },
        { name = "Strawberry", goal = 500 },
        { name = "RedExtract", goal = 50 },
        { name = "Enzymes", goal = 25 },
        { name = "Glue", goal = 15 },
    }
},

["Bubble Mask"] = {
    show = false,
    emoji = "<:Bubble_Mask:1478066368732598272>",
    requirements = {
        { name = "Honey", goal = 100000000 },
        { name = "Blueberry", goal = 500 },
        { name = "BlueExtract", goal = 50 },
        { name = "Oil", goal = 25 },
        { name = "Glitter", goal = 15 },
    }
},

["Gummy Mask"] = {
    show = false,
    emoji = "<:Gummy_Mask:1478066406879658135>",
    requirements = {
        { name = "Honey", goal = 5000000000 },
        { name = "Glue", goal = 250 },
        { name = "Enzymes", goal = 100 },
        { name = "Oil", goal = 100 },
        { name = "Glitter", goal = 100 },
        { name = "Satisfying Vial", goal = 1 },
    }
},

["Demon Mask"] = {
    show = false,
    emoji = "<:Demon_Mask:1478066448768172107>",
    requirements = {
        { name = "Honey", goal = 5000000000 },
        { name = "Stinger", goal = 500 },
        { name = "RedExtract", goal = 250 },
        { name = "Enzymes", goal = 150 },
        { name = "Glue", goal = 100 },
        { name = "Invigorating Vial", goal = 1 },
    }
},

["Diamond Mask"] = {
    show = false,
    emoji = "<:Diamond_Mask:1478066486604992694>",
    requirements = {
        { name = "Honey", goal = 5000000000 },
        { name = "BlueExtract", goal = 250 },
        { name = "Oil", goal = 150 },
        { name = "Glitter", goal = 100 },
        { name = "DiamondEgg", goal = 5 },
        { name = "Comforting Vial", goal = 1 },
    }
},


    ["Belt Pocket"] = {
        show = false,
        emoji = "<:Belt_Pocket0:1478068942873301032>",
        requirements = {
            { name = "Honey", goal = 14000 },
            { name = "SunflowerSeed", goal = 10 },
        }
    },

    ["Belt Bag"] = {
        show = false,
        emoji = "<:Belt_Bag:1478068979653411068>",
        requirements = {
            { name = "Honey", goal = 440000 },
            { name = "Pineapple", goal = 50 },
            { name = "SunflowerSeed", goal = 50 },
            { name = "Stinger", goal = 3 },
        }
    },

    ["Mondo Belt Bag"] = {
        show = false,
        emoji = "<:Mondo_Belt_BagPNG:1478069020887351306>",
        requirements = {
            { name = "Honey", goal = 12400000 },
            { name = "SoftWax", goal = 1 },
            { name = "Pineapple", goal = 150 },
            { name = "SunflowerSeed", goal = 150 },
            { name = "Stinger", goal = 10 },
        }
    },

    ["Honeycomb Belt"] = {
        show = false,
        emoji = "<:Honeycomb_Belt:1478069055372918795>",
        requirements = {
            { name = "Honey", goal = 75000000 },
            { name = "Enzymes", goal = 50 },
            { name = "Glue", goal = 50 },
            { name = "Oil", goal = 25 },
        }
    },

    ["Petal Belt"] = {
        show = false,
        emoji = "<:Petal_Belt:1478069096200274192>",
        requirements = {
            { name = "Honey", goal = 15000000000 },
            { name = "StarJelly", goal = 25 },
            { name = "Glitter", goal = 50 },
            { name = "Glue", goal = 100 },
            { name = "SpiritPetal", goal = 1 },
        }
    },

    ["Coconut Belt"] = {
        show = false,
        emoji = "<:Coconut_Belt:1478069194187870208>",
        requirements = {
            { name = "Honey", goal = 7500000000000 },
            { name = "Coconut", goal = 500 },
            { name = "TropicalDrink", goal = 1500 },
            { name = "PurplePotion", goal = 200 },
            { name = "HardWax", goal = 200 },
            { name = "Turpentine", goal = 3 },
            { name = "Refreshing Vial", goal = 3 },
        }
    },


        ["Basic Boots"] = {
            show = false,
            emoji = "<:Basic_Boots:1478069898717692188>",
            requirements = {
                { name = "Honey", goal = 4400 },
                { name = "SunflowerSeed", goal = 3 },
                { name = "Blueberry", goal = 3 },
            }
        },

        ["Hiking Boots"] = {
            show = false,
            emoji = "<:Hiking_Boots:1478069929046446232>",
            requirements = {
                { name = "Honey", goal = 2200000 },
                { name = "Blueberry", goal = 50 },
                { name = "Strawberry", goal = 50 },
            }
        },

        ["Beekeeper's Boots"] = {
            show = false,
            emoji = "<:Beekeeper27s_Boots:1478069958071287880>",
            requirements = {
                { name = "Honey", goal = 15000000 },
                { name = "Oil", goal = 5 },
                { name = "RedExtract", goal = 3 },
                { name = "BlueExtract", goal = 3 },
            }
        },

        ["Coconut Clogs"] = {
            show = false,
            emoji = "<:Coconut_Clogs:1478070074500841626>",
            requirements = {
                { name = "Honey", goal = 10000000000 },
                { name = "Coconut", goal = 150 },
                { name = "TropicalDrink", goal = 50 },
                { name = "Glue", goal = 100 },
                { name = "Oil", goal = 100 },
                { name = "Refreshing Vial", goal = 1 },
            }
        },

        ["Gummy Boots"] = {
            show = false,
            emoji = "<:Gummy_Boots:1478070114086682694>",
            requirements = {
                { name = "Honey", goal = 100000000000 },
                { name = "Glue", goal = 500 },
                { name = "Glitter", goal = 250 },
                { name = "RedExtract", goal = 250 },
                { name = "BlueExtract", goal = 250 },
                { name = "Satisfying Vial", goal = 1 },
                { name = "Motivating Vial", goal = 1 },
            }
        },


    ["Planter"] = {
        show = false,
        emoji = "<:Plastic_Planter:1478071027488653412>",
        requirements = {
            { name = "Honey", goal = 750000 },
            { name = "MagicBean", goal = 3 },
            { name = "SoftWax", goal = 1 },
        }
    },

    ["Candy Planter"] = {
        show = false,
        emoji = "<:Candy_Planter:1478077432736125161>",
        requirements = {
            { name = "Honey", goal = 5000000 },
            { name = "MagicBean", goal = 5 },
            { name = "Gumdrops", goal = 30 },
            { name = "JellyBeans", goal = 3 },
            { name = "SoftWax", goal = 5 },
        }
    },

    ["Tacky Planter"] = {
        show = false,
        emoji = "<:Tacky_Planter:1478414443086872576>",
        requirements = {
            { name = "Honey", goal = 50000000 },
            { name = "MagicBean", goal = 10 },
            { name = "PurplePotion", goal = 1 },
            { name = "HardWax", goal = 5 },
            { name = "SoftWax", goal = 20 },
        }
    },

    ["Pesticide Planter"] = {
        show = false,
        emoji = "<:Pesticide_Planter:1478418332192473258>",
        requirements = {
            { name = "Honey", goal = 750000000 },
            { name = "MagicBean", goal = 25 },
            { name = "Neonberry", goal = 25 },
            { name = "Glue", goal = 15 },
            { name = "CausticWax", goal = 3 },
            { name = "HardWax", goal = 10 },
        }
    },

    ["Blue Clay Planter"] = {
        show = false,
        emoji = "<:Blue_Clay_Planter:1478414412871372910>",
        requirements = {
            { name = "Honey", goal = 10000000 },
            { name = "MagicBean", goal = 5 },
            { name = "BlueExtract", goal = 15 },
            { name = "SoftWax", goal = 20 },
        }
    },

    ["Red Clay Planter"] = {
        show = false,
        emoji = "<:Red_Clay_Planter:1478077434896322764>",
        requirements = {
            { name = "Honey", goal = 10000000 },
            { name = "MagicBean", goal = 5 },
            { name = "RedExtract", goal = 15 },
            { name = "SoftWax", goal = 20 },
        }
    },

    ["Heat-Treated Planter"] = {
        show = false,
        emoji = "<:HeatTreated_Planter:1478414514792828989>",
        requirements = {
            { name = "Honey", goal = 750000000000 },
            { name = "MagicBean", goal = 75 },
            { name = "RedExtract", goal = 750 },
            { name = "HardWax", goal = 150 },
            { name = "SwirledWax", goal = 25 },
            { name = "Turpentine", goal = 1 },
        }
    },

    ["Hydroponic Planter"] = {
        show = false,
        emoji = "<:Hydroponic_Planter:1478414551568486513>",
        requirements = {
            { name = "Honey", goal = 750000000000 },
            { name = "MagicBean", goal = 75 },
            { name = "BlueExtract", goal = 750 },
            { name = "SoftWax", goal = 500 },
            { name = "CausticWax", goal = 25 },
            { name = "Turpentine", goal = 1 },
        }
    },

    ["Petal Planter"] = {
        show = false,
        emoji = "<:Petal_Planter:1478414487533916436>",
        requirements = {
            { name = "Honey", goal = 5000000000000 },
            { name = "MagicBean", goal = 100 },
            { name = "Glitter", goal = 100 },
            { name = "SoftWax", goal = 250 },
            { name = "SwirledWax", goal = 50 },
            { name = "SuperSmoothie", goal = 25 },
        }
    },

    ["Planter Of Plenty"] = {
        show = false,
        emoji = "<:The_Planter_Of_Plenty:1478418708983709907>",
        requirements = {
            { name = "Honey", goal = 100000000000000 },
            { name = "MagicBean", goal = 500 },
            { name = "SuperSmoothie", goal = 100 },
            { name = "SwirledWax", goal = 100 },
            { name = "CausticWax", goal = 100 },
            { name = "Turpentine", goal = 25 },
        }
    },
}


-- 🧩 PART 1.6 END


-- 🧩 PART 2 START : Save / Load Config + UI Builder

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer
local UserId = tostring(LocalPlayer.UserId)
local folderPath = "KhamKhomShop"
local fileName = folderPath .. "/" .. UserId .. "_Hook_Service.txt"
local itemHeight = 26
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- ✅ เพิ่มบรรทัดเหล่านี้ถ้ายังไม่มี
local QuestModule      = require(ReplicatedStorage:WaitForChild("Quests"))
local NumberCommas     = require(ReplicatedStorage:WaitForChild("NumberCommas"))
local ClientStatCache  = require(ReplicatedStorage:WaitForChild("ClientStatCache"))

-- 💾 ฟังก์ชันบันทึกข้อมูล config (สถานะ Show/Hide)
local function saveConfig()
	if not isfolder(folderPath) then makefolder(folderPath) end
	local dataToSave = {
		Showlist = {},
		BadgeShowlist = {},
		QuestShowlist = {},
		-- 👇 เพิ่มบรรทัดนี้
		ToolList = {}
	}

	for k, v in pairs(Showlist) do
		dataToSave.Showlist[k] = {
			show = v.show,
			emoji = v.emoji,
			extrafarm = tonumber(v.extrafarm) or 0
		}
	end
	for k, v in pairs(BadgeShowlist) do
		dataToSave.BadgeShowlist[k] = v
	end
	for k, v in pairs(QuestShowlist) do
		dataToSave.QuestShowlist[k] = { show = v.show }
	end

	for toolName, data in pairs(ToolList) do
		dataToSave.ToolList[toolName] = { show = data.show }
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
					Showlist[k].extrafarm = tonumber(v.extrafarm) or 0
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

		-- 🧰 โหลดสถานะ show ของ ToolList
		if decoded.ToolList then
			for name, t in pairs(decoded.ToolList) do
				if ToolList[name] and t and t.show ~= nil then
					ToolList[name].show = t.show
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

		-- 🏷️ ชื่อไอเท็ม
		local label = Instance.new("TextLabel", frame)
		label.Size = UDim2.new(0.45, -10, 1, 0)
		label.Position = UDim2.new(0, 10, 0, 0)
		label.BackgroundTransparency = 1
		label.Text = item.name
		label.TextColor3 = Color3.fromRGB(220, 220, 220)
		label.TextXAlignment = Enum.TextXAlignment.Left
		label.Font = Enum.Font.Gotham
		label.TextSize = 12

		-- 🧮 ช่องกรอก ExtraFarm (อยู่ระหว่างชื่อกับปุ่ม)
		local extraBox = Instance.new("TextBox", frame)
		extraBox.Size = UDim2.new(0.18, -10, 0.9, 0) -- 🔹 ขนาดเล็กลงนิด
		extraBox.Position = UDim2.new(0.62, 0, 0.05, 0) -- 🔹 ขยับไปใกล้ปุ่ม Show/Hide
		extraBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		extraBox.TextColor3 = Color3.fromRGB(255, 255, 255)
		extraBox.PlaceholderText = "+"
		extraBox.Text = tostring(item.data.extrafarm or 0)
		extraBox.ClearTextOnFocus = false
		extraBox.Font = Enum.Font.Gotham
		extraBox.TextSize = 12
		Instance.new("UICorner", extraBox).CornerRadius = UDim.new(0, 4)

		-- 🧠 เมื่อคลิกช่อง ให้ล้างค่าทันที (เริ่มพิมพ์ใหม่ได้เลย)
		extraBox.Focused:Connect(function()
			extraBox.Text = ""
		end)

-- 💾 เมื่อคลิกออก (FocusLost) — เซฟค่าอัตโนมัติ + ปรับเป้าหมายต่อเนื่อง + บันทึกเวลาใส่ค่า
extraBox.FocusLost:Connect(function()

	config = config or {}
	config.ItemTargets = config.ItemTargets or {}
	config.ItemLastInputTime = config.ItemLastInputTime or {} -- 🕒 เก็บเวลาการ input ล่าสุด

	local val = tonumber(extraBox.Text)
	if not val then
		extraBox.Text = tostring(item.data.extrafarm or 0)
		return
	end

	item.data.extrafarm = val

	-- 🧮 ดึงค่าจริงจาก GUI ในเกม
	local currentCount = 0
	local player = game.Players.LocalPlayer
	local pg = player:FindFirstChild("PlayerGui")
	local content = pg and pg:FindFirstChild("ScreenGui")
		and pg.ScreenGui:FindFirstChild("Menus")
		and pg.ScreenGui.Menus:FindFirstChild("Children")
		and pg.ScreenGui.Menus.Children:FindFirstChild("Eggs")
		and pg.ScreenGui.Menus.Children.Eggs:FindFirstChild("Content")

	if content then
		local eggRows = content:FindFirstChild("EggRows")
		if eggRows then
			for _, row in ipairs(eggRows:GetChildren()) do
				local n = row:FindFirstChild("TypeName")
				local s = row:FindFirstChild("EggSlot")
				local c = s and s:FindFirstChild("Count")
				if n and n.Text == item.name and c then
					currentCount = tonumber(c.Text:gsub(",", "")) or 0
					break
				end
			end
		end
	end

	-- 🧠 โหลดค่าก่อนหน้า
	local oldTarget = config.ItemTargets[item.name] or 0
	local oldExtra = item.data.oldExtraFarm or 0
	local newTarget = oldTarget

	-- 🕒 บันทึกเวลา input ครั้งนี้
	local now = os.time()
	config.ItemLastInputTime[item.name] = now

	-- 🧩 เงื่อนไขหลัก
	if oldTarget > 0 and currentCount >= oldTarget then
		-- ✅ ถึงเป้าแล้ว
		if val > oldExtra then
			-- 🚀 มึงเพิ่มเป้าใหม่หลังถึงเป้า — ตั้งเป้าใหม่จากของจริง
			newTarget = currentCount + val
			print(string.format("🎯 ตั้งเป้าใหม่หลังถึงเป้า (%s): %d → %d", item.name, oldTarget, newTarget))
		else
			-- ❌ ถึงเป้าแล้วแต่ไม่ได้เพิ่ม -> ล็อกไว้
			print(string.format("✅ %s ถึงเป้าแล้ว (%d/%d) — ล็อกเป้าไว้", item.name, currentCount, oldTarget))
			item.data.extrafarm = 0
			config.ItemTargets[item.name] = oldTarget
			saveConfig()
			return
		end
	else
		-- 🧮 ยังไม่ถึงเป้า — ปรับตามเงื่อนไขปกติ
		if oldTarget == 0 then
			newTarget = currentCount + val
		elseif val > oldExtra then
			local diff = val - oldExtra
			newTarget = oldTarget + diff
		elseif val < oldExtra then
			newTarget = currentCount + val
		end
	end

	config.ItemTargets[item.name] = newTarget
	item.data.oldExtraFarm = val
	saveConfig()

	-- 🕒 แสดงเวลาที่บันทึกใน log
	print(string.format("🎯 เป้าหมายของ %s = %d (ExtraFarm %d) ⏱ เวลา: %s",
		item.name, newTarget, val, os.date("%H:%M:%S", now)))

	-- 🎨 แสดงผลว่าบันทึกสำเร็จ (สี + ✅)
	extraBox.BackgroundColor3 = Color3.fromRGB(70, 180, 90) -- เขียวมะกอก
	extraBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	extraBox.Text = tostring(val) .. " ✅"

	task.delay(1.2, function()
		extraBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		extraBox.TextColor3 = Color3.fromRGB(255, 255, 255)
		extraBox.Text = tostring(val)
	end)

end)


-- 🔘 ปุ่ม Show/Hide (อยู่ขวาสุด)
local toggle = Instance.new("TextButton", frame)
toggle.AnchorPoint = Vector2.new(1, 0) -- ✅ ยึดขวาจริง ๆ
toggle.Position = UDim2.new(1, -10, 0, 4) -- ✅ ชิดขวา แต่เว้นขอบ 10px
toggle.Size = UDim2.new(0, 80, 0, itemHeight - 8) -- ✅ กว้าง 80 สูงพอดีในแถว
toggle.Text = item.data.show and "Show" or "Hide"
toggle.Font = Enum.Font.Gotham
toggle.TextSize = 12
toggle.BorderSizePixel = 1
toggle.AutoButtonColor = false
toggle.TextColor3 = Color3.fromRGB(255, 255, 255)

local function updateColor()
	if item.data.show then
		toggle.BackgroundColor3 = Color3.fromRGB(40, 90, 40)
		toggle.BorderColor3 = Color3.fromRGB(80, 160, 80)
	else
		toggle.BackgroundColor3 = Color3.fromRGB(90, 40, 40)
		toggle.BorderColor3 = Color3.fromRGB(160, 80, 80)
	end
	toggle.TextColor3 = Color3.fromRGB(255, 255, 255) -- ✅ ให้คงสีขาวไว้ทุกครั้ง
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

-- 🧰 ฟังก์ชันสร้าง Frame ของ ToolList (จัดหมวดหมู่)
local function buildToolFrames()
    local toolFrames = {}
    local categorized = {}

    -- 🗂️ จัดกลุ่มตามหมวดหมู่ (category)
    for name, data in pairs(ToolList) do
        local cat = data.category or "Tools"
        if not categorized[cat] then
            categorized[cat] = {}
        end
        table.insert(categorized[cat], { name = name, data = data })
    end

    -- 🎨 กำหนด emoji ของแต่ละหมวด
    local categoryIcons = {
        ["Tools"] = "⚒️",
        ["Containers"] = "🥥",
        ["Guards"] = "🛡️",
        ["Hats"] = "🎩",
        ["Belts"] = "🎒",
        ["Boots"] = "👢",
        ["Planters"] = "🌱"
    }

    local cozyTheme = {
        bg_dark = Color3.fromRGB(60, 42, 33),
        bg_mid = Color3.fromRGB(75, 50, 40),
        text_main = Color3.fromRGB(255, 240, 210),
        text_sub = Color3.fromRGB(230, 210, 180),
        accent = Color3.fromRGB(200, 160, 110),
    }

    local itemHeight = 26
    local yOffset = 0

    -- 🧩 วนสร้าง UI ของแต่ละหมวด
    for category, tools in pairs(categorized) do
        -- 🔹 Header ของหมวด
        local header = Instance.new("TextLabel")
        header.Size = UDim2.new(1, -8, 0, 28)
        header.Position = UDim2.new(0, 4, 0, yOffset)
        header.BackgroundColor3 = cozyTheme.bg_mid
        header.BorderSizePixel = 0
        header.TextColor3 = cozyTheme.text_main
        header.Font = Enum.Font.GothamBold
        header.TextSize = 13
        header.TextXAlignment = Enum.TextXAlignment.Left
        header.Text = string.format("%s  %s", categoryIcons[category] or "📦", category)
        table.insert(toolFrames, header)

        yOffset = yOffset + 30

        -- 🔧 Tool แต่ละชิ้นในหมวด
        table.sort(tools, function(a, b)
            return tostring(a.name):lower() < tostring(b.name):lower()
        end)

        for i, tool in ipairs(tools) do
            local frame = Instance.new("Frame")
            frame.Size = UDim2.new(1, -8, 0, itemHeight)
            frame.Position = UDim2.new(0, 4, 0, yOffset)
            frame.BackgroundColor3 = (i % 2 == 0)
                and Color3.fromRGB(26, 26, 26)
                or Color3.fromRGB(18, 18, 18)
            frame.BorderSizePixel = 0

            local label = Instance.new("TextLabel", frame)
            label.Size = UDim2.new(0.7, -10, 1, 0)
            label.Position = UDim2.new(0, 10, 0, 0)
            label.BackgroundTransparency = 1
            -- ❗ แก้ให้แสดงแค่ชื่อ ไม่รวม emoji
            label.Text = tool.name
            label.TextColor3 = Color3.fromRGB(230, 220, 200)
            label.Font = Enum.Font.Gotham
            label.TextSize = 12
            label.TextXAlignment = Enum.TextXAlignment.Left

            local toggle = Instance.new("TextButton", frame)
            toggle.Size = UDim2.new(0.3, -8, 1, -8)
            toggle.Position = UDim2.new(0.7, 8, 0, 4)
            toggle.Text = tool.data.show and "Show" or "Hide"
            toggle.Font = Enum.Font.Gotham
            toggle.TextSize = 12
            toggle.BorderSizePixel = 0

            local function updateColor()
                if tool.data.show then
                    toggle.BackgroundColor3 = Color3.fromRGB(40, 90, 40)
                else
                    toggle.BackgroundColor3 = Color3.fromRGB(90, 40, 40)
                end
            end

            updateColor()

            toggle.MouseButton1Click:Connect(function()
                tool.data.show = not tool.data.show
                toggle.Text = tool.data.show and "Show" or "Hide"
                updateColor()
                saveConfig()
            end)

            table.insert(toolFrames, frame)
            yOffset = yOffset + itemHeight
        end

        -- เว้นช่องว่างแต่ละหมวด
        yOffset = yOffset + 10
    end

    return toolFrames
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
local function createUI(showFrames, badgeFrames, questFrames, toolFrames)
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
        {name = "Items",   icon = "🎒"},
        {name = "Quests",  icon = "📜"},
        {name = "Helpers", icon = "🛟"},
        {name = "Tools",   icon = "🧰"},
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
	local scrollTool = makeScroll("scrollTool")

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
	for i, frame in ipairs(toolFrames) do
	frame.Parent = scrollTool
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
        scrollBadge.Visible  = tabName == "Helpers"
		scrollTool.Visible = (tabName == "Tools")

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

------------------------------------------------------------
-- 🔍 ระบบค้นหา (อัปเกรด: ใช้ได้กับทุกแท็บ รวมถึง Tools)
------------------------------------------------------------

local function filterFrames(frames, searchText)
	local y = 0
	searchText = string.lower(searchText or "")
	for _, frame in ipairs(frames) do
		if frame:IsA("Frame") then
			local label = frame:FindFirstChildWhichIsA("TextLabel")
			local visible = true
			if label then
				local text = string.lower(label.Text or "")
				visible = string.find(text, searchText, 1, true) ~= nil
			end
			frame.Visible = visible
			if visible then
				frame.Position = UDim2.new(0, 0, 0, y)
				y = y + 28
			end
		end
	end
end

-- 🎯 เมื่อพิมพ์ข้อความในช่องค้นหา
searchBox:GetPropertyChangedSignal("Text"):Connect(function()
	local searchText = searchBox.Text

	if activeTab == "Items" then
		filterFrames(scrollShow:GetChildren(), searchText)
	elseif activeTab == "Quests" then
		filterFrames(scrollQuest:GetChildren(), searchText)
    elseif activeTab == "Helpers" then
        filterFrames(scrollBadge:GetChildren(), searchText)
	elseif activeTab == "Tools" then
		-- 🧰 กรองเฉพาะอุปกรณ์ (ไม่รวม header หมวด)
		local toolFrames = {}
		for _, child in ipairs(scrollTool:GetChildren()) do
			if child:IsA("Frame") and child:FindFirstChildWhichIsA("TextLabel") then
				table.insert(toolFrames, child)
			end
		end
		filterFrames(toolFrames, searchText)
	end
end)

	searchBox:GetPropertyChangedSignal("Text"):Connect(function()
		if activeTab == "Items" then
			filterFrames(showFrames, searchBox.Text)
        elseif activeTab == "Helpers" then
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
local toolFrames = buildToolFrames()
createUI(showFrames, badgeFrames, questFrames, toolFrames)

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
    Delay = 1800,
    Anonymous = false,
    Flags = {
        Item   = false,
        Quest  = false,
        Badge  = false,
        Honey  = false,
        Tool   = false,
        Combo  = false,
        Helpers = false, 
    },
    ComboPreset = {
        "Ticket",
        "Gumdrops",
        "Coconut",
        "Stinger",
        "Snowflake",
        "RedExtract",
        "BlueExtract",
        "Glitter",
        "Glue",
        "Oil",
        "Enzymes",
        "TropicalDrink",
        "PurplePotion",
        "SuperSmoothie",
        "SunflowerSeed",
        "Strawberry",
        "Pineapple",
        "Blueberry",
        "Bitterberry",
        "Neonberry",
        "ComfortingVial",
        "InvigoratingVial",
        "MotivatingVial",
        "RefreshingVial",
        "SatisfyingVial",
    },                       -- ← ต้องมี }, ปิด ComboPreset
    WaitBeforeSend = false,
    UIVisible = true
}                            -- ← ต้องมี } ปิด config


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
if not config.Flags then
    config.Flags = {}
end
if config.Flags.Helpers == nil then
    config.Flags.Helpers = false
end


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
urlBox.PlaceholderText = "Enter your Discord Webhook URL here..."
urlBox.Size = UDim2.new(1, -20, 0, 28)
urlBox.Position = UDim2.new(0, 10, 0, nextY)
urlBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
urlBox.BorderColor3 = Color3.fromRGB(60, 60, 60)
urlBox.TextColor3 = Color3.fromRGB(220, 220, 220)
urlBox.Font = Enum.Font.Gotham
urlBox.TextSize = 12
urlBox.Text = config.WebhookUrl or ""

-- 🎯 จัดข้อความให้อยู่ตรงกลางเป๊ะ
urlBox.TextXAlignment = Enum.TextXAlignment.Center
urlBox.TextYAlignment = Enum.TextYAlignment.Center
urlBox.PlaceholderColor3 = Color3.fromRGB(180, 180, 180)

-- ป้องกันข้อความทะลุกรอบ
urlBox.TextWrapped = false
urlBox.ClipsDescendants = true
urlBox.TextTruncate = Enum.TextTruncate.AtEnd

-- ล้างเมื่อคลิก
urlBox.Focused:Connect(function()
	if urlBox.Text ~= "" then
		urlBox.Text = ""
	end
end)

-- บันทึกเมื่อคลิกออก
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
local flagList = {"Honey", "Item", "Quest", "Tool", "Combo", "Helpers"}
local flagSizeY = 30
local flagSpacing = 6
for i, name in ipairs(flagList) do
    local btn = Instance.new("TextButton", frame)
    -- ✅ แก้เป็น 3 คอลัมน์แทน 2
    local col = (i - 1) % 3        -- 0, 1, 2
    local row = math.floor((i - 1) / 3)
    btn.Size = UDim2.new(1/3, -8, 0, flagSizeY)
    btn.Position = UDim2.new(col * (1/3), col == 0 and 10 or col == 1 and 0 or -10, 0, nextY + row * (flagSizeY + flagSpacing))
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
-- อัปเดต nextY ตามจำนวนแถวจริง (ใช้ #flagList เผื่ออนาคตเพิ่ม/ลดปุ่ม)
nextY = nextY + math.ceil(#flagList / 3) * (flagSizeY + flagSpacing) + spacing

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
		username = config.WebhookName or (config.Anonymous and "Anonymous" or LocalPlayer.Name),
		avatar_url = config.WebhookAvatar or "https://media.discordapp.net/attachments/451793268850688000/1409327359932235948/image.png?ex=690c8ea2&is=690b3d22&hm=b297dbcb527d89e425223066efe092a51bdee471d18603a6752cd16c85a53607&=&format=webp&quality=lossless&width=704&height=593", -- ✅ ใส่รูปที่อยากใช้
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
	config.HoneyCurrent = honey
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
		percentFull = math.min(100, math.floor((pollen / capacity) * 100)) 
	end

	-- 🌈 แถบ progress bar
	local function progressBar(pct)
		pct = math.min(100, math.max(0, pct))  -- ✅ แคปทั้ง 0-100
		local filled = math.floor(pct / 10)
		local bar = string.rep("🟩", filled) .. string.rep("⬛", 10 - filled)
		return bar .. " `" .. tostring(pct) .. "%`"
	end

	-- 💰 คำนวณการเปลี่ยนแปลง Honey
	local diffText = "<:Hivesticker_pale_heart:1477948253646487687> (ข้อมูลรอบแรก)"
	if lastHoney then
		local diff = honey - lastHoney
		if diff > 0 then
			diffText = "<:Hivesticker_yellow_left_arrow:1477947544624431175> เพิ่มขึ้น **+" .. formatNumber(diff) .. "** 🍯"
		elseif diff < 0 then
			diffText = "<:Hivesticker_alert_icon:1477948074558095380> ลดลง **" .. formatNumber(diff) .. "** 🍯"
		else
			diffText = "<:Hivesticker_yellow_coffee_mug:1477948537697341451> คงที่ — ไม่มีการเปลี่ยนแปลง"
		end
	end
	lastHoney = honey  -- บันทึกค่าสุดท้ายไว้ใช้เทียบรอบหน้า

	local honeyStr = formatNumber(honey)
	local pollenStr = formatNumber(pollen)
	local capacityStr = formatNumber(capacity)
	local progress = progressBar(percentFull)

	-- ✨ Embed layout สวยแบบพรีเมียม
	local embed = {
		title = "<:Honey:1477943827938414703> Honey Report",
		color = 0xF1C40F, -- ทอง
		thumbnail = { url = avatarURL },
		description = table.concat({
			"<:Hivesticker_robot_head:1477948800676008039> รายงานสถานะ Honey : **" .. player.Name .. "**",
			"",
			"<:Honey:1477943827938414703> **Honey** : `" .. honeyStr .. "`",
			diffText,
			"",
			"<:FlrsW3b:1477944263819133053> **Pollen** : `" .. pollenStr .. "`",
			"<:Pouch:1477944648784937092> **Capacity** : `" .. capacityStr .. "`",
			"",
			"<:Hivesticker_green_circle:1477635917257900094> **การเติมกระเป๋า:**",
			progress,
			"",
			"────────────────────────────"
		}, "\n"),

		footer = {
			text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") .. " | Bee Swarm Auto Reporter",
		}
	}

	sendDiscordEmbed(config.WebhookUrl, embed)
	print("✅ [Honey] ส่งข้อมูล Honey Report สำเร็จ")
end



function eggtab_webhook_service()
    if not (config.Flags and config.Flags.Item) then return end
    print("[EggTab] เริ่มดึงข้อมูล Items...")

    local freshData = nil
    for _, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "Honey") and rawget(v, "Eggs") then
            if v.UserId == player.UserId then
                freshData = v
                break
            end
        end
    end

    if not freshData or not freshData.Eggs then
        warn("[EggTab] ❌ ไม่พบ data.Eggs — ยกเลิก")
        return
    end

    print("[EggTab] ✅ ดึงข้อมูล Eggs สำเร็จ")

    local itemList, UsedInCraft, CombinedIngredients = {}, {}, {}

    local function safeNumber(value)
        if value == nil then return 0 end
        local str = tostring(value):gsub(",", ""):gsub("%s+", ""):gsub("[^%d%.%-]", "")
        if str == "" or str == "-" or str == "." then return 0 end
        return tonumber(str) or 0
    end

    local function formatNumber(num)
        num = math.floor(tonumber(num) or 0)
        local s = tostring(num)
        while true do
            local new, k = s:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
            s = new
            if k == 0 then break end
        end
        return s
    end

    local function cleanItemName(name)
        if not name then return "" end
        name = tostring(name)
        name = name:gsub("[%z\1-\31]", "")
        name = name:gsub("[%s             　]", " ")
        name = name:gsub("%s+", " ")
        name = name:gsub("^%s+", "")
        name = name:gsub("%s+$", "")
        return name
    end

    local CraftRecipes = {
        ["BlueExtract"] = {
            { name = "Blueberry", goal = 50 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["RedExtract"] = {
            { name = "Strawberry", goal = 50 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["Enzymes"] = {
            { name = "Pineapple", goal = 50 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["Oil"] = {
            { name = "SunflowerSeed", goal = 50 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["Glue"] = {
            { name = "Gumdrops", goal = 50 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["Gumdrops"] = {
            { name = "Strawberry", goal = 3 },
            { name = "Pineapple", goal = 3 },
            { name = "Blueberry", goal = 3 },
        },
        ["Glitter"] = {
            { name = "MoonCharm", goal = 25 },
            { name = "MagicBean", goal = 1 },
        },
        ["StarJelly"] = {
            { name = "Glitter", goal = 3 },
            { name = "RoyalJelly", goal = 100 },
        },
        ["TropicalDrink"] = {
            { name = "Coconut", goal = 10 },
            { name = "Enzymes", goal = 2 },
            { name = "Oil", goal = 2 },
        },
        ["PurplePotion"] = {
            { name = "Neonberry", goal = 3 },
            { name = "RedExtract", goal = 3 },
            { name = "BlueExtract", goal = 3 },
            { name = "Glue", goal = 3 },
        },
        ["SoftWax"] = {
            { name = "Honeysuckle", goal = 5 },
            { name = "Oil", goal = 1 },
            { name = "Enzymes", goal = 1 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["HardWax"] = {
            { name = "SoftWax", goal = 3 },
            { name = "Enzymes", goal = 3 },
            { name = "Bitterberry", goal = 33 },
            { name = "RoyalJelly", goal = 33 },
        },
        ["SwirledWax"] = {
            { name = "HardWax", goal = 3 },
            { name = "SoftWax", goal = 9 },
            { name = "PurplePotion", goal = 6 },
            { name = "RoyalJelly", goal = 3333 },
        },
        ["CausticWax"] = {
            { name = "HardWax", goal = 5 },
            { name = "Enzymes", goal = 5 },
            { name = "Neonberry", goal = 25 },
            { name = "RoyalJelly", goal = 5252 },
        },
        ["SuperSmoothie"] = {
            { name = "Neonberry", goal = 3 },
            { name = "StarJelly", goal = 3 },
            { name = "PurplePotion", goal = 3 },
            { name = "TropicalDrink", goal = 6 },
        },
        ["Turpentine"] = {
            { name = "SuperSmoothie", goal = 10 },
            { name = "CausticWax", goal = 10 },
            { name = "StarJelly", goal = 100 },
            { name = "Honeysuckle", goal = 1000 },
        },
    }

    local function updateCraftTreeCounts()
        config = config or {}
        config.ItemCurrent     = config.ItemCurrent     or {}
        config.ItemMax         = config.ItemMax          or {}
        config.ItemBaseCount   = config.ItemBaseCount    or {}
        config.ItemAccumulated = config.ItemAccumulated  or {}
        config.ItemLastCurrent = config.ItemLastCurrent  or {}

        local function getItemCount(itemName)
            return safeNumber(freshData.Eggs[itemName] or 0), 0
        end

        local function scanRecipeTree(mainItem)
            local recipe = CraftRecipes[mainItem]
            if not recipe then return end
            for _, sub in ipairs(recipe) do
                local cur = getItemCount(sub.name)
                config.ItemCurrent[sub.name] = cur
                UsedInCraft[sub.name] = true

                if not config.ItemBaseCount[sub.name] then
                    config.ItemBaseCount[sub.name]   = cur
                    config.ItemAccumulated[sub.name] = 0
                    config.ItemLastCurrent[sub.name] = cur
                end

                if CraftRecipes[sub.name] then
                    scanRecipeTree(sub.name)
                end
            end
        end

        for mainItem in pairs(CraftRecipes) do
            scanRecipeTree(mainItem)
        end

        for itemName in pairs(CraftRecipes) do
            local amount = safeNumber(freshData.Eggs[itemName] or 0)
            config.ItemCurrent[itemName] = amount
            config.ItemMax[itemName] = 0
            if not config.ItemBaseCount[itemName] then
                config.ItemBaseCount[itemName]   = amount
                config.ItemAccumulated[itemName] = 0
                config.ItemLastCurrent[itemName] = amount
            end
        end

        -- ✅ Track Accumulated ของวัตถุดิบทุกตัวใน recipe tree
        local function trackIngredientProgress(mainItem)
            local recipe = CraftRecipes[mainItem]
            if not recipe then return end
            for _, sub in ipairs(recipe) do
                local cur = safeNumber(freshData.Eggs[sub.name] or 0)
                config.ItemCurrent[sub.name] = cur

                if config.ItemBaseCount[sub.name] then
                    local last   = safeNumber(config.ItemLastCurrent[sub.name] or cur)
                    local gained = cur - last
                    if gained > 0 then
                        config.ItemAccumulated[sub.name] = (config.ItemAccumulated[sub.name] or 0) + gained
                    end
                    config.ItemLastCurrent[sub.name] = cur
                else
                    config.ItemBaseCount[sub.name]   = cur
                    config.ItemAccumulated[sub.name] = 0
                    config.ItemLastCurrent[sub.name] = cur
                end

                if CraftRecipes[sub.name] then
                    trackIngredientProgress(sub.name)
                end
            end
        end

        for mainItem in pairs(CraftRecipes) do
            trackIngredientProgress(mainItem)
        end

        print("[EggTab] ✅ อัปเดตข้อมูล Craft Tree สำเร็จ (Recursive)")
    end

		local function buildCraftTreeBlock(itemName, uiExtra, depth)
			depth = depth or 0
			local recipe = CraftRecipes[itemName]
			if not recipe or uiExtra <= 0 then return "" end

			local indent = string.rep("  ", depth)
			local lines = {}
			local totalSubs = #recipe
			local allEnough = true

			for i, sub in ipairs(recipe) do
				local have = safeNumber(config.ItemCurrent[sub.name] or 0)
				-- ✅ need = goal ของ sub × จำนวนที่ต้องคราฟ (uiExtra)
				local need = safeNumber(sub.goal) * safeNumber(uiExtra)

				local emoji = (Showlist[sub.name] and Showlist[sub.name].emoji) or "📦"
				local mark = have >= need and "<:Hivesticker_green_check_mark:1477630788152328263>" or ""
				if have < need then allEnough = false end

				local prefix = (i == totalSubs) and "└─" or "├─"
				table.insert(lines, string.format("%s%s %s **%s** — %s/%s %s",
					indent, prefix, emoji, sub.name,
					shorten(have), shorten(need), mark))
			end

			if allEnough and depth == 0 then
				table.insert(lines, "<:Hivesticker_green_check_mark:1477630788152328263> วัตถุดิบครบแล้ว!")
			end

			return table.concat(lines, "\n")
		end

    local function sendNormalItemsWebhook()
        local list = {}
        local extraFarmTotal = 0
        local totalProgress = 0
        local itemCount = 0

        config = config or {}
        config.ItemBaseCount   = config.ItemBaseCount   or {}
        config.ItemExtraFarm   = config.ItemExtraFarm   or {}
        config.ItemCompleted   = config.ItemCompleted   or {}
        config.ItemAccumulated = config.ItemAccumulated or {}
        config.ItemLastCurrent = config.ItemLastCurrent or {}

		local function shortenLocal(num)
			num = tonumber(num) or 0
			if num >= 1e9 then return string.format("%.1fB", num/1e9):gsub("%.0B","B")
			elseif num >= 1e6 then return string.format("%.1fM", num/1e6):gsub("%.0M","M")
			elseif num >= 1e3 then return string.format("%.1fk", num/1e3):gsub("%.0k","k")
			else return tostring(math.floor(num)) end
		end

        local function makeProgressBar(percent)
            local filled = math.floor((percent/100) * 10)
            return string.rep("🟩", filled) .. string.rep("⬛", 10 - filled)
        end

        local sortedItems = {}
        for itemName, showData in pairs(Showlist) do
            if showData and showData.show then
                table.insert(sortedItems, { name = itemName, data = showData })
            end
        end
        table.sort(sortedItems, function(a, b)
            return (a.data.order or 999) < (b.data.order or 999)
        end)

        for _, entry in ipairs(sortedItems) do
            local itemName = entry.name
            local showData = entry.data
            local emoji = showData.emoji or "📦"
            local current = safeNumber(freshData.Eggs[itemName] or 0)

            local uiExtra   = safeNumber(showData.extrafarm or 0)
            local oldExtra  = safeNumber(config.ItemExtraFarm[itemName] or 0)
            local baseCount = safeNumber(config.ItemBaseCount[itemName] or current)
            local completed = config.ItemCompleted[itemName] or false

            if not config.ItemBaseCount[itemName] then
                baseCount = current
                config.ItemBaseCount[itemName] = current
                config.ItemCompleted[itemName] = false
                config.ItemAccumulated[itemName] = 0
                config.ItemLastCurrent[itemName] = current
                completed = false

            elseif uiExtra > 0 and uiExtra ~= oldExtra then
                baseCount = current
                config.ItemBaseCount[itemName] = current
                config.ItemCompleted[itemName] = false
                config.ItemAccumulated[itemName] = 0
                config.ItemLastCurrent[itemName] = current
                completed = false

            elseif current >= baseCount + uiExtra and uiExtra > 0 then
                if not completed then
                    config.ItemCompleted[itemName] = true
                    completed = true
                end

            elseif current < baseCount then
                baseCount = current
                config.ItemBaseCount[itemName] = current
                config.ItemCompleted[itemName] = false
                completed = false
            end

            local lastCur = safeNumber(config.ItemLastCurrent[itemName] or current)
            local gained = current - lastCur
            if gained > 0 then
                config.ItemAccumulated[itemName] = (config.ItemAccumulated[itemName] or 0) + gained
            end

            local progress = config.ItemAccumulated[itemName] or 0
            config.ItemLastCurrent[itemName] = current
            config.ItemExtraFarm[itemName]   = uiExtra

            local display = shorten(current)
            local line
            if uiExtra > 0 then
                extraFarmTotal += uiExtra
                local missing = math.max(0, uiExtra - progress)
                local mark = missing <= 0 and "✅" or string.format("(+%s)", shorten(missing))
                line = string.format("%s **%s** — %s (%s / %s) %s",
                    emoji, itemName, display, shorten(progress), shorten(uiExtra), mark)
            else
                line = string.format("%s **%s** — %s", emoji, itemName, display)
            end

            table.insert(list, line)

            if uiExtra > 0 then
                itemCount += 1
                local p = math.min(100, math.floor((progress / math.max(1, uiExtra)) * 100))
                totalProgress += p
            end
        end

        if #list == 0 then return 0 end

        local avgProgress = (itemCount > 0) and math.floor(totalProgress / itemCount) or 0
        local bar = makeProgressBar(avgProgress)

        local description =
            "<:Hivesticker_round_rascal_bee:1477950761400008889> **Inventory Status — Bee Swarm Report 🐝**\n───────────────────────────────\n"
            .. table.concat(list, "\n")
            .. "\n───────────────────────────────\n"
            .. string.format("📊 Farm Progress\n%s %d%%\n", bar, avgProgress)
            .. "───────────────────────────────\n"
            .. "`📚 Inventory auto-updated`\n───────────────────────────────"

        sendDiscordEmbed(config.WebhookUrl_Normal or config.WebhookUrl, {
            title = "<:InventoryIcon:1477952318027600043> Inventory Normal Report",
            color = 0x3498DB,
            description = description,
            footer = { text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") .. " | Bee Swarm Auto Reporter" }
        })

        return extraFarmTotal
    end

    local function shorten(num)
        num = tonumber(num) or 0
        if num >= 1e9 then return string.format("%.1fB", num/1e9):gsub("%.0B","B")
        elseif num >= 1e6 then return string.format("%.1fM", num/1e6):gsub("%.0M","M")
        elseif num >= 1e3 then return string.format("%.1fk", num/1e3):gsub("%.0k","k")
        else return tostring(math.floor(num)) end
    end

    local function sendCraftItemsWebhook()
        local craftList = {}

        local sortedCraft = {}
        for mainItem in pairs(CraftRecipes) do
            table.insert(sortedCraft, mainItem)
        end
        table.sort(sortedCraft, function(a, b)
            local oa = Showlist[a] and (Showlist[a].order or 999) or 999
            local ob = Showlist[b] and (Showlist[b].order or 999) or 999
            return oa < ob
        end)

        for _, mainItem in ipairs(sortedCraft) do
            local showData = Showlist[mainItem]
            local uiExtra = safeNumber(showData and showData.extrafarm or 0)

            if showData and showData.show and uiExtra > 0 then
                local current = safeNumber(config.ItemCurrent[mainItem] or 0)
                local progress = safeNumber(
                    (config.ItemAccumulated and config.ItemAccumulated[mainItem]) or 0
                )

                local emoji = (showData and showData.emoji) or "📦"
                local need = uiExtra
                local missing = math.max(0, need - progress)
                local mark = missing <= 0 and "✅" or string.format("(+%s)", shorten(missing))

                local header = string.format(
                    "%s **%s** — x%s (%s / %s) %s",
                    emoji, mainItem, shorten(current),
                    shorten(progress), shorten(need), mark
                )

                table.insert(craftList, header)

                local craftBlock = buildCraftTreeBlock(mainItem, uiExtra, 1)
                if craftBlock ~= "" then
                    table.insert(craftList, craftBlock)
                end

                table.insert(craftList, "")
            end
        end

        if #craftList == 0 then
            print("[EggTab] ⚠️ ไม่มีไอเทมที่มี extrafarm > 0")
            return
        end

        local function sendLongWebhook(title, color, text)
            local limit = 1800
            while #text > 0 do
                local chunk = text:sub(1, limit)
                local lastLine = chunk:match(".*\n")
                if lastLine and #chunk < #text then chunk = lastLine end
                sendDiscordEmbed(config.WebhookUrl_Craft or config.WebhookUrl, {
                    title = title, color = color, description = chunk,
                    footer = { text = "📊 Bee Swarm Crafting Automation" }
                })
                text = text:sub(#chunk + 1)
                task.wait(1)
            end
        end

        local fullText =
            "<:Hivesticker_panicked_science_bea:1477966877513748491> **Inventory Craft Report — Smart Craft System**\n"
            .. "───────────────────────────────\n"
            .. table.concat(craftList, "\n")
            .. "\n───────────────────────────────\n"
            .. "`📚 Inventory auto-updated`\n───────────────────────────────\n"
            .. string.format("`📅 %s ⏰ %s`\n", os.date("%d/%m/%Y"), os.date("%H:%M:%S"))
            .. "`Bee Swarm Auto Reporter System`\n───────────────────────────────"

        sendLongWebhook("<:Hivesticker_panicked_science_bea:1477966877513748491> Inventory Craft Report", 0x9B59B6, fullText)
    end

    local function sendIngredientSummaryWebhook(totalExtraFarm)
        local TotalSummary = {}

        local function collectAllIngredients(itemName, multiplier)
            local recipe = CraftRecipes[itemName]
            if not recipe then return end
            for _, sub in ipairs(recipe) do
                local need = safeNumber(sub.goal * multiplier)
                local current = safeNumber(config.ItemCurrent[sub.name] or 0)
                local farmed = safeNumber(
                    (config.ItemAccumulated and config.ItemAccumulated[sub.name]) or 0
                )

                TotalSummary[sub.name] = TotalSummary[sub.name] or { have = 0, need = 0, current = 0 }
                if not TotalSummary[sub.name].initialized then
                    TotalSummary[sub.name].have = farmed
                    TotalSummary[sub.name].current = current
                    TotalSummary[sub.name].initialized = true
                end
                TotalSummary[sub.name].need = (TotalSummary[sub.name].need or 0) + need
                if CraftRecipes[sub.name] then
                    collectAllIngredients(sub.name, need)
                end
            end
        end

        for mainItem, showData in pairs(Showlist) do
            local uiExtra = safeNumber(showData.extrafarm or 0)
            if showData.show and uiExtra > 0 and CraftRecipes[mainItem] then
                collectAllIngredients(mainItem, uiExtra)
            end
        end

        local function shorten(num)
            num = tonumber(num) or 0
            if num >= 1e9 then return string.format("%.1fB", num/1e9):gsub("%.0B","B")
            elseif num >= 1e6 then return string.format("%.1fM", num/1e6):gsub("%.0M","M")
            elseif num >= 1e3 then return string.format("%.1fk", num/1e3):gsub("%.0k","k")
            else return tostring(math.floor(num)) end
        end

        local function makeTotalProgressBar(percent)
            local filled = math.floor((percent/100) * 10)
            return string.rep("🟩", filled) .. string.rep("⬛", 10 - filled)
        end

        local lines = {}
        table.insert(lines, "<:Hivesticker_pale_heart:1477948253646487687> **Ingredient Summary — (Recursive)**")
        table.insert(lines, "───────────────────────────────")

        local totalNeed, totalHave, totalMissing = 0, 0, 0
        local notCompleteCount = 0
        config.ItemLastSummaryHave = config.ItemLastSummaryHave or {}
        local previousData = config.ItemLastSummaryHave

        local ordered = {}
        for name, data in pairs(Showlist) do
            table.insert(ordered, { name = name, order = data.order or 999 })
        end
        table.sort(ordered, function(a, b) return a.order < b.order end)

        for _, entry in ipairs(ordered) do
            local mainItem = entry.name
            local data = TotalSummary[mainItem]

            if data then
                local farmed  = safeNumber(data.have or 0)
                local current = safeNumber(data.current or 0)
                local need    = safeNumber(data.need or 0)
                local missing = math.max(0, need - farmed)

                if need > 0 then
                    local prevHave = safeNumber(previousData[mainItem] or 0)
                    local changeEmoji = (farmed - prevHave) > 0 and " <:Hivesticker_yellow_left_arrow:1477947544624431175>" or ""

                    totalHave    += math.min(farmed, need)
                    totalNeed    += need
                    totalMissing += missing

                    if missing > 0 then
                        notCompleteCount += 1
                        local emoji = (Showlist[mainItem] and Showlist[mainItem].emoji) or "📦"
                        table.insert(lines, string.format("%s %s — %s/%s / <:Hivesticker_interrobang_block:1477975676085604372> %s (+%s)%s",
                            emoji, mainItem,
                            shorten(farmed),
                            shorten(need),
                            shorten(current),
                            shorten(missing),
                            changeEmoji
                        ))
                    end

                    previousData[mainItem] = farmed
                end
            end
        end

        if notCompleteCount == 0 then
            table.insert(lines, "🎯 วัตถุดิบครบทุกอย่างแล้ว! เยี่ยมมาก!! 🐝")
        else
            table.insert(lines, "───────────────────────────────")
            local totalPercent = (totalNeed > 0) and math.floor((totalHave / totalNeed) * 100) or 0
            local bar = makeTotalProgressBar(totalPercent)
            table.insert(lines, string.format("📊 Farm Progress Status\n%s %d%%", bar, totalPercent))
            table.insert(lines, "")
            table.insert(lines, string.format("📉 `Remaining to Farm:` %s", shorten(totalMissing)))
            if totalExtraFarm and totalExtraFarm > 0 then
                table.insert(lines, string.format("🎯 `Extra Farm Goals:` %s", shorten(totalExtraFarm)))
            end
        end

        table.insert(lines, "───────────────────────────────")
        table.insert(lines, "`📚 Summary auto-generated\n(Full Recursive Crafting Tree)`")
        table.insert(lines, "───────────────────────────────")

        sendDiscordEmbed(config.WebhookUrl_Summary or config.WebhookUrl, {
            title = "<:Hivesticker_interrobang_block:1477969001618346075> Ingredient Summary Report",
            color = 0x1ABC9C,
            description = table.concat(lines, "\n"),
            footer = { text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") .. " | Bee Swarm Auto Reporter" }
        })
    end

    ----------------------------------------------------
    -- 🚀 เรียกใช้งาน webhook
    ----------------------------------------------------
    if saveWebhookConfig then pcall(saveWebhookConfig) end
    updateCraftTreeCounts()

    local hasCraftItemWithGoal = false
    for name, showData in pairs(Showlist) do
        if showData.show and CraftRecipes[name] and safeNumber(showData.extrafarm or 0) > 0 then
            hasCraftItemWithGoal = true
            break
        end
    end

    if hasCraftItemWithGoal then
        print("[EggTab] 📦 พบไอเท็มที่มีสูตรคราฟและมีเป้าฟาร์ม — ส่งครบทั้ง 3 webhook")
        local totalExtraFarm = sendNormalItemsWebhook() or 0
        sendCraftItemsWebhook()
        sendIngredientSummaryWebhook(totalExtraFarm)
    else
        print("[EggTab] ⏩ ไม่มีไอเท็มที่มีสูตรคราฟ + extrafarm > 0 — ส่งเฉพาะ Normal Report")
        sendNormalItemsWebhook()
    end

    print("[EggTab] ✅ ส่ง Webhook ทั้งหมดเรียบร้อย")
    return true
end


-- ✂️ ฟังก์ชันย่อเลข
local function shortenNumber(num)
    num = tostring(num):gsub(",", "")
    local n = tonumber(num)
    if not n then return num end
    if n >= 1e9 then
        return string.format("%.1fB", n / 1e9)
    elseif n >= 1e6 then
        return string.format("%.1fM", n / 1e6)
    elseif n >= 1e3 then
        return string.format("%.0fK", n / 1e3)
    else
        return tostring(math.floor(n))
    end
end

local function shortenText(text)
    text = text
        :gsub("pollen from the ", "from ")
        :gsub("pollen from ", "from ")
        :gsub("the ", "")
        :gsub("Field", "")
        :gsub("Collect%s+", "Collect ")
        :gsub("Defeat%s+", "Defeat ")
        :gsub("Feed%s+", "Feed ")
        :gsub("Use%s+", "Use ")
        :gsub("Convert%s+", "Convert ")
        :gsub(" at your hive", "")
        :gsub(" your bees", "")
        :gsub("%s+", " ")
    text = text:gsub("(%d[%d,]*)", function(num) return shortenNumber(num) end)
    text = text:gsub("^%s+", ""):gsub("%s+$", "")
    text = text:gsub("[%s%.,%s]+$", "")
    return text
end

local function makeProgressBar(done, total, length)
    local percent = total > 0 and math.floor((done / total) * 100) or 0
    local filled = math.floor((percent / 100) * length)
    return string.rep("🟩", filled) .. string.rep("⬛", length - filled), percent
end

-- ✅ ฟังก์ชันหลัก: ส่งรายงานเควสต์อย่างเดียว
local function questtab_webhook_service()
    if not (config.Flags and config.Flags.Quest) then return end

    if not QuestModule then
        warn("⚠️ QuestModule เป็น nil — ตรวจสอบ require")
        return
    end

    local freshData = nil
    for _, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "Honey") and rawget(v, "Eggs") then
            if v.UserId == player.UserId then
                freshData = v
                break
            end
        end
    end

    if not freshData then
        warn("⚠️ re-fetch data ไม่สำเร็จ")
        return
    end
    if not (freshData.Quests and freshData.Quests.Active) then
        warn("⚠️ ไม่พบ Quests.Active")
        return
    end

    print("🎯 [QuestTab] กำลังดึงข้อมูลเควชจาก data โดยตรง...")

    local bearStyle = {
        ["Spirit Bear"]  = { icon = "<:Hivesticker_honey_bee_bear:1477626618787659887>", color = 0xBB8FCE },
        ["Science Bear"] = { icon = "<:Hivesticker_honey_bee_bear:1477626618787659887>", color = 0xBB8FCE },
        ["Panda Bear"]   = { icon = "<:Hivesticker_honey_bee_bear:1477626618787659887>", color = 0xBB8FCE },
        ["Brown Bear"]   = { icon = "<:Hivesticker_honey_bee_bear:1477626618787659887>", color = 0xBB8FCE },
        ["Black Bear"]   = { icon = "<:Hivesticker_honey_bee_bear:1477626618787659887>", color = 0xBB8FCE },
        ["Riley Bee"]    = { icon = "<:Hivesticker_round_rascal_bee:1477950761400008889>", color = 0xFF9999 },
        ["Bucko Bee"]    = { icon = "<:Hivesticker_blob_bumble_bee:1477980478618468372>", color = 0x85C1E9 },
        ["Mother Bear"]  = { icon = "<:Hivesticker_honey_bee_bear:1477626618787659887>", color = 0xBB8FCE },
        ["Polar Bear"]   = { icon = "<:Hivesticker_honey_bee_bear:1477626618787659887>", color = 0xBB8FCE },
        ["Onett"]        = { icon = "<:Hivesticker_honey_bee_bear:1477626618787659887>", color = 0xBB8FCE },
    }

    local bearImages = {
        ["Spirit Bear"]  = "https://static.wikia.nocookie.net/bee-swarm-simulator/images/2/24/Spiritcloseup.png/revision/latest/scale-to-width-down/120?cb=20230410073957",
        ["Science Bear"] = "https://static.wikia.nocookie.net/bee-swarm-simulator/images/d/d5/Sciencecloseup.png/revision/latest/scale-to-width-down/120?cb=20230410073140",
        ["Panda Bear"]   = "https://static.wikia.nocookie.net/bee-swarm-simulator/images/a/a0/Pandacloseup.png/revision/latest/scale-to-width-down/120?cb=20230410073120",
        ["Brown Bear"]   = "https://static.wikia.nocookie.net/bee-swarm-simulator/images/3/33/Browncloseup.png/revision/latest/scale-to-width-down/120?cb=20230410073111",
        ["Black Bear"]   = "https://static.wikia.nocookie.net/bee-swarm-simulator/images/c/c2/Blackcloseup.png/revision/latest/scale-to-width-down/120?cb=20230410072910",
        ["Mother Bear"]  = "https://static.wikia.nocookie.net/bee-swarm-simulator/images/1/15/Mothercloseup.png/revision/latest/scale-to-width-down/120?cb=20230410073103",
        ["Polar Bear"]   = "https://static.wikia.nocookie.net/bee-swarm-simulator/images/d/d4/Polarcloseup.png/revision/latest/scale-to-width-down/120?cb=20230410073142",
        ["Onett"]        = "https://static.wikia.nocookie.net/bee-swarm-simulator/images/d/d0/OnettNPC.png/revision/latest/scale-to-width-down/150?cb=20240413003313",
        ["Riley Bee"]    = "https://static.wikia.nocookie.net/bee-swarm-simulator/images/3/37/Gifted_Riley_Bee_NPC.png/revision/latest?cb=20210907175830",
        ["Bucko Bee"]    = "https://static.wikia.nocookie.net/bee-swarm-simulator/images/9/9e/Gifted_Bucko_Bee_NPC.png/revision/latest?cb=20210907180446",
    }

    local stats = ClientStatCache:Get()
    local rileyCount = (stats and stats.Totals and stats.Totals.QuestPoolCounts["Riley Bee"]) or 0
    local buckoCount = (stats and stats.Totals and stats.Totals.QuestPoolCounts["Bucko Bee"]) or 0

    local TaskTypes = QuestModule:GetTaskTypes()
    local questList = {}

    for _, activeData in ipairs(freshData.Quests.Active) do
        local questName = activeData.Name
        if type(questName) == "number" then
            questName = QuestModule:IDToName(questName)
        end

        print(string.format("📋 [QuestTab] พบเควช: %s", tostring(questName)))

        local questBase = QuestModule:Get(questName)
        if not questBase or questBase.Hidden then continue end

        local owner = QuestOwnerMap[questName] or "Unknown"
        local style = bearStyle[owner] or { icon = "🐾", color = 0xB57EDC }

        if not (QuestShowlist[owner] and QuestShowlist[owner].show) then continue end

        local tasks, doneCount = {}, 0

        local taskList = (type(questBase.Tasks) == "function") and questBase.Tasks(freshData) or questBase.Tasks
        if taskList then
            for taskIndex, taskInfo in ipairs(taskList) do
                local description = "n/a"
                pcall(function()
                    local descVal = taskInfo.Description or QuestModule.GetTaskDescription(freshData, taskInfo)
                    description = (type(descVal) == "function") and descVal(freshData) or tostring(descVal)
                end)

                local current = (TaskTypes[taskInfo.Type].GetStat(taskInfo, freshData) or 0)
                    - (activeData.StartValues[taskIndex] or 0)
                local target = (type(taskInfo.Amount) == "function")
                    and taskInfo.Amount(freshData) or (taskInfo.Amount or 1)

                local isDone = current >= target
                if isDone then doneCount += 1 end

                if description ~= "n/a" then
                    local shortDesc = shortenText(description)
                    if isDone then
                        table.insert(tasks, "<:Hivesticker_green_check_mark:1477630788152328263> " .. shortDesc)
                    else
                        local progText = string.format("%s / %s",
                            shortenNumber(math.floor(math.max(current, 0))),
                            shortenNumber(math.floor(target)))
                        table.insert(tasks, "<:Hivesticker_red_x:1477630810994774127> " .. shortDesc .. " . " .. progText)
                    end
                end
            end
        end

        local extraInfo = ""
        if owner == "Riley Bee" then
            extraInfo = string.format("🔴 Completed Total: **%s Quests**", NumberCommas(rileyCount))
        elseif owner == "Bucko Bee" then
            extraInfo = string.format("🔵 Completed Total: **%s Quests**", NumberCommas(buckoCount))
        end

        table.insert(questList, {
            bear      = owner,
            icon      = style.icon,
            color     = style.color,
            name      = tostring(questBase.DisplayName or questName),
            tasks     = tasks,
            done      = doneCount,
            extraInfo = extraInfo,
        })
    end

    if QuestShowlist["Riley Bee"] and QuestShowlist["Riley Bee"].show then
        local style = bearStyle["Riley Bee"] or { icon = "🔴", color = 0xFF9999 }
        table.insert(questList, {
            bear      = "Riley Bee",
            icon      = style.icon,
            color     = style.color,
            name      = "Quest Pool Tracker",
            tasks     = {},
            done      = 0,
            extraInfo = string.format("%s Completed Total: **%s Quests**", style.icon, NumberCommas(rileyCount)),
            isBeePool = true,
        })
    end

    if QuestShowlist["Bucko Bee"] and QuestShowlist["Bucko Bee"].show then
        local style = bearStyle["Bucko Bee"] or { icon = "🔵", color = 0x85C1E9 }
        table.insert(questList, {
            bear      = "Bucko Bee",
            icon      = style.icon,
            color     = style.color,
            name      = "Quest Pool Tracker",
            tasks     = {},
            done      = 0,
            extraInfo = string.format("%s Completed Total: **%s Quests**", style.icon, NumberCommas(buckoCount)),
            isBeePool = true,
        })
    end

    if #questList == 0 then
        sendDiscordEmbed(config.WebhookUrl, {
            title       = "📜 Quest Report",
            color       = 0xB57EDC,
            description = "❌ ไม่มีเควชที่เปิด Show อยู่ใน UI",
            footer      = { text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") }
        })
        return
    end

    for i, q in ipairs(questList) do
        local lines = {}

        if q.isBeePool then
            table.insert(lines, string.format("<:Hivesticker_yellow_right_arrow:1477636042327588978> **Quest Pool — %s**", q.bear))
            table.insert(lines, "───────────────────────────")
            table.insert(lines, q.extraInfo)
            table.insert(lines, "───────────────────────────")
            local footerBlock = string.format(
                "`📚 Quest log auto-updated\n──────────────────────────\n📅 %s ⏰ %s\nBee Swarm Auto Reporter System`",
                os.date("%d/%m/%Y"), os.date("%H:%M:%S")
            )
            table.insert(lines, footerBlock)
        else
            local total   = #q.tasks
            local done    = q.done
            local percent = total > 0 and math.floor((done / total) * 100) or 0
            local filled  = math.floor(percent / 10)
            local bar     = string.rep("🟩", filled) .. string.rep("⬛", 10 - filled)

            table.insert(lines, string.format("🎯 **Quest Tracker — %s**", q.bear))
            table.insert(lines, "───────────────────────────")
            table.insert(lines, string.format("<:Hivesticker_yellow_right_arrow:1477636042327588978> **%s**", q.name))
            if q.extraInfo ~= "" then
                table.insert(lines, q.extraInfo)
            end
            table.insert(lines, "───────────────────────────")
            table.insert(lines, string.format("<:Hivesticker_green_plus_sign:1477633271738269746>  %d / %d Tasks Done | %d%%", done, total, percent))
            table.insert(lines, string.format("<:Hivesticker_green_circle:1477635917257900094>  %s", bar))
            table.insert(lines, "───────────────────────────")
            for _, t in ipairs(q.tasks) do
                table.insert(lines, t)
            end
            table.insert(lines, "───────────────────────────")
            local footerBlock = string.format(
                "`📚 Quest log auto-updated\n──────────────────────────\n📅 %s ⏰ %s\nBee Swarm Auto Reporter System`",
                os.date("%d/%m/%Y"), os.date("%H:%M:%S")
            )
            table.insert(lines, footerBlock)
            table.insert(lines, "──────────────────────────")
        end

        local targetUrl
        if (q.bear == "Riley Bee" or q.bear == "Bucko Bee")
            and config.WebhookUrlBee and config.WebhookUrlBee ~= "" then
            targetUrl = config.WebhookUrlBee
        else
            targetUrl = config.WebhookUrl
        end

        sendDiscordEmbed(targetUrl, {
            title       = string.format("%s %s — %s", q.icon, q.bear, q.name),
            color       = q.color,
            description = table.concat(lines, "\n"),
            thumbnail   = { url = bearImages[q.bear] or "" },
            footer      = { text = string.format("Quest %d/%d | Bee Swarm Reporter", i, #questList) }
        })

        task.wait(1.5)
    end

    print("✅ [QuestTab] ส่งรายงาน Hybrid Log ครบแล้ว!")
end



------------------------------------------------------------
-- 🧰 Tool Craft Report
------------------------------------------------------------
function tooltab_webhook_service()
    if not (config.Flags and config.Flags.Tool) then return end
    print("🧰 [ToolTab] เริ่มรันระบบ Tool Craft Report ...")

    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    local function safeNumber(value)
        if value == nil then return 0 end
        local str = tostring(value):gsub(",", ""):gsub("%s+", ""):gsub("[^%d%.%-]", "")
        if str == "" or str == "-" or str == "." then return 0 end
        return tonumber(str) or 0
    end

    local function formatNumber(num)
        num = math.floor(tonumber(num) or 0)
        local s = tostring(num)
        while true do
            local new, k = s:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
            s = new
            if k == 0 then break end
        end
        return s
    end

    local function shorten(num)
        num = tonumber(num) or 0
        if num >= 1e9 then return (string.format("%.1fB", num / 1e9):gsub("%.0B","B"))
        elseif num >= 1e6 then return (string.format("%.1fM", num / 1e6):gsub("%.0M","M"))
        elseif num >= 1e3 then return (string.format("%.1fk", num / 1e3):gsub("%.0k","k"))
        else return tostring(math.floor(num)) end
    end

    local function bar10(pct)
        local filled = math.floor(math.clamp(pct, 0, 100) / 10)
        return string.rep("🟩", filled) .. string.rep("⬛", 10 - filled)
    end

    ------------------------------------------------------------
    -- ✅ STEP 1: Sync ItemCurrent
    ------------------------------------------------------------
    if not data or not data.Eggs then
        warn("❌ [ToolTab] data.Eggs ไม่พร้อม - ยกเลิก")
        return
    end

    config.ItemCurrent = {}
    for itemName, amount in pairs(data.Eggs) do
        if amount > 0 then
            config.ItemCurrent[itemName] = amount
        end
    end
    print("✅ [ToolTab] อัปเดตข้อมูลจาก data.Eggs สำเร็จ")

    ------------------------------------------------------------
    -- 🍯 STEP 2: Sync Honey
    ------------------------------------------------------------
    pcall(function()
        local stats = LocalPlayer:FindFirstChild("CoreStats")
        if stats then
            config.HoneyCurrent = stats:FindFirstChild("Honey") and stats.Honey.Value or 0
            print("🍯 [ToolTab] Honey synced:", config.HoneyCurrent)
        else
            config.HoneyCurrent = config.HoneyCurrent or 0
        end
    end)

    ------------------------------------------------------------
    -- 🧩 STEP 3: CraftRecipes
    ------------------------------------------------------------
    local CraftRecipes = {
        ["BlueExtract"] = {
            { name = "Blueberry", goal = 50 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["RedExtract"] = {
            { name = "Strawberry", goal = 50 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["Enzymes"] = {
            { name = "Pineapple", goal = 50 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["Oil"] = {
            { name = "SunflowerSeed", goal = 50 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["Glue"] = {
            { name = "Gumdrops", goal = 50 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["Gumdrops"] = {
            { name = "Strawberry", goal = 3 },
            { name = "Pineapple", goal = 3 },
            { name = "Blueberry", goal = 3 },
        },
        ["Glitter"] = {
            { name = "MoonCharm", goal = 25 },
            { name = "MagicBean", goal = 1 },
        },
        ["StarJelly"] = {
            { name = "Glitter", goal = 3 },
            { name = "RoyalJelly", goal = 100 },
        },
        ["TropicalDrink"] = {
            { name = "Coconut", goal = 10 },
            { name = "Enzymes", goal = 2 },
            { name = "Oil", goal = 2 },
        },
        ["PurplePotion"] = {
            { name = "Neonberry", goal = 3 },
            { name = "RedExtract", goal = 3 },
            { name = "BlueExtract", goal = 3 },
            { name = "Glue", goal = 3 },
        },
        ["SoftWax"] = {
            { name = "Honeysuckle", goal = 5 },
            { name = "Oil", goal = 1 },
            { name = "Enzymes", goal = 1 },
            { name = "RoyalJelly", goal = 10 },
        },
        ["HardWax"] = {
            { name = "SoftWax", goal = 3 },
            { name = "Enzymes", goal = 3 },
            { name = "Bitterberry", goal = 33 },
            { name = "RoyalJelly", goal = 33 },
        },
        ["SwirledWax"] = {
            { name = "HardWax", goal = 3 },
            { name = "SoftWax", goal = 9 },
            { name = "PurplePotion", goal = 6 },
            { name = "RoyalJelly", goal = 3333 },
        },
        ["CausticWax"] = {
            { name = "HardWax", goal = 5 },
            { name = "Enzymes", goal = 5 },
            { name = "Neonberry", goal = 25 },
            { name = "RoyalJelly", goal = 5252 },
        },
        ["SuperSmoothie"] = {
            { name = "Neonberry", goal = 3 },
            { name = "StarJelly", goal = 3 },
            { name = "PurplePotion", goal = 3 },
            { name = "TropicalDrink", goal = 6 },
        },
        ["Turpentine"] = {
            { name = "SuperSmoothie", goal = 10 },
            { name = "CausticWax", goal = 10 },
            { name = "StarJelly", goal = 100 },
            { name = "Honeysuckle", goal = 1000 },
        },
    }

    ------------------------------------------------------------
    -- 🧩 STEP 4: buildCraftTreeBlock
    ------------------------------------------------------------
    local CombinedIngredients = {}

    local function buildCraftTreeBlock(itemName, uiExtra, depth)
        depth = depth or 0
        local recipe = CraftRecipes[itemName]
        if not recipe or uiExtra <= 0 then return "" end

        local indent = string.rep("  ", depth)
        local lines = {}
        local totalSubs = #recipe
        local allEnough = true

        for i, sub in ipairs(recipe) do
            local have = safeNumber(config.ItemCurrent[sub.name] or 0)
            local need = safeNumber(sub.goal) * safeNumber(uiExtra)

            CombinedIngredients[sub.name] = CombinedIngredients[sub.name] or { have = 0, need = 0 }
            CombinedIngredients[sub.name].have = have
            CombinedIngredients[sub.name].need += need

            local emoji = (Showlist[sub.name] and Showlist[sub.name].emoji) or "📦"
            local mark = have >= need and "<:Hivesticker_green_check_mark:1477630788152328263>" or ""
            if have < need then allEnough = false end

            local prefix = (i == totalSubs) and "└─" or "├─"
            table.insert(lines, string.format("%s%s %s **%s** — %s/%s %s",
                indent, prefix, emoji, sub.name,
                shorten(have), shorten(need), mark))
        end

        if allEnough and depth == 0 then
            table.insert(lines, "<:Hivesticker_green_check_mark:1477630788152328263> วัตถุดิบครบแล้ว!")
        end

        return table.concat(lines, "\n")
    end

    ------------------------------------------------------------
    -- 🧰 STEP 5: ส่ง webhook แยกต่ออุปกรณ์ (เรียงตาม Showlist.order)
    ------------------------------------------------------------
    local GlobalSummary = {}
    local toolsSent = 0

    local sortedTools = {}
	for toolName, tool in pairs(ToolList) do
		if tool.show and tool.requirements then
			local order = (Showlist[toolName] and Showlist[toolName].order) or 999
			table.insert(sortedTools, { name = toolName, tool = tool, order = order })
		end
	end
    table.sort(sortedTools, function(a, b) return a.order < b.order end)

    for _, entry in ipairs(sortedTools) do
        local toolName = entry.name
        local tool = entry.tool
        local toolEmoji = (Showlist[toolName] and Showlist[toolName].emoji) or tool.emoji or "🧰"

        local toolLines, totalPct, cnt, allDone = {}, 0, 0, true

		for _, req in ipairs(tool.requirements) do
			local need = safeNumber(req.goal)
			local have = (req.name == "Honey") and safeNumber(config.HoneyCurrent or 0)
				or safeNumber(config.ItemCurrent[req.name] or 0)
			local diff = math.max(0, need - have)
			local pct = (need > 0) and math.min(1, have / need) or 1
			totalPct += pct
			cnt += 1
			if diff > 0 then allDone = false end

			local emoji = (req.name == "Honey") and "<:Honey:1477943827938414703>"
				or (Showlist[req.name] and Showlist[req.name].emoji) or "📦"
			local mark = diff <= 0 and "<:Hivesticker_green_check_mark:1477630788152328263>"
				or string.format("(+%s)", shorten(diff))

			table.insert(toolLines, string.format("%s **%s** — %s / %s %s",
				emoji, req.name, shorten(have), shorten(need), mark))

			-- ✅ แสดง sub-ingredients เฉพาะไอเทมที่ไม่ใช่ Honey
			if req.name ~= "Honey" and CraftRecipes[req.name] then
				local block = buildCraftTreeBlock(req.name, need, 1)
				if block ~= "" then
					table.insert(toolLines, block)
				end
			end

			-- ✅ เก็บทุกตัวรวม Honey เข้า GlobalSummary
			GlobalSummary[req.name] = GlobalSummary[req.name] or { have = 0, need = 0 }
			if req.name == "Honey" then
				-- Honey ใช้ have จริงๆ ไม่ max เพราะแต่ละ tool ใช้ Honey คนละก้อน
				GlobalSummary[req.name].have = safeNumber(config.HoneyCurrent or 0)
				GlobalSummary[req.name].need += need
			else
				GlobalSummary[req.name].have = math.max(GlobalSummary[req.name].have, have)
				GlobalSummary[req.name].need += need
			end
		end

        local avg = math.floor((totalPct / math.max(cnt, 1)) * 100)
        local statusLine = allDone
            and "<:Hivesticker_green_check_mark:1477630788152328263> **พร้อมคราฟแล้ว!**"
            or string.format("📊 **%d%% Complete**\n%s", avg, bar10(avg))

        local description =
            "<:Hivesticker_round_rascal_bee:1477950761400008889> **Tool Craft Report — " .. toolName .. " **\n"
            .. "───────────────────────────────\n"
            .. table.concat(toolLines, "\n")
            .. "\n───────────────────────────────\n"
            .. statusLine .. "\n"
            .. "───────────────────────────────\n"
            .. "`📚 Tool Craft auto-updated`\n"
			.. "───────────────────────────────\n"
            .. string.format("`📅 %s ⏰ %s`\n", os.date("%d/%m/%Y"), os.date("%H:%M:%S"))
            .. "`Bee Swarm Auto Reporter`\n"
            .. "───────────────────────────────"

        sendDiscordEmbed(config.WebhookUrl_Tool or config.WebhookUrl, {
            title = string.format("%s Tool Craft — %s", toolEmoji, toolName),
            color = allDone and 0x2ECC71 or 0x1ABC9C,
            description = description,
            footer = { text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") .. " | Bee Swarm Auto Reporter" }
        })

        toolsSent += 1
        task.wait(2)
    end

    print(string.format("✅ [ToolTab] ส่ง webhook คราฟอุปกรณ์ครบ %d รายการ", toolsSent))

    ------------------------------------------------------------
    -- 📦 STEP 6: Summary รวมทุกอุปกรณ์ (Recursive)
    ------------------------------------------------------------
    task.wait(1)
    print("📦 [ToolTab] กำลังสร้าง Summary รวมทุกอุปกรณ์ (Recursive)...")

    local function collectAllIngredients(itemName, multiplier, total)
        total = total or {}
        local recipe = CraftRecipes[itemName]
        if not recipe then return total end
        for _, sub in ipairs(recipe) do
            local need = safeNumber(sub.goal * multiplier)
            local have = safeNumber(config.ItemCurrent[sub.name] or 0)
            total[sub.name] = total[sub.name] or { have = 0, need = 0 }
            total[sub.name].have = math.max(total[sub.name].have, have)
            total[sub.name].need += need
            if CraftRecipes[sub.name] then
                collectAllIngredients(sub.name, need, total)
            end
        end
        return total
    end

    local RecursiveSummary = {}
    for name, d in pairs(GlobalSummary) do
        local have = safeNumber(d.have)
        local need = safeNumber(d.need)
        RecursiveSummary[name] = RecursiveSummary[name] or { have = 0, need = 0 }
        RecursiveSummary[name].have = math.max(RecursiveSummary[name].have, have)
        RecursiveSummary[name].need += need
        if CraftRecipes[name] then
            collectAllIngredients(name, need, RecursiveSummary)
        end
    end

    local lines = {}
    table.insert(lines, "📦 **Ingredient Summary — Tool (Recursive)**")
    table.insert(lines, "───────────────────────────────")

    local totalNeed, totalHave, totalMissing = 0, 0, 0
    local notCompleteCount = 0
    config.ToolLastSummaryHave = config.ToolLastSummaryHave or {}
    local prev = config.ToolLastSummaryHave

    local sorted = {}
    for name, d in pairs(RecursiveSummary) do
        local have, need = safeNumber(d.have), safeNumber(d.need)
        if need > 0 then
            local order = (Showlist[name] and Showlist[name].order) or 999
            table.insert(sorted, {
                name = name, have = have, need = need,
                missing = math.max(0, need - have),
                order = order
            })
        end
    end
    table.sort(sorted, function(a, b) return a.order < b.order end)

    for _, it in ipairs(sorted) do
        local missing = it.missing
        local need    = it.need
        local have    = it.have

        if need > 0 then
            local prevHave    = safeNumber(prev[it.name] or 0)
            local changeEmoji = (have - prevHave) > 0
                and " <:Hivesticker_yellow_left_arrow:1477947544624431175>" or ""

            totalHave    += math.min(have, need)
            totalNeed    += need
            totalMissing += missing

            -- ✅ แสดงทุกตัวที่ยังขาด รวม Honey
            if missing > 0 then
                notCompleteCount += 1
                local emoji = (it.name == "Honey") and "<:Honey:1477943827938414703>"
                    or (Showlist[it.name] and Showlist[it.name].emoji) or "📦"
                table.insert(lines, string.format(
                    "%s **%s** — %s/%s / <:Hivesticker_interrobang_block:1477975676085604372> %s (+%s)%s",
                    emoji, it.name,
                    shorten(have),
                    shorten(need),
                    shorten(have),  -- current
                    shorten(missing),
                    changeEmoji
                ))
            end

            prev[it.name] = have
        end
    end

    if notCompleteCount == 0 then
        table.insert(lines, "🎯 วัตถุดิบครบทุกอย่างแล้ว! เยี่ยมมาก!! 🐝")
    else
        table.insert(lines, "───────────────────────────────")
        local totalPercent = (totalNeed > 0) and math.floor((totalHave / totalNeed) * 100) or 0
        local bar = bar10(totalPercent)
        table.insert(lines, string.format("📊 Farm Progress Status\n%s %d%%", bar, totalPercent))
        table.insert(lines, "")
        table.insert(lines, string.format("📉 `Remaining to Farm:` %s", shorten(totalMissing)))
    end

    table.insert(lines, "───────────────────────────────")
    table.insert(lines, "`📚 Summary auto-generated\n(Full Recursive Crafting Tree)`")
    table.insert(lines, "───────────────────────────────")

    sendDiscordEmbed(config.WebhookUrl_ToolSummary or config.WebhookUrl, {
        title = "<:Hivesticker_interrobang_block:1477969001618346075> Tool Ingredient Summary Report",
        color = 0x1ABC9C,
        description = table.concat(lines, "\n"),
        footer = { text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") .. " | Bee Swarm Auto Reporter" }
    })

    print("✅ [ToolTab] ส่ง Summary Recursive ครบทุกชั้นเรียบร้อย")
end



function combo_webhook_service()
    if not (config.Flags and config.Flags.Combo) then return end
    print("[Combo] เริ่มดึงข้อมูล...")

    local freshData = nil
    for _, v in pairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "Honey") and rawget(v, "Eggs") then
            if v.UserId == player.UserId then
                freshData = v
                break
            end
        end
    end

    if not freshData or not freshData.Eggs then
        warn("[Combo] ❌ ไม่พบ data.Eggs — ยกเลิก")
        return
    end

    print("[Combo] ✅ ดึงข้อมูล Eggs สำเร็จ")

    local list = {}

    local function safeNumber(value)
        if value == nil then return 0 end
        local str = tostring(value):gsub(",", ""):gsub("%s+", ""):gsub("[^%d%.%-]", "")
        if str == "" or str == "-" or str == "." then return 0 end
        return tonumber(str) or 0
    end

    local function shorten(num)
        num = tonumber(num) or 0
        if num >= 1e9 then return string.format("%.1fB", num/1e9):gsub("%.0B","B")
        elseif num >= 1e6 then return string.format("%.1fM", num/1e6):gsub("%.0M","M")
        elseif num >= 1e3 then return string.format("%.1fk", num/1e3):gsub("%.0k","k")
        else return tostring(math.floor(num)) end
    end

    -- ✅ วนตาม ComboPreset โชว์อย่างเดียว ไม่มีเป้า
    for _, itemName in ipairs(config.ComboPreset or {}) do
        local showData = Showlist[itemName]
        if showData then
            local emoji = showData.emoji or "📦"
            local current = safeNumber(freshData.Eggs[itemName] or 0)
            local line = string.format("%s **%s** — %s", emoji, itemName, shorten(current))
            table.insert(list, line)
        end
    end

    if #list == 0 then
        print("[Combo] ⚠️ ไม่มีไอเทมใน ComboPreset")
        return
    end

    local description =
        "<:Hivesticker_round_rascal_bee:1477950761400008889> **Inventory Status — Combo Report **\n───────────────────────────────\n"
        .. table.concat(list, "\n")
        .. "\n───────────────────────────────\n"
        .. "`📚 Inventory auto-updated`\n───────────────────────────────"

    sendDiscordEmbed(config.WebhookUrl_Combo or config.WebhookUrl, {
        title = "<:InventoryIcon:1477952318027600043> Inventory Combo Report",
        color = 0x3498DB,
        description = description,
        footer = { text = os.date("📅 %d/%m/%Y ⏰ %H:%M:%S") .. " | Bee Swarm Auto Reporter" }
    })

    print("[Combo] ✅ ส่ง Combo Report เรียบร้อย")
    return true
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
    print("🌀 เริ่มทำงานตามลำดับ: Honey → Item → Combo → Quest → Tool")

    -- 1️⃣ Honey ก่อนสุด
    if config.Flags.Honey then
        honey_webhook_service()
        task.wait(1)
    end
    if not config.Enabled then return end

    -- 2️⃣ Item ต่อมา
    if config.Flags.Item then
        eggtab_webhook_service()
        task.wait(1)
    end
    if not config.Enabled then return end

    -- 3️⃣ Combo (แยกจาก Item)
    if config.Flags.Combo then
        combo_webhook_service()
        task.wait(1)
    end
    if not config.Enabled then return end

    -- 4️⃣ Quest หลังจาก Item
    if config.Flags.Quest then
        questtab_webhook_service()
        task.wait(1)
    end
    if not config.Enabled then return end

    -- 5️⃣ Tool เป็นอันสุดท้าย
    if config.Flags.Tool then
        pcall(function()
            tooltab_webhook_service()
        end)
        task.wait(1)
    end
    if not config.Enabled then return end
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

		if config.Flags.Tool then
			print("🧰 [Main] Running Tool Report...")
			pcall(tooltab_webhook_service)
			task.wait(3)
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

-- 🪵 กล่องหลัก (ขยายความสูงเป็น 90)
local frame = Instance.new("Frame")
frame.Name = "PlayerBox"
frame.Size = UDim2.new(0, 240, 0, 90)  -- ✅ เพิ่มจาก 60 → 90
frame.Position = UDim2.new(0, 20, 1, -110)
frame.BackgroundColor3 = Color3.fromRGB(92, 64, 51)
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
stroke.Color = Color3.fromRGB(190, 150, 100)

-- 🧁 เส้นแบ่ง 1 (ใต้ชื่อ)
local divider = Instance.new("Frame", frame)
divider.Size = UDim2.new(0.9, 0, 0, 1)
divider.Position = UDim2.new(0.05, 0, 0, 36)
divider.BackgroundColor3 = Color3.fromRGB(150, 110, 80)
divider.BorderSizePixel = 0

-- 🧁 เส้นแบ่ง 2 (ใต้เวลา)
local divider2 = Instance.new("Frame", frame)
divider2.Size = UDim2.new(0.9, 0, 0, 1)
divider2.Position = UDim2.new(0.05, 0, 0, 64)
divider2.BackgroundColor3 = Color3.fromRGB(150, 110, 80)
divider2.BorderSizePixel = 0

-- 🐝 ชื่อผู้เล่น
local playerName = Instance.new("TextLabel")
playerName.Name = "PlayerName"
playerName.Size = UDim2.new(1, -20, 0, 28)
playerName.Position = UDim2.new(0, 10, 0, 6)
playerName.BackgroundTransparency = 1
playerName.TextColor3 = Color3.fromRGB(255, 230, 180)
playerName.Font = Enum.Font.GothamBold
playerName.TextSize = 18
playerName.TextXAlignment = Enum.TextXAlignment.Left
playerName.Text = "🐝 " .. LocalPlayer.Name
playerName.Parent = frame

-- ⏱️ เวลาเล่นเกม
local playtimeLabel = Instance.new("TextLabel")
playtimeLabel.Name = "PlaytimeLabel"
playtimeLabel.Size = UDim2.new(1, -20, 0, 22)
playtimeLabel.Position = UDim2.new(0, 10, 0, 38)
playtimeLabel.BackgroundTransparency = 1
playtimeLabel.TextColor3 = Color3.fromRGB(230, 200, 160)
playtimeLabel.Font = Enum.Font.Gotham
playtimeLabel.TextSize = 13
playtimeLabel.TextXAlignment = Enum.TextXAlignment.Left
playtimeLabel.Text = "⏱️ เล่นมาแล้ว 0 วิ"
playtimeLabel.Parent = frame

-- 🪴 Planter Status  ✅ เพิ่มใหม่
local planterLabel = Instance.new("TextLabel")
planterLabel.Name = "PlanterLabel"
planterLabel.Size = UDim2.new(1, -20, 0, 22)
planterLabel.Position = UDim2.new(0, 10, 0, 66)
planterLabel.BackgroundTransparency = 1
planterLabel.TextColor3 = Color3.fromRGB(200, 240, 180)
planterLabel.Font = Enum.Font.Gotham
planterLabel.TextSize = 13
planterLabel.TextXAlignment = Enum.TextXAlignment.Left
planterLabel.Text = "🪴 Planter : —"
planterLabel.Parent = frame

-- ☕ Fade in
frame.BackgroundTransparency = 1
playerName.TextTransparency = 1
playtimeLabel.TextTransparency = 1
planterLabel.TextTransparency = 1
task.spawn(function()
    for i = 1, 10 do
        local alpha = i / 10
        frame.BackgroundTransparency = 1 - (0.85 * alpha)
        playerName.TextTransparency = 1 - alpha
        playtimeLabel.TextTransparency = 1 - alpha
        planterLabel.TextTransparency = 1 - alpha
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
        if h > 0 then
            playtimeLabel.Text = string.format("⏱️ เล่นมาแล้ว %d ชม. %02d นาที", h, m)
        elseif m > 0 then
            playtimeLabel.Text = string.format("⏱️ เล่นมาแล้ว %d นาที %02d วิ", m, s)
        else
            playtimeLabel.Text = string.format("⏱️ เล่นมาแล้ว %d วิ", s)
        end
    end
end)

local planterList = {
    { name = "PlasticPlanter",   icon = "🟡" },
    { name = "CandyPlanter",     icon = "🟣" },
    { name = "Red ClayPlanter",  icon = "🔴" },
    { name = "Blue ClayPlanter", icon = "🔵" },
    { name = "TackyPlanter",     icon = "⚪" },
    { name = "PesticidePlanter", icon = "🟢" },
}

local function updatePlanters()
    local icons = {}

    for _, p in ipairs(planterList) do
        if data.Eggs and data.Eggs[p.name] ~= nil then
            table.insert(icons, p.icon)
        end
    end

    planterLabel.Text = #icons > 0
        and "🌲 Planter : " .. table.concat(icons, " ")
        or  "🌲 Planter : —"
end

task.spawn(function()
    while task.wait(5) do
        updatePlanters()
    end
end)
updatePlanters()

print("☕ [PlayerInfoGui] โหลดกล่องชื่อผู้เล่นโทนน้ำตาลอบอุ่นเรียบร้อย 🐝")
