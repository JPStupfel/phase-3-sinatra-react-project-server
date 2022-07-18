puts "🌱 Seeding spices..."

# Seed your database here

Position.create name:"closed_guard", notes:"hips up. Its all about grip fighting"

Attack.create name: 'omoplata_classic', result: 'submission', notes: 'shin-em in the adams apple', image: 'https://jiujitsutimes.com/wp-content/uploads/Screenshot-441.png', position_id: Position.find_by(name: "closed_guard").id

Attack.create name: 'triangle_choke', result: 'submission', notes: 'control the head all the while', image: 'https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_1240/MTc0NDA5NTYwODUyMjExMDQ4/scissor-guard-triangle-set-ups-a-bjj-tutorial.webp',
position_id: Position.find_by(name: "closed_guard").id

Defense.create name: "posture_up", notes: "Base", result: "closed_guard", stage: "early", attack_id: Attack.find_by(name:'triangle_choke').id

Defense.create name: "shoulder_roll_defense", notes: "Go Early", result: "closed_guard", stage: "mid", attack_id: Attack.find_by(name:'omoplata_classic').id

Defense.create name: "hide_your_arm", notes: "Base", result: "side_control", stage: "mid", attack_id: Attack.find_by(name:'triangle_choke').id

Defense.create name: "pull_arm_out", notes: "Go Early", result: "open_guard", stage: "early", attack_id: Attack.find_by(name:'omoplata_classic').id




puts "✅ Done seeding!"
