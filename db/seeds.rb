puts "🌱 Seeding spices..."

# Seed your database here

Attack.create name: 'omoplata_classic', result: 'submission', notes: 'shin-em in the adams apple', image: 'https://64.media.tumblr.com/7f0fe5abb35d9e01a2c01d5a46c88a30/tumblr_nhbayeZqrt1rvcjd7o2_250.gifv'

Attack.create name: 'triangle_choke', result: 'submission', notes: 'control the head all the while', image: 'https://c.tenor.com/EmV3_H1f0EkAAAAC/triangle-choke.gif'

Defense.create name: "posture_up", notes: "Base", result: "closed_guard", stage: "early", attack_id: Attack.find_by(name:'triangle_choke').id

Defense.create name: "shoulder_roll_defense", notes: "Go Early", result: "closed_guard", stage: "mid", attack_id: Attack.find_by(name:'omoplata_classic').id

Defense.create name: "hide_your_arm", notes: "Base", result: "side_control", stage: "mid", attack_id: Attack.find_by(name:'triangle_choke').id

Defense.create name: "pull_arm_out", notes: "Go Early", result: "open_guard", stage: "early", attack_id: Attack.find_by(name:'omoplata_classic').id




puts "✅ Done seeding!"
