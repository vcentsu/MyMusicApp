//
//  SongData.swift
//  MyMusicApp
//
//  Created by Vincentius Sutanto on 06/04/22.
//

import Foundation

struct Song {
    var songTitle : String?
    var songSinger : String?
    var songLyric : String?
    var songImage : String?
    var isFavorite : Bool?
}

struct SongFeeder {
    func songDataFeeder() -> [Song] {
        return [
            Song(songTitle: "Hati-hati di Jalan", songSinger: "Tulus", songLyric: "Perjalanan membawamu \nBertemu denganku, ku bertemu kamu \nSepertimu yang kucari \nKonon aku juga sperti yang kaucari \nKukira kita asam dan garam \nDan kita bertemu di belanga \nKisah yang ternyata tak seindah itu \nKukira kita akan bersama \nBegitu banyak yang sama \nLatarmu dan latarku \nKukira takkan ada kendala \nKukira ini kan mudah \nKau-aku jadi kita \nKasih sayangmu membekas \nRedam kini sudah pijar istimewa \nEntah apa maksud dunia \nTentang ujung cerita, kita tak bersama \nSemoga rindu ini menghilang \nKonon katanya waktu sembuhkan \nAkan adakah lagi yang sepertimu?", songImage: "tulus", isFavorite: true),
            Song(songTitle: "Melawan Restu", songSinger: "Mahalini", songLyric: "Hm-mm \nIndah semua cerita \nYang t'lah terlewati dalam satu cinta \nKita yang pernah bermimpi \nJalani semua, hanya ada kita \nNamun ternyata, pada akhirnya \nTak mungkin bisa kupaksa \nRestunya tak berpihak \nPada kita \nMungkinkah aku meminta \nKisah kita selamanya? \nTak terlintas dalam benakku \nBila hariku tanpamu \nS'gala cara t'lah kucoba \nPertahankan cinta kita \nS'lalu kutitipkan dalam doaku \nTapi ku tak mampu melawan restu", songImage: "mahalini", isFavorite: false),
            Song(songTitle: "Pesan Terakhir", songSinger: "Lyodra", songLyric: "T'lah kucoba t'rus bertahan \nTentang cinta yang kurasa \nKu mencinta, kau tak cinta \nTak sanggup ku terus bertahan \nSadar ku tak berhak untuk terus memaksamu \nMemaksamu mencintaiku sepenuh hati \nAku 'kan berusaha untuk melupakanmu \nTapi terimalah permintaan terakhirku \nGenggam tanganku, sayang \nDekat denganku, peluk diriku \nBerdiri tegak di depan aku \nCium keningku 'tuk yang terakhir \nKu 'kan menghilang jauh darimu \nTak terlihat sehelai rambut pun \nTapi di mana nanti kau terluka \nCari aku, ku ada untukmu, ho-oh \nKu tak membencimu \nKuharap kau pun begitu, ha-ah (kuharap begitu), yeah, yeay \nTak ingin kau jauh \nTapi takdir menginginkan kita 'tuk berpisah", songImage: "lyodra", isFavorite: false)
        ]
    }
}
