gui_sprite = false
player_alive = true
having_item_name = "none"
having_item_name_old = "none"
items_id_type = {}
collision_manage = {}
menu_status = {}
gamestatus = false
mission_cleared = false
mission_item_list = {
  {"plank", "cotton", "sand", "yellow_dye"},--easy
  {"iron", "glass", "mixed_dye3", "iron_plate"},--normal
  {"knife", "chest", "mixed_dye5", "loom"},--hard
  {"stained_glass","colored_shirt","paper","clock","cat_tomb"}--extreme
} --,""
mission_item_cleared=1
difficulty = 0 --1:easy 2:normal 3:hard 4: extreme 5:impossible 5:tutorial
difficulty_names = {"EASY", "NORMAL", "HARD", "EXTREME", "IMPOSSIBLE", "TUTORIAL"}

--アイテムを持っているかどうか確認
function get_gui_sprite()
  return gui_sprite
end

--アイテムを持っているかどうか設定
function set_gui_sprite(value)
    gui_sprite = value
end

-- 持っているアイテムを設定
function set_having_item_name(value)
  having_item_name_old = having_item_name
  having_item_name = value
end

--hashを文字列に設定
function hash_to_string(value)
  string = ""
  string = string..value
  return string
end

--IDからアイテムの種類を確認
function get_items_id_to_type(name)
  for key,value in pairs(items_id_type) do
    if name == hype_brackets(key) then
      return value
    end
  end
  --登録されていないとき(初期状態で置いてあるとき)数字以降を削除した名前を返す
  return hype_numbers(name)
end

--IDにタイプを設定する
function set_items_id_to_type(id,value)
  id = hype_brackets(id)
  items_id_type[id] = value
end

--[]を削除
function hype_brackets(value)
  value = hash_to_string(value)
  return string.sub(string.gsub(string.gsub(value, "[[/]", ""), "[]]", ""), 0, #value)
end

--引数から数字の後を削除
function hype_numbers(value)
  value = hype_brackets(value)
  local flag = false
  local chars = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
  local i, j, k
  for i = 1, #value do
    if flag then break end
    for j = 1, #chars do
      if string.sub(value, i, i) == chars[j] then
        flag = true
        break
      end
    end
    k = i - 1
  end
  return string.sub(value, 1, k)
end

--GUIを開いているか確認する
function check_gui()
  if menu_status["menu_open"] or menu_status["recipebook"] or menu_status["manual"] or menu_status["dead"] or menu_status["clear"] or menu_status["cheat"] then
    return true
  else
    return false
  end
end
