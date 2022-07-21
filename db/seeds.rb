puts "🌱 Seeding spices..."
#create a position called "closed_guard"
Position.create name: "closed_guard", notes:"hips up. Its all about grip fighting"

#create an attack called "triangle_choke" that belongs to closed_guard
Attack.create name: 'triangle_choke', result: 'submission',position_id: Position.find_by(name: "closed_guard").id, notes: 'squeeze your ankles', image: 'https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1240/MTc0NDA5NTYwODUyMjExMDQ4/scissor-guard-triangle-set-ups-a-bjj-tutorial.webp'

#create a defense called "posture_up" that belongs to the attack "triangle_choke"
Defense.create name: "posture_up", attack_id: Attack.find_by(name:'triangle_choke').id, result: "closed_guard", notes: "lean way back"

#create a defense called "hide_arm" that belongs to the attack "hide_arm"
Defense.create name: "hide_arm", attack_id: Attack.find_by(name:'triangle_choke').id, result: "closed_guard", notes: "swim arm back in"

#create an attack called "omoplata" that belongs to closed_guard
Attack.create name: 'omoplata', position_id: Position.find_by(name: "closed_guard").id, image: 'https://jiujitsutimes.com/wp-content/uploads/Screenshot-441.png', notes: "shin em in the neck", result: 'submission'

#create a defense called "shoulder_roll" that belongs to the attack "omoplata"
Defense.create name: "shoulder_roll", attack_id: Attack.find_by(name:'omoplata').id, result: "side_control", notes: "go early"

#create a defense called "duck_under_leg" that belongs to the attack "omoplata"
Defense.create name: "duck_under_leg", attack_id: Attack.find_by(name:'omoplata').id, result: "closed_guard", notes: "go early"


#Create another position called "open_guard"
Position.create name:"open_guard", notes:"Best Defense is preparadeness to block side control"

#create an attack called "scissor-sweep" that belongs to open_guard
Attack.create name: 'scissor-sweep', position_id: Position.find_by(name: "open_guard").id, notes: "all about grips", image: 'https://i.ytimg.com/vi/RfbK-KofmX0/maxresdefault.jpg', result: "mount"

#create a defense called "post_with_arm" that belongs to the attack 'scissor-sweep'
Defense.create name: "post_with_arm", attack_id: Attack.find_by(name:'scissor-sweep').id, result: "open_guard", notes: "must have hand free"

#create a defense called "post_with_leg" that belongs to the attack 'scissor-sweep'
Defense.create name: "post_with_leg", attack_id: Attack.find_by(name:'scissor-sweep').id, result: "open_guard", notes: "all about that base"

#create an attack called "over_the_leg_guard_pass" that belongs to open_guard
Attack.create name: 'over_the_leg_guard_pass', position_id: Position.find_by(name: "open_guard").id, image: 'https://jiujitsu-news.com/wp-content/uploads/2022/04/the-complete-guide-to-the-knee-slice-pass-in-bjj.jpg', result: 'side_control', notes: 'stay tight and kick your knee back'

#create a defense called "shrimp_out" that belongs to the attack 'over_the_leg_guard_pass'
Defense.create name: "shrimp_out", attack_id: Attack.find_by(name:'over_the_leg_guard_pass').id, result: "closed_guard", notes: "track the bicep, grab your thigh"

#create a defense called "pull_closed_guard" that belongs to the attack 'over_the_leg_guard_pass'
Defense.create name: "pull_closed_guard", attack_id: Attack.find_by(name:'over_the_leg_guard_pass').id, result: "closed_guard", notes: "track the bicep, grab your thigh"


# Seed your database here

# Position.create name:"closed_guard", notes:"hips up. Its all about grip fighting"
# Position.create name:"open_guard", notes:"hips up. Its all about grip fighting"
# Position.create name:"half_guard", notes:"hips up. Its all about grip fighting"
# Position.create name:"side_control", notes:"hips up. Its all about grip fighting"
# Position.create name:"mount", notes:"hips up. Its all about grip fighting"
# Position.create name:"knee_on_belly", notes:"hips up. Its all about grip fighting"
# Position.create name:"north_south", notes:"hips up. Its all about grip fighting"







# Attack.create name: 'omoplata_classic', result: 'submission', notes: 'shin-em in the adams apple', image: 'https://jiujitsutimes.com/wp-content/uploads/Screenshot-441.png', position_id: Position.find_by(name: "closed_guard").id

# Attack.create name: 'triangle_choke', result: 'submission', notes: 'control the head all the while', image: 'https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1240/MTc0NDA5NTYwODUyMjExMDQ4/scissor-guard-triangle-set-ups-a-bjj-tutorial.webp',
# position_id: Position.find_by(name: "closed_guard").id

# Defense.create name: "posture_up", notes: "Base", result: "closed_guard", stage: "early", attack_id: Attack.find_by(name:'triangle_choke').id

# Defense.create name: "shoulder_roll_defense", notes: "Go Early", result: "closed_guard", stage: "mid", attack_id: Attack.find_by(name:'omoplata_classic').id

# Defense.create name: "hide_your_arm", notes: "Base", result: "side_control", stage: "mid", attack_id: Attack.find_by(name:'triangle_choke').id

# Defense.create name: "pull_arm_out", notes: "Go Early", result: "open_guard", stage: "early", attack_id: Attack.find_by(name:'omoplata_classic').id


# Sequence.generate



puts "✅ Done seeding!"
