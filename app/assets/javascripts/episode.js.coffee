if $('html').is '.episodes.show'
	players = []

	window.onYouTubePlayerReady = (playerId) ->
		$player = $("##{playerId}")
		player = $player[0]
		videoId = $player.parent().data 'video-id'

		players.push player

		player.addEventListener 'onStateChange', 'handleStateChange'

		offset = parseFloat($player.parent().data('offset')) || 0
		player.loadVideoById videoId, offset

	window.handleStateChange = (state) ->
		unless players.length == $('.perspective').length
			return

		#playing
		if state == 1
			_.defer ->
				allPlaying = _.all players, (player) ->
					player.getPlayerState() == 1

				unless window.playersReady && allPlaying
					#$('.play-pause.paused').trigger 'click'
					_.each players, (player) ->
						player.pauseVideo()

		#paused
		if state == 2
			_.defer ->
				allPaused = _.all players, (player) ->
					player.getPlayerState() == 2

				if allPaused
					_.each players, (player, i) ->
						#player.playVideo()

						# unless i == 0
						# 	player.mute()

		#unstarted
		if state == -1
			_.defer ->
				allReady = _.all players, (player) ->
					player.getPlayerState() == -1 or player.getPlayerState() == 5

				if allReady
					window.playersReady = true

		#buffering
		if state == 3
			#console.warn 'shouldpause'
			window.playersReady = false
			_.each players, (player) ->
				$('.play-pause').trigger 'pause'

	window.onStateChange = (a, b, c) ->
		#console.log 'state!', a, b, c

	$(document).ready ->
		perspectives = $('.perspective')
		unique = 1
		videoWidth = $(window).width() / 2
		videoHeight = videoWidth / 1.7777777778

		#play/pause button

		$('.play-pause').on 'pause', (e) ->
			el = $(this)

			el.removeClass('playing').addClass('paused').text('>')

			_.each players, (player) ->
				player.pauseVideo()

		$('.play-pause').on 'play', (e) ->
			el = $(this)
			el.removeClass('paused').addClass('playing').text('|')

			_.each players, (player, i) ->
				player.playVideo()

				unless i == 0
					player.mute()

		$('.play-pause').on 'click', (e) ->
			el = $(this)

			if el.hasClass('paused') && window.playersReady
				console.log 'shouldplay'
				el.trigger 'play'
			else if el.hasClass 'playing'
				console.log 'shouldpause'
				el.trigger 'pause'

		#forward button
		$('.forward').on 'click', (e) ->
			currentOffset = parseFloat($(players[0]).parent().data('offset')) || 0
			currentTime = players[0].getCurrentTime() - currentOffset
			newTime = currentTime + 10

			_.each players, (player) ->
				offset = parseFloat($(player).parent().data('offset')) || 0

				$('.play-pause').trigger 'pause'
				player.seekTo newTime + offset

		#backward button
		$('.backward').on 'click', (e) ->
			currentOffset = parseFloat($(players[0]).parent().data('offset')) || 0
			currentTime = players[0].getCurrentTime() - currentOffset
			newTime = currentTime - 10

			_.each players, (player) ->
				offset = parseFloat($(player).parent().data('offset')) || 0

				$('.play-pause').trigger 'pause'
				player.seekTo newTime + offset

		perspectives.each (i, perspective) ->
			perspective = $(perspective)
			theId = "perspective-#{unique++}"

			perspective.find('.video').attr 'id', theId

			swfobject.embedSWF "http://www.youtube.com/apiplayer?enablejsapi=1&version=3&playerapiid=#{theId}
", theId, videoWidth, videoHeight, '8', null, null, {allowScriptAccess: 'always'}

#http://www.youtube.com/apiplayer?enablejsapi=1&playerapiid=ytplayer
