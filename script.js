window.addEventListener('DOMContentLoaded', () => {
    init();
    getAudioTracks();
    playPause();
    previousSong();
    nextSong();
    autoPlayNextSong();
    animateCurrentTime();
    scrubThroughProgressBar();
    mobilePotraitControls();

    setTimeout(() => {
        playSelectedTrack();
        searchFilterTracks();
    }, 500);
});

window.addEventListener('resize', () => {
    mobilePotraitControls();
});

let index = 0;
let songsList = [];
let songsTitle = [];
let songsArtist = [];

const INTERVAL = 500;
const current = 'current';

const search = document.querySelector('[name="search"]');
const audio = document.querySelector('#audio');
const audioTitle = document.querySelector('.audio-title');
const audioArtist = document.querySelector('.audio-artist');
const progress = document.querySelector('#progress');
const timeCurrent = document.querySelector('.time-current');
const timeDuration = document.querySelector('.time-duration');
const btnPrevious = document.querySelector('.btn-previous');
const btnPlayPause = document.querySelector('.btn-play-pause');
const btnNext = document.querySelector('.btn-next');
const pagePlayer = document.querySelector('.page-player');
const btnMobileReturn = document.querySelector('.btn-mobile-return');

const init = () => {
    audio.addEventListener('loadedmetadata', () => {
        progress.max = audio.duration;
        progress.value = audio.currentTime;
    });
};
const getAudioTracks = () => {
    const URL = `${location.origin}/praise/data.php`;
    const pageAudioList = document.querySelector('.page-audio-list');

    fetch(URL)
    .then(response => response.json())
    .then((data) => {
        if(data.length > 0){
            data.forEach((audio) => {

                let formatTitleHyphen = audio.title.replace(/-/g, " ");
                let formatTitleExtension = formatTitleHyphen.replace(/.mp3/g, "");

                let track = document.createElement('div');
                track.className = 'track';
                track.setAttribute('data-audio-id', audio.id);
                track.setAttribute('data-title', formatTitleExtension);
                track.innerHTML = `
                    <span class="title" title="${formatTitleExtension}">${formatTitleExtension}</span> - <small class="artist">${audio.artist}</small>
                `;
                pageAudioList.appendChild(track);

                songsList.push(audio.file);
                songsTitle.push(formatTitleExtension);
                songsArtist.push(audio.artist);
            });
        }
    })
    .catch((e) => console.log(e));

    setTimeout(() => {
        audio.src = songsList[index];
        audioTitle.textContent = songsTitle[index];
        audioArtist.textContent = songsArtist[index];
    }, INTERVAL);
};
const playPause = () => {
    btnPlayPause.addEventListener('click', () => {
        btnPlayPause.classList.toggle('playing');
        if(btnPlayPause.classList.contains('playing')){
            audio.play();
        }else{
            audio.pause();
        }
    });
};
const previousSong = () => {
    btnPrevious.addEventListener('click', () => {
        index--;
        animatePlayPauseButton();
        setCurrentSong(index);
    });
}
const nextSong = () => {
    btnNext.addEventListener('click', () => {
        index++;
        animatePlayPauseButton();
        setCurrentSong(index);
    });
}
const animatePlayPauseButton = () => {
    btnPlayPause.classList.add('playing');
};
const autoPlayNextSong = () => {
    audio.addEventListener('ended', () => {
        index++;
        setCurrentSong(index);
    });
}
const setCurrentSong = (index) => {
    if(index <= 0){
        index = 0;
    }else if(index > songsList.length - 1){
        index = songsList.length - 1;
    }
    audio.src = songsList[index];
    audioTitle.textContent = songsTitle[index];
    audioArtist.textContent = songsArtist[index];
    audio.play();

    setTimeout(() => {
        const tracks = document.querySelectorAll('.track');
        clearCurrentTrackSelector();
        tracks[index].classList.add(current);
    }, INTERVAL);
};
const playSelectedTrack = () => {
    
    const tracks = document.querySelectorAll('.track');
    tracks[index].classList.add(current);

    tracks.forEach((track) => {
        let id = track.getAttribute('data-audio-id');
        track.addEventListener('click', () => {
            btnPlayPause.classList.add('playing');
            
            clearCurrentTrackSelector();
            track.classList.add(current);

            index = parseInt(id);
            setCurrentSong(index - 1);
        });
    });
};
const animateCurrentTime = () => {
    audio.addEventListener('play', () => {
        setInterval(() => {
            progress.value = audio.currentTime;
            timeCurrent.textContent = formatDuration(audio.currentTime);
            timeDuration.textContent = formatDuration(audio.duration);
        }, INTERVAL);
    });
};
const clearCurrentTrackSelector = () => {
    const tracks = document.querySelectorAll('.track');
    tracks.forEach((track) => {
        track.classList.remove(current);
    });
}
const formatDuration = (time) => {
    let min = Math.floor(time / 60);
    if (min < 10) {
        min = `0${min}`;
    }
    
    let second = Math.floor(time % 60);
    if (second < 10) {
        second = `0${second}`;
    }
    return `${min}:${second}`;
};
const scrubThroughProgressBar = () => {
    progress.addEventListener('change', () => {
        audio.play();
        audio.currentTime = progress.value;
    });
}
const searchFilterTracks = () => {
    const tracks = document.querySelectorAll('.track');
    search.addEventListener('keyup', () => {
        let searchValue = search.value.toLowerCase();
        tracks.forEach((track) => {
            let trackTextContent = track.textContent || track.innerHTML;
            if(trackTextContent.toLowerCase().indexOf(searchValue) > -1){
                track.style.display = '';
            }else{
                track.style.display = 'none';
            }
        });
    });
};
const mobilePotraitControls = () => {
    if(window.matchMedia("(max-width: 767px) and (orientation: portrait)").matches){
        
        setTimeout(() => {
            let tracks = document.querySelectorAll('.track');
            tracks.forEach((track) => {
                track.addEventListener('click', () => {
                    mobileAnimations();
                    toggleButtonText();
                });
            });
        }, INTERVAL);

        btnMobileReturn.addEventListener('click', () => {
            toggleMobileAnimations();
            toggleButtonText();
        });

    }

    if(window.matchMedia("(max-width: 1000px) and (orientation: landscape)").matches){

        setTimeout(() => {
            let tracks = document.querySelectorAll('.track');
            tracks.forEach((track) => {
                track.addEventListener('click', () => {
                    mobileAnimations();
                    toggleButtonText();
                });
            });
        }, INTERVAL);

        btnMobileReturn.addEventListener('click', () => {
            toggleMobileAnimations();
            toggleButtonText();
        });

    }
}
const mobileAnimations = () => {
    pagePlayer.classList.add('show-audio-player');
}
const toggleMobileAnimations = () => {
    pagePlayer.classList.toggle('show-audio-player');
}
const toggleButtonText = () => {
    if(btnMobileReturn.textContent === 'View Player'){
        btnMobileReturn.textContent = 'View List';
    }else{
        btnMobileReturn.textContent = 'View Player'
    }
};