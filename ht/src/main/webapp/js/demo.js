function myshow(id){
    var lyric = [];
//    歌曲路径数组
//    var musicSrcs = [
//        'music/yixiaoqingcheng.mp3',
//
//    ];
//    var lyricSrcs = [
////        歌词路径数组
//        'music/yixiaoqingcheng.lrc',
//    ];


    function palyMusic(index) {
        $('.music-play-icon').css('display','none');
        $('.music-part .music-play-icon').eq(index).css('display','block');
        $('#player_1').attr('src', musicSrcs[index]);
    }

    $.get(lyricSrcs[id], function(lrc) {
        lyric = parseLyric(lrc);
//	 	debugger
        loadLyric(lyric);

        palyMusic(id);
    });

    function loadLyric(lyric) {
        var lyricContent = $('#show-lrc-content');
//        清空之前的歌词文本
        $('#show-lrc-content').html("");
        _.each(lyric, function(content, index, $){
            lyricContent.append('<p name="lyric" id=' + index + '>' + content[1] + '</p>');
        });
    }

    document.getElementById('player_1').ontimeupdate = function(e) {
        if(this.ended){
            palyMusic(id);
            if(id+1<$(".m_list").length){
                $('#show-lrc-content').html("");
                show(id);
                $("#music_info").html($(".m_list").eq(id+1).html());
            }else{
                show(0);
                $("#music_info").html($(".m_list").eq(0).html());
            }

        }
        for (var i = 0;i < lyric.length; i++) {
            if (this.currentTime > lyric[i][0] - 1) {
                $('p[name=lyric]').css('color', '#fff');
                $('p#'+i).css('color', '#2DC17A');
                $('.lyric-content').css('top',210 - 30 * (i + 1));
            };
        };

    }

    function parseLyric(lyric) {
        var lines = lyric.split('\n'),
            pattern = /\[\d{2}:\d{2}.\d{2}\]/g,
            result = [];
        while (!pattern.test(lines[0])) {
            lines = lines.slice(1);
        };
        lines[lines.length - 1].length === 0 && lines.pop();
        _.each(lines, function(data, step){
            var index = data.indexOf(']');
            var time = data.substring(0, index+1),
                value = data.substring(index+1);
            var timeString = time.substring(1, time.length-2);
            var timeArr = timeString.split(':');
            result.push([parseInt(timeArr[0], 10) * 60 + parseFloat(timeArr[1]), value]);

        });
        result.sort(function(a, b) {
            return a[0] - b[0];
        });
        return result;
    }
}




function show(id,event){
    id=id+1;
    console.log(musicSrcs.length);
    $("#music_info").html($(event).html());
    var lyric = [];
//    歌曲路径数组
//    var musicSrcs = [
//        'music/yixiaoqingcheng.mp3',
//
//    ];
//    var lyricSrcs = [
////        歌词路径数组
//        'music/yixiaoqingcheng.lrc',
//    ];


    function palyMusic(index) {
        $('.music-play-icon').css('display','none');
        $('.music-part .music-play-icon').eq(index).css('display','block');
        $('#player_1').attr('src', musicSrcs[index]);
    }

    $.get(lyricSrcs[id], function(lrc) {
        lyric = parseLyric(lrc);
//	 	debugger
        loadLyric(lyric);

        palyMusic(id);
    });

    function loadLyric(lyric) {
        var lyricContent = $('#show-lrc-content');
//        清空之前的歌词文本
        $('#show-lrc-content').html("");
        _.each(lyric, function(content, index, $){
            lyricContent.append('<p name="lyric" id=' + index + '>' + content[1] + '</p>');
        });
    }

    document.getElementById('player_1').ontimeupdate = function(e) {
        if(this.ended){
            palyMusic(id);
            if(id+1<$(".m_list").length){
                $('#show-lrc-content').html("");
                show(id);
                $("#music_info").html($(".m_list").eq(id+1).html());
            }else{
                show(0);
                $("#music_info").html($(".m_list").eq(0).html());
            }

        }
        for (var i = 0;i < lyric.length; i++) {
            if (this.currentTime > lyric[i][0] - 1) {
                $('p[name=lyric]').css('color', '#fff');
                $('p#'+i).css('color', '#2DC17A');
                $('.lyric-content').css('top',210 - 30 * (i + 1));
            };
        };

    }

    function parseLyric(lyric) {
        var lines = lyric.split('\n'),
            pattern = /\[\d{2}:\d{2}.\d{2}\]/g,
            result = [];
        while (!pattern.test(lines[0])) {
            lines = lines.slice(1);
        };
        lines[lines.length - 1].length === 0 && lines.pop();
        _.each(lines, function(data, step){
            var index = data.indexOf(']');
            var time = data.substring(0, index+1),
                value = data.substring(index+1);
            var timeString = time.substring(1, time.length-2);
            var timeArr = timeString.split(':');
            result.push([parseInt(timeArr[0], 10) * 60 + parseFloat(timeArr[1]), value]);

        });
        result.sort(function(a, b) {
            return a[0] - b[0];
        });
        return result;
    }
}









window.AudioContext = window.AudioContext  || window.mozAudioContext || window.webkitAudioContext;

window.onload = function() {
    var audio = document.getElementById('player_1');
    var ctx = new AudioContext();
    var analyser = ctx.createAnalyser();
    var audioSrc = ctx.createMediaElementSource(audio);
    audioSrc.connect(analyser);
    analyser.connect(ctx.destination);
    // we could configure the analyser: e.g. analyser.fftSize (for further infos read the spec)
    // analyser.fftSize = 64;
    // frequencyBinCount tells you how many values you'll receive from the analyser
    var frequencyData = new Uint8Array(analyser.frequencyBinCount);

    // we're ready to receive some data!
    var canvas = document.getElementById('canvas'),
        cwidth = canvas.width,
        cheight = canvas.height - 2,
        meterWidth = 10, //width of the meters in the spectrum
        gap = 2, //gap between meters
        capHeight = 2,
        capStyle = '#fff',
        meterNum = 800 / (10 + 2), //count of the meters
        capYPositionArray = []; ////store the vertical position of hte caps for the preivous frame
    ctx = canvas.getContext('2d'),
        gradient = ctx.createLinearGradient(0, 0, 0, 300);
    gradient.addColorStop(1, '#2DC17A');
    gradient.addColorStop(0.5, '#fff');
    gradient.addColorStop(0, '#f00');
    function intn(){
        prepareAPI();
        renderFrame();
    }
    function prepareAPI() {
        //fix browser vender for AudioContext and requestAnimationFrame
        window.AudioContext = window.AudioContext || window.webkitAudioContext || window.mozAudioContext || window.msAudioContext;
        window.requestAnimationFrame = window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.msRequestAnimationFrame;
        window.cancelAnimationFrame = window.cancelAnimationFrame || window.webkitCancelAnimationFrame || window.mozCancelAnimationFrame || window.msCancelAnimationFrame;

    }
    // loop
    function renderFrame() {
        var array = new Uint8Array(analyser.frequencyBinCount);
        analyser.getByteFrequencyData(array);
        var step = Math.round(array.length / meterNum); //sample limited data from the total array
        ctx.clearRect(0, 0, cwidth, cheight);
        for (var i = 0; i < meterNum; i++) {
            var value = array[i * step];
            if (capYPositionArray.length < Math.round(meterNum)) {
                capYPositionArray.push(value);
            };
            ctx.fillStyle = capStyle;
            //draw the cap, with transition effect
            if (value < capYPositionArray[i]) {
                ctx.fillRect(i * 12, cheight - (--capYPositionArray[i]), meterWidth, capHeight);
            } else {
                ctx.fillRect(i * 12, cheight - value, meterWidth, capHeight);
                capYPositionArray[i] = value;
            };
            ctx.fillStyle = gradient; //set the filllStyle to gradient for a better look
            ctx.fillRect(i * 12 /*meterWidth+gap*/ , cheight - value + capHeight, meterWidth, cheight); //the meter
        }
        requestAnimationFrame(renderFrame);
    }
    renderFrame();
    audio.play();


};


