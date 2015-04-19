public class Compose{  
    //Variables
    
    
    //Methods
    public float GetNote(string note)
    {
        float freq;
        if(note == "a" || note == "-3"){
            return 440.0;
        }else if (note == "a#" || note == "-2"){
            return 466.2;
        }else if (note == "b" || note == "-1"){
            return 493.9;
        }else if (note == "c" || note == "0"){
            return 523.3;
        }else if (note == "c#" || note == "1"){
            return 554.4;
        }else if( note == "d" || note == "2"){
            return 587.3;
        }else if( note == "d#" || note == "3"){
            return 622.3;
        }else if( note == "e" || note == "4"){
            return 659.3;
        }else if( note == "f" || note == "5"){
            return 698.5;
        }else if( note == "f#" || note == "6"){
            return 740.0;
        }else if( note == "g" || note == "7"){
            return 784.0;
        }else if( note == "g#" || note == "8"){
            return 830.6;
        }else if( note == "a." || note == "9"){
            return 880.0;
        }else if( note == "a#." || note == "10"){
            return 932.3;
        }else if( note == "b." || note == "11"){
            return 987.8;
        }else if( note == "c." || note == "12"){
            return 1046.5;
        }else{
            0 => float freq;  
        }
        return freq;
    }
    public string NumToChar(float num){
        if(num == 0){
            return "a";   
        }else if( num == 1){
            return "a#";   
        }else if( num == 2){
            return "b";
        }else if( num == 3){
            return "c";
        }else if( num == 4){
            return "c#";
        }else if( num == 5){
            return "d";
        }else if( num == 6){
            return "d#";
        }else if( num == 7){
            return "e";
        }else if( num == 8){
            return "f";
        }else if(num == 9){
            return "f#";
        }else if(num ==10){
            return "g";
        }else if(num == 11){
            return "g#";
        }else if(num == 12){
            return "a.";
        }else if(num == 13){
            return "a#.";
        }else if(num == 14){
            return "b.";
        }else if(num == 15){
            return "c.";
        }else if(num == 16){
            return "c#.";
        }else if(num == 17){
            return "d.";
        }else if(num == 18){
            return "d#.";
        }else if(num == 19){
            return "e.";
        }else if(num == 20){
            return "f.";
        }else if(num == 21){
            return "f#.";
        }else if(num == 22){
            return "g.";
        }else if(num == 23){
            return "g#.";
        }else if(num == 24){
            return "a..";
        }else{     
            return "";
        }   
    }
    public string CharToNum(string char){
        return "";
    }
    public float[] GetMajorMode(float keyNote){
        [keyNote, keyNote+2, keyNote+4, keyNote+5, keyNote+7, keyNote+9, keyNote+11, keyNote+12] @=> float scale[];
        return scale;
    }
    public float[] GetDorianMode(float keyNote){
        [keyNote, keyNote+2, keyNote+3, keyNote+5, keyNote+7, keyNote+9, keyNote+10, keyNote+12] @=> float scale[]; 
        return scale;
    }
    public float[] GetPhrygianMode(float keyNote){
        [keyNote, keyNote+1, keyNote+3, keyNote+5, keyNote+7, keyNote+8, keyNote+10, keyNote+12] @=> float scale[];
        return scale;
    } 
    public float[] GetLydian(float keyNote){
        [keyNote, keyNote+2, keyNote+4, keyNote+6, keyNote+7, keyNote+9, keyNote+11, keyNote+12] @=> float scale[];
        return scale;
    }
    public float[] GetMixolydianMode(float keyNote){
        [keyNote, keyNote+2, keyNote+4, keyNote+5, keyNote+7, keyNote+9, keyNote+10, keyNote+12] @=> float scale[];
        return scale;
    }
    public float[] GetMinorMode(float keyNote){
        [keyNote, keyNote+2, keyNote+3, keyNote+5, keyNote+7, keyNote+8, keyNote+10, keyNote+12] @=> float scale[];   
        return scale;
    }
    public float[] GetLocrianMode(float keyNote){
        [keyNote, keyNote+1, keyNote+3, keyNote+5, keyNote+6, keyNote+8, keyNote+10, keyNote+12] @=> float scale[];
        return scale;
    }
    fun void PlayNote(string note, float seconds){
        PulseOsc s2 => dac;
        GetNote(note) => s2.freq;
        seconds::second => now;
        0 => s2.freq;
    }
    fun void PlayScale(float scale[], float secondsPerNote){
        for(0 => int i; i<scale.cap(); i++){
            PlayNote(NumToChar(scale[i]),secondsPerNote);
            <<<NumToChar(scale[i])>>>;
        }  
    }
    fun void PlayScaleRandom(float scale[], float secondsPerNote, int amountOfNotes){
        for(0 => int i; i<amountOfNotes; i++){
            Math.random2f(0,scale.cap()) => float randomNum;
            <<<randomNum>>>;
    //         PlayNote(),secondsPerNote);
             //PlayNote(NumToChar(Math.random2f(1,
              <<<NumToChar(scale[i])>>>;
        }
    }
    public string Test(){
     return "vpi";   
    }
}