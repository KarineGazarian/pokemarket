import "bootstrap";
import {Howl, Howler} from 'howler';
import { pokebowl } from "./pokebowl";


if (document.querySelector(".pages.home")) {
  // var audio = new Audio('../songs/Pokemon.mp3');
  // audio.play();
    var audio = new Audio;

    function playSound() {
      audio.src = ('/audios/Pokemon.mp3');
      audio.play()
    }


   window.onload = playSound();
};





// ''
