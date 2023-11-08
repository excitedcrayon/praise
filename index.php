<?php require_once 'includes/header.php'; ?>
<div class="page-header">
    <h1>JRM Praise Songs</h1>
    <small>Hebrews 2:12 KJV </small>
</div>
<div class="page-search">
    <input type="text" name="search" placeholder="Search songs....">
</div>
<button class="btn-mobile-return">View Player</button>
<div class="page-player">
    <div class="page-audio">
        <img src="res/img/logo.jpeg" alt="JRM Logo">
        <div class="audio-controls">
            <div class="random">
                <audio id="audio"></audio>
            </div>
            <div class="audio-attribs">
                <span class="audio-title"></span>
                <small class="audio-artist"></small>
            </div>
            <div class="controls-top">
                <input id="progress" type="range">
            </div>
            <div class="controls-middle">
                <span class="time-current">0:00</span>
                <span class="time-duration">0:00</span>
            </div>
            <div class="controls-bottom">
                <button class="btn-previous"></button>
                <button class="btn-play-pause"></button>
                <button class="btn-next"></button>
            </div>
        </div>
    </div>
    <div class="page-audio-list"></div>
</div>
<?php require_once 'includes/footer.php'; ?>