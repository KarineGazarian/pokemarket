import {Howl, Howler} from 'howler';
const pokebowl = () => {

(function(){

    window.waitForSong = function() {

        document.body.onclick = function(){};

        window.playAnimation = function() {

            var stage = document.querySelectorAll( ".pokonami" )[0];

            stage.innerHTML = `
                <i class="sprite ash">
                    <i></i> <quote class="exclamation"></quote>
                </i>
                <i class="sprite pokemon pikachu">
                    <i></i> <quote class="love"></quote>
                </i>
                <i class="sprite pokemon togepi move">
                    <i></i> <quote class="love"></quote>
                </i>
                <div class="pokemons">
                </div>
            `;

            var pokemons = {
                common: [

                    "pidgey",
                    "spearow",
                    "nidoran-f",
                    "nidoran-m",
                    "rattata",
                    "sentret",
                    "oddish",
                    "geodude",
                    "mareep"

                ],

                uncommon: [

                    "ekans",
                    "sandshrew",
                    "bellsprout",
                    "caterpie",
                    "weedle",
                    "paras",
                    "zubat",
                    "venonat",
                    "vulpix",
                    "jigglypuff",
                    "ledyba",
                    "flaafy",
                    "clefairy",
                    "spinarak",
                    "marill",
                    "hoppip",
                    "growlithe",
                    "phanpy",
                    "cubone",
                    "poliwag",
                    "eevee",
                    "abra"

                ],

                rare: [

                    "beedrill",
                    "butterfree",
                    "pidgeotto",
                    "dratini",
                    "miltank"

                ],

                flying: "beedrill butterfree pidgeotto ledyba zubat"

            };

            function getY( pokemon ) {
                if( pokemons.flying.indexOf( pokemon ) >= 0 ) {
                    return (( Math.random() * 3 ) + 11).toFixed(2);
                } else {
                   return  (( Math.random() * 3 ) + 9).toFixed(2);
                }
            }

            function getZ( y ) {
                return Math.floor((20 - y) * 100);
            }

            function randomPokemon( type ) {
                return pokemons[type][ Math.floor( Math.random() * pokemons[type].length ) ];
            }

            function makePokemon( type ) {

                var xDelay = ( type === "common" ) ? 0 : ( type === "uncommon" ) ? 0.4 : 0.8;
                var delay = "-webkit-animation-delay: " + ( Math.random() * 1.7 + xDelay ).toFixed(3) + "s;";
                var pokemon = randomPokemon( type );
                var bottom = getY( pokemon );
                var y = "bottom: "+ bottom +"%;";
                var z = "z-index: "+ getZ( bottom ) + ";";
                var style = "style='"+delay+" "+y+" "+z+"'";

                return "" +
                    "<i class='sprite pokemon move " + pokemon + "' "+ style + ">" +
                        "<i style='"+ delay + "'></i>" +
                    "</i>";
            }

            var commons = Math.floor( Math.random() * 25 ) + 25;
            var uncommons = Math.floor( Math.random() * 5 ) + 8;
            var rares = 4;

            var container = document.querySelectorAll(".pokemons")[0];
            var horde = "";

            Array(50).fill(1).forEach(() => {
              horde += makePokemon( "common" );
            });

            Array(50).fill(1).forEach(() => {
              horde += makePokemon( "uncommon" );
            });

          Array(50).fill(1).forEach(() => {
              horde += makePokemon( "rare" );
            })

            if ( document.querySelectorAll("h3").length ) {
                document.querySelectorAll("h2")[0].classList.add("show");
                document.querySelectorAll("h3")[0].classList.add("hide");
            }

            container.innerHTML = horde;

        }

        window.playSongs = function() {

            var pallet = new Howl({
              src: [ "https://s3-us-west-2.amazonaws.com/s.cdpn.io/13471/pallet.mp3" ],
              autoplay: false,
              loop: true,
              html5: true,
              volume: 0
            });

            var battle = new Howl({
              src: [ "https://s3-us-west-2.amazonaws.com/s.cdpn.io/13471/battle.mp3" ],
              autoplay: false,
              loop: true,
              html5: true,
              volume: 0
            });

            pallet.once("load", function() {

                setTimeout(function() {
                    window.playAnimation();
                }, 500 );

                pallet.play()
                pallet.fade( 0, 0.1, 3000 );

                setTimeout(function() {
                    pallet.fade( 0.1, 0, 1000 );
                    setTimeout( function() {
                        pallet.pause();
                    }, 1000 )
                },8000);

                setTimeout(function() {
                    battle.play();
                    battle.fade( 0, 0.1, 2000 );
                },7000);

                setTimeout(function() {
                    battle.fade( 0.1, 0, 1000 );
                    setTimeout( function() {
                        battle.stop();
                    }, 1000 );
                },17000);

                setTimeout(function() {
                    pallet.play();
                    pallet.fade( 0, 0.1, 2000 );
                },17000);

                setTimeout(function() {
                    pallet.fade( 0.1, 0, 1000 );
                    setTimeout( function() {
                        pallet.stop();
                    }, 1000 );
                    setTimeout( function() {
                        window.playAnimation();
                        window.playSongs();
                    }, 2000 );
                },30000);

            });

        };

        window.playSongs();

    };

    window.onload = window.waitForSong;
    console.log("kikoo")

}());

};

export default pokebowl();
