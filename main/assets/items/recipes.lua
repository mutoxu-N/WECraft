-- アイテム名と管理用英語名のリンク
items = {
  hemp = "麻",
  stone = "石",
  rounded_stone = "石ころ",
  tree = "木",
  trunk = "幹",
  stick = "枝",
  sharp_stick = "とがった枝",
  cotton = "綿",
  cottonflower = "綿花",
  quartz = "石英",
  flint = "火打石",
  string = "糸",
  mushroom = "キノコ",
  loom = "織機",
  shirt = "シャツ",
  gear = "歯車",
  clock = "時計",
  gear_screw = "部品",

  rope = "ロープ",
  plank = "木材",
  workpiece = "加工材",
  screw = "ねじ",
  iron_plate = "鉄板",
  iron_rod = "鉄の棒",
  chest = "箱",
  handle = "取っ手",

  origin_axe = "斧の元",
  axe = "斧",
  origin_pickaxe = "つるはしの元",
  pickaxe = "つるはし",
  origin_shovel = "スコップの元",
  shovel = "スコップ",
  awl = "千枚通し",
  origin_awl = "千枚通しの元",
  knife = "ナイフ",
  hammer = "金槌",
  blade = "刃",

  furnace = "かまど",
  origin_furnace = "かまどの元",
  coal_furnace = "石炭かまど",
  burning_furnace = "燃焼かまど",

  coal = "石炭",
  coalmountain = "石炭鉱山",
  opened_coal_mountain = "炭鉱",
  iron = "鉄",
  iron_ore = "鉄鉱石",
  ironmountain = "鉄鉱山",
  opened_iron_mountain = "鉄坑",
  sand = "砂",
  sandmountain = "砂の山",
  broken_mountain = "壊れた砂山",
  glass = "ガラス",
  stained_glass = "ステンドグラス",

  foundation = "土台",
  tombstone = "墓石",
  tomb = "墓",
  cat_tomb = "ネコの墓",

  apple = "りんご (8)",
  acorn = "どんぐり (2)",
  wildplant = "山菜 (3)",
  bambooshoots = "たけのこ (5)",
  baked_mushroom = "焼きキノコ (8)",
  baked_apple = "焼きリンゴ (20)",
  log = "丸太",
  bark = "樹皮",
  colored_shirt = "色付きシャツ",
  pulp = "パルプ",
  paper = "紙",

  camellia = "つばき",
  chrysanthemum = "ノジギク",
  dahilia = "ダリア",
  daisy = "デイジー",
  freesia = "フリージア",
  gentian = "リンドウ",

  red_dye = "染料(赤)",
  yellow_dye = "染料(黄)",
  purple_dye = "染料(紫)",
  white_dye = "染料(白)",
  pink_dye = "染料(桃)",
  blue_dye = "染料(青)",
  mixed_dye1 = "混合染料1",
  mixed_dye2 = "混合染料2",
  mixed_dye3 = "混合染料3",
  mixed_dye4 = "混合染料4",
  mixed_dye5 = "混合染料5",

  swift = "俊足",
  hand = "素手",

  completeitem = "納品受付"
}
-- レシピ管理
recipes = {
        {items["hemp"],items["hemp"],items["rope"]},  --ロープ
        {items["stick"],items["rope"],items["handle"]}, --取っ手
        {items["stone"],items["stone"],items["rounded_stone"]}, --石ころ
        {items["rounded_stone"],items["quartz"],items["origin_pickaxe"]}, --つるはしの元
        {items["origin_pickaxe"],items["handle"],items["pickaxe"]}, --つるはし
        {items["rounded_stone"],items["stone"],items["origin_shovel"]}, --スコップの元
        {items["origin_shovel"],items["handle"],items["shovel"]}, --スコップ
        {items["origin_shovel"],items["quartz"],items["origin_axe"]}, --斧の元
        {items["origin_axe"],items["handle"],items["axe"]}, --斧
        {items["ironmountain"],items["pickaxe"],items["opened_iron_mountain"]}, --開かれた鉄鉱石
        {items["coalmountain"],items["pickaxe"],items["opened_coal_mountain"]}, --開かれた石炭鉱山
        {items["sandmountain"],items["shovel"],items["broken_mountain"]}, --壊れた砂山
        {items["broken_mountain"],items["hand"],items["sand"]}, --砂
        {items["opened_coal_mountain"],items["hand"],items["coal"]}, --石炭
        {items["opened_iron_mountain"],items["hand"],items["iron_ore"]}, --鉄鉱石
        {items["quartz"],items["stone"],items["flint"]}, --火打石
        {items["rounded_stone"],items["rounded_stone"],items["origin_furnace"]}, --かまどの元
        {items["origin_furnace"],items["origin_pickaxe"],items["furnace"]}, --かまど
        {items["furnace"],items["coal"],items["coal_furnace"]}, --石炭かまど
        {items["coal_furnace"],items["flint"],items["burning_furnace"]}, --燃焼かまど
        {items["burning_furnace"],items["iron_ore"],items["iron"]}, --鉄
        {items["burning_furnace"],items["apple"],items["baked_apple"]}, --焼きリンゴ
        {items["burning_furnace"],items["mushroom"],items["baked_mushroom"]}, --焼きキノコ
        {items["burning_furnace"],items["sand"],items["glass"]}, --ガラス
        {items["trunk"],items["axe"],items["log"]}, --丸太
        {items["log"],items["axe"],items["plank"]}, --木材
        {items["plank"],items["plank"],items["workpiece"]}, --加工材
        {items["workpiece"],items["workpiece"],items["chest"]}, --箱
        {items["stick"],items["axe"],items["sharp_stick"]}, --とがった枝
        {items["cottonflower"],items["axe"],items["cotton"]}, --綿
        {items["cotton"],items["sharp_stick"],items["string"]}, --糸
        {items["camellia"],items["axe"],items["pink_dye"]}, --染料(桃)
        {items["chrysanthemum"],items["axe"],items["white_dye"]}, --染料(白)
        {items["dahilia"],items["axe"],items["red_dye"]}, --染料(赤)
        {items["daisy"],items["axe"],items["blue_dye"]}, --染料(青)
        {items["freesia"],items["axe"],items["yellow_dye"]}, --染料(黄)
        {items["gentian"],items["axe"],items["purple_dye"]}, --染料(紫)
        {items["iron"],items["handle"],items["hammer"]}, --金槌
        {items["iron"],items["hammer"],items["iron_plate"]}, --鉄板
        {items["iron_plate"],items["hammer"],items["screw"]}, --ねじ
        {items["burning_furnace"],items["iron_plate"],items["iron_rod"]}, --鉄の棒
        {items["iron_rod"],items["hammer"],items["blade"]} ,--刃
        {items["blade"],items["handle"],items["knife"]}, --ナイフ
        {items["log"],items["knife"],items["bark"]}, --樹皮
        {items["bark"],items["axe"],items["pulp"]}, --パルプ
        {items["burning_furnace"],items["pulp"],items["paper"]}, --紙
        {items["workpiece"],items["knife"],items["gear"]}, --歯車
        {items["gear"],items["screw"],items["gear_screw"]}, --部品
        {items["chest"],items["gear_screw"],items["clock"]}, --時計
        {items["chest"],items["iron_rod"],items["loom"]}, --織機
        {items["string"],items["loom"],items["shirt"]}, --服
        {items["blue_dye"],items["pink_dye"],items["mixed_dye1"]}, --混合染料1
        {items["mixed_dye1"],items["red_dye"],items["mixed_dye2"]}, --混合染料2
        {items["mixed_dye2"],items["yellow_dye"],items["mixed_dye3"]}, --混合染料3
        {items["mixed_dye3"],items["purple_dye"],items["mixed_dye4"]}, --混合染料4
        {items["mixed_dye4"],items["white_dye"],items["mixed_dye5"]}, --混合染料5
        {items["shirt"],items["mixed_dye3"],items["colored_shirt"]}, --色付きの服
        {items["rounded_stone"],items["workpiece"],items["foundation"]}, --土台
        {items["origin_furnace"],items["origin_furnace"],items["tombstone"]}, --墓石
        {items["foundation"],items["tombstone"],items["tomb"]}, --墓
        {items["blade"],items["hammer"],items["origin_awl"]}, --千枚通しの元
        {items["origin_awl"],items["handle"],items["awl"]},--千枚通し
        {items["tomb"],items["awl"],items["cat_tomb"]}, --ネコの墓
        {items["mixed_dye5"],items["glass"],items["stained_glass"]}, --ステンドグラス
        {items["string"],items["origin_pickaxe"],items["swift"]}, --俊足

        {items["stick"],items["stick"],items["completeitem"]} --納品アイテム
      }

local tools = {"axe", "pickaxe", "knife", "hammer", "awl", "flint", "sharp_stick", "loom", "shovel"}

--道具かどうかチェックする
function check_tool(value)
  for i = 1,#tools, 1 do
    if value == tools[i] then
      return true
    end
  end
  return false
end

--アイテムの存在を確かめる
function is_exists(value)
  local s = english_to_japanese(value)
  if s == "none" then
    return false
  else
    return true
  end
end

-- 二つのアイテムから完成後のアイテム名を返す
function get_finished_item(first , second)
  first = english_to_japanese(first)
  second = english_to_japanese(second)
  for i = 1,#recipes, 1 do --最初のアイテムを取得
    if (recipes[i][1] == first and recipes[i][2] == second) or (recipes[i][1] == second and recipes[i][2] == first) then --ゲットしたアイテムのレシピ番号を取得
      return japanese_to_english(recipes[i][3]) --生成物を返す
    end
  end
  return "error"
end

-- 英語名を日本語名にして返す
function english_to_japanese(name)
  for key, value in pairs(items) do
    if key == name then
      return value
    end
  end
  return "none"
end

-- 日本語名を英語にして返す
function japanese_to_english(name)
  for key, value in pairs(items) do
    if value == name then
      return key
    end
  end
  return "none"
end
