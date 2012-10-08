# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

deathly = Series.create({title: 'OOG: Deathly Trails'})

deathlyE1 = Episode.create({title: 'Episode 1', series: deathly})
Perspective.create({user: 'Guude', video_id: 'cSiHXPuEmhY', start_offset: 0, episode: deathlyE1})
Perspective.create({user: 'Bdubs', video_id: 'whL8jipqzgU', start_offset: 0, episode: deathlyE1})

deathlyE2 = Episode.create({title: 'Episode 2', series: deathly})
Perspective.create({user: 'Guude', video_id: 'bPfwlUdvS-s', start_offset: 0, episode: deathlyE2})
Perspective.create({user: 'Bdubs', video_id: 'unvi61-IOR4', start_offset: 27, episode: deathlyE2})

deathlyE3 = Episode.create({title: 'Episode 3', series: deathly})
Perspective.create({user: 'Guude', video_id: '3e2ZCI_qIxE', start_offset: 0, episode: deathlyE3})
Perspective.create({user: 'Bdubs', video_id: '7uFLXfxaoSk', start_offset: 0, episode: deathlyE3})

deathlyE4 = Episode.create({title: 'Episode 4', series: deathly})
Perspective.create({user: 'Guude', video_id: '0oE33azZqYg', start_offset: 0, episode: deathlyE4})
Perspective.create({user: 'Bdubs', video_id: 'RexBgQOJ0ZY', start_offset: 11, episode: deathlyE4})

deathlyE5 = Episode.create({title: 'Episode 5', series: deathly})
Perspective.create({user: 'Guude', video_id: 'oWtCltvw1h8', start_offset: 0, episode: deathlyE5})
Perspective.create({user: 'Bdubs', video_id: 'DfSK27rF7pI', start_offset: 0, episode: deathlyE5})

deathlyE6 = Episode.create({title: 'Episode 6', series: deathly})
Perspective.create({user: 'Guude', video_id: 'yRskXbLz_Yk', start_offset: 0, episode: deathlyE6})
Perspective.create({user: 'Bdubs', video_id: 'Ln033BAOcHA', start_offset: 25, episode: deathlyE6})

deathlyE7 = Episode.create({title: 'Episode 7', series: deathly})
Perspective.create({user: 'Guude', video_id: 'iBN1o07pc2k', start_offset: 0, episode: deathlyE7})
Perspective.create({user: 'Bdubs', video_id: 'tib50MGfi2I', start_offset: 23.5, episode: deathlyE7})

deathlyE8 = Episode.create({title: 'Episode 8', series: deathly})
Perspective.create({user: 'Guude', video_id: 'HHE57GQ_gBI', start_offset: 0, episode: deathlyE8})
Perspective.create({user: 'Bdubs', video_id: 'I70642v8N0c', start_offset: 0, episode: deathlyE8})

deathlyE9 = Episode.create({title: 'Episode 9', series: deathly})
Perspective.create({user: 'Guude', video_id: 'jgBq5IHdOV8', start_offset: 0, episode: deathlyE9})
Perspective.create({user: 'Bdubs', video_id: 'R0Xuhr_-qLg', start_offset: 22, episode: deathlyE9})

deathlyE10 = Episode.create({title: 'Episode 10', series: deathly})
Perspective.create({user: 'Guude', video_id: '9ay-w45Gd0w', start_offset: 3, episode: deathlyE10})
Perspective.create({user: 'Bdubs', video_id: '8BL4vnCutss', start_offset: 0, episode: deathlyE10})

deathlyE11 = Episode.create({title: 'Episode 11', series: deathly})
Perspective.create({user: 'Guude', video_id: 'K6f1x89bNsc', start_offset: 0, episode: deathlyE11})
Perspective.create({user: 'Bdubs', video_id: 'PJ7CBsXBXW0', start_offset: 47.5, episode: deathlyE11})

deathlyE12 = Episode.create({title: 'Episode 12', series: deathly})
Perspective.create({user: 'Guude', video_id: '5A-59b1kwyQ', start_offset: 0, episode: deathlyE12})
Perspective.create({user: 'Bdubs', video_id: 'p8gfW_DCYPk', start_offset: 11, episode: deathlyE12})

deathlyE13 = Episode.create({title: 'Episode 13', series: deathly})
Perspective.create({user: 'Guude', video_id: '-OdOm8AYYuw', start_offset: 0, episode: deathlyE13})
Perspective.create({user: 'Bdubs', video_id: 'xeIto4d1Yv4', start_offset: 0, episode: deathlyE13})

deathlyE14 = Episode.create({title: 'Episode 14', series: deathly})
Perspective.create({user: 'Guude', video_id: 'mbnCD1PW9TA', start_offset: 0, episode: deathlyE14})
Perspective.create({user: 'Bdubs', video_id: 'EM8XkRHs15U', start_offset: 20, episode: deathlyE14})

deathlyE15 = Episode.create({title: 'Episode 15', series: deathly})
Perspective.create({user: 'Guude', video_id: '1VVbjbxajHo', start_offset: 0, episode: deathlyE15})
Perspective.create({user: 'Bdubs', video_id: 'bYqSBnnBrVc', start_offset: 0, episode: deathlyE15})

deathlyE16 = Episode.create({title: 'Episode 16', series: deathly})
Perspective.create({user: 'Guude', video_id: 'ip3a_oPwLj4', start_offset: 0, episode: deathlyE16})
Perspective.create({user: 'Bdubs', video_id: 'IBNagQa2syA', start_offset: 22, episode: deathlyE16})

vinyl2 = Series.create({title: 'OOGE: Vinyl Fantasy II'})

vinyl2E1 = Episode.create({title: 'Episode 1', series: vinyl2})
Perspective.create({user: 'Etho', video_id: 'njw83bvCe-c', start_offset: 7.8, episode: vinyl2E1})
Perspective.create({user: 'Guude', video_id: 'EoCdtRIG64s', start_offset: 0, episode: vinyl2E1})
Perspective.create({user: 'Bdubs', video_id: 'rH4tiC91_bI', start_offset: 7.4, episode: vinyl2E1})