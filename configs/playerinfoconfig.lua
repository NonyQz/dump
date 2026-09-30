
--职业专精属性
local playerProfessionAbility = 
{	--职业(刀,枪,杖,弓,锤,扇) = 专精
    [1] = "Fire",
	[2] = "Wind",
	[3] = "Water",
	[4] = "Thunder",
	[5] = "Wind",
	[6] = "Fire",
	[7] = "Water",

}
--特殊属性描述
local specialAbilityDesc = 
{
	Gound_ComboRate = "打出暴擊傷害的幾率，由暴擊等級決定，實際幾率會計算對方的暴擊抵抗。",
	Gound_ComboResistRate = "減少受到暴擊的機率，由暴擊抵抗等級決定。",
	Gound_DeComboDamage = "打出破招傷害的機率，由破招等級決定。",
	Gound_ComboDamage = "觸發格擋效果的機率，減少受到的傷害，由格擋等級決定。",
	Gound_DamagePlus = "增加對目標造成的總傷害比例。",
	Gound_DeDamage = "減少受到目標造成的總傷害比例。",
	Gound_VertigoResist = "抵抗眩暈的機率，觸發效果時可不受眩暈控制。",
	Gound_PhysicalResist = "抵抗定身的機率，觸發效果時可不受定身控制。",
	Gound_SilentResist = "抵抗沉默的機率，觸發效果時可不受沉默控制。",
	Gound_ComboBigger = "增加對目標造成的暴擊傷害比例。",
	Gound_ComboSmaller = "減少受到目標造成的暴擊傷害比例。",
}
return 
{
     playerProfessionAbility = playerProfessionAbility,
	 specialAbilityDesc = specialAbilityDesc,
}