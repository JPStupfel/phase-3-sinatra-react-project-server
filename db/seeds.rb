puts "🌱 Seeding spices..."

# Seed your database here

Attack.create name: 'omoplata_classic', result: 'submission', notes: 'shin-em in the adams apple'

Attack.create name: 'triangle_choke', result: 'submission', notes: 'control the head all the while'

Defense.create name: "posture_up", notes: "Base", result: "closed_guard", stage: "early", attack_id: Attack.find_by(name:'triangle_choke').id

Defense.create name: "shoulder_roll_defense", notes: "Go Early", result: "closed_guard", stage: "mid", attack_id: Attack.find_by(name:'omoplata_classic').id




puts "✅ Done seeding!"
