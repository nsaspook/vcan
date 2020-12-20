/**
  @file text2speech.h
  
  @author Parallax Inc using a spin2cpp.exe translation of Phil 
  Pilgrim's Phonemic voice synthesizer library. 
  
  @brief Pronounces words spelled out phonemically.  This library is
  a spin2cpp.exe translation of Phil Pilgrim's Phonemic voice synthesizer 
  library.  Phil's library builds on Chip Gracey's VocalTract module to 
  produce phonemic-based speech.  The formant values it uses are based 
  heavily on work done by D.H. Klatt in the "KLSYN" formant synthesis 
  program.
 
  @version 0.55 

  @copyright
  This library is under the GNU General Public License from its original 
  source.  See end of file for details.
*/  

#ifdef __cplusplus
extern "C"
{
#endif


#ifndef DOXYGEN_SHOULD_SKIP_THIS

  #ifndef VocalTract_Class_Defined__
  #define VocalTract_Class_Defined__
  
  #include <stdint.h>
  
  // frame buffers (2n)
  #define frame_buffers (8)
  /* for stepsize */
  /* for aa..ff */
  // 16 bytes per frame
  #define frame_bytes ((3 + 13))
  // 4 longs per frame
  #define frame_longs ((frame_bytes / 4))
  #define frame_buffer_bytes ((frame_bytes * frame_buffers))
  #define frame_buffer_longs ((frame_longs * frame_buffers))
  
  typedef struct VocalTract {
    volatile int32_t	cog, tract, pace;
  // 3 longs       ...must              
    volatile int32_t	index, attenuation, sample;
  // 6 longs       ...be                   
    volatile int32_t	dira_, dirb_, ctra_, ctrb_, frqa_, cnt_;
  // many longs    ...contiguous                  
    volatile int32_t	frames[frame_buffer_longs];
  } VocalTract;
  
    int32_t VocalTract_start( VocalTract *talkId, int32_t tract_ptr, int32_t pos_pin, int32_t neg_pin, int32_t fm_offset);
    int32_t VocalTract_stop( VocalTract *talkId );
    int32_t VocalTract_set_attenuation( VocalTract *talkId, int32_t level);
    int32_t VocalTract_set_pace( VocalTract *talkId, int32_t percentage);
    int32_t VocalTract_go( VocalTract *talkId, int32_t time);
    int32_t VocalTract_full( VocalTract *talkId );
    int32_t VocalTract_empty( VocalTract *talkId );
    int32_t VocalTract_sample_ptr( VocalTract *talkId );
    int32_t VocalTract_aural_id( VocalTract *talkId );
  #endif //VocalTract_Class_Defined__

#endif // DOXYGEN_SHOULD_SKIP_THIS

//
// automatically generated by spin2cpp v1.93 on Thu Oct 08 13:24:57 2015
// spin2cpp --ccode --main talk_demo2.spin 
//

#ifndef talk_Class_Defined__
#define talk_Class_Defined__

#include <stdint.h>

#ifndef DOXYGEN_SHOULD_SKIP_THIS

  #define ZERO (255)
  #define AAZ (0)
  #define GAZ (1)
  #define GP (2)
  #define VP (3)
  #define VR (4)
  #define F1 (5)
  #define F2 (6)
  #define F3 (7)
  #define F4 (8)
  #define NAZ (9)
  #define NF (10)
  #define FAZ (11)
  #define FF (12)
  #define AA (13)
  #define GA (14)
  #define NA (15)
  #define FA (16)
  #define GPS (17)
  #define QT (18)
  
  typedef struct talk {
    volatile uint16_t	glide, base_freq, gain, dilate;
    volatile uint8_t	vt[18], vtp[18], cbuf[300], speaker[10];
    volatile uint8_t	vocal_cog, aspirate, initial_k, initial_g, whisper, volume;
    VocalTract	v;
  } talk;
  
#endif // DOXYGEN_SHOULD_SKIP_THIS

/**
  @brief Run a talk process, uses a cog.
  
  @param pin An I/O pin to deliver signals.  Use -1 if you don't want
  to use this I/O pin.
  
  @param npin An I/O pin to deliver the opposite of the pin signals.
  This is useful for differential signaling or sound over two headphone
  channels.  Use -1 if you don't want to use this I/O pin.
  
  @returns A pointer to the talk process info for use as a process ID
  in other function calls. 
*/
talk *talk_run(int pin, int npin);

/**
  @brief End a talk process and recover a cog.
  
  @param *talkId The pointer returned by talk_start that indicates 
  which talk process is to be stopped.
*/  
void talk_end(talk *talkId);

/**
  @brief Create speaker numbers, each with a unique tone.
  
  @param *talkId The talk process ID.
  
  @param spkr A number used to identify the speaker in other calls.
  
  @param base The tone (default 100, higher for higher pitch, lower
  for lower pitch).
  
  @returns 0
*/  
int32_t talk_set_speaker( talk *talkId, int32_t spkr, int32_t base);

/**
  @brief Pronounce the letters in a character string.
  
  @param *talkId The talk process ID.
  
  @param *ptr The address of a string of characters to pronounce
  as letter names.
  
  @returns 0
*/  
int32_t talk_spell( talk *talkId, char *ptr);


/**
  @brief Pronounce speech using strings spelled phonetically.  Make sure to 
  look over the function details (follow the talk_say link) for lots more 
  info.
  
  @param *talkId The talk process ID.
  
  @param *ptr The address of a string of characters to pronounce
  as phonemes.
  
  @details  
  This program's "say" function accepts a string of bytes that represent 
  English phonemes.  It "speaks" them on the port given in the argument to 
  "start". The string can include the following one- and two-character 
  combinations:
  
      #         Select speaker 0.
      #n        Select speaker n (0 =< n =< 9).
      _         Set the glottal pitch to the base frequency.
      [         Raise glottal pitch by one semitone.
      ]         Lower glottal pitch by one semitone.
      /         Slide the glottal pitch up by one semitone during the next frame.
      \         Slide the glottal pitch down by one semitone during the next frame.
      '         Accent the next frame (same as +\).
      +         Raise the glottal pitch by one semitone. (i.e. "Sharp" the previous note.)
      +n        Raise the glottal pitch by n semitones (n = "1" to "9").
      -         Lower the glottal pitch by one semitone. (i.e. "Flat" the previous note.)
      -n        Lower the glottal pitch by n semitones (n = "1" to "9").
      A .. G    Set the glottal pitch to the indicated note in the current octave.
      An .. Gn  Set the glottal pitch to the indicated note in octave n (n = "0" to "9").
      %         Set the tempo to 100%
      %nnnn     Set the tempo to nnnn% (25 =< nnnn =< 1600) Larger numbers = slower tempo.
      <         Raise the volume by one notch.
      >         Lower the volume by one notch.
      ~         Add a short "uh" to the end of the last letter (usually a consonant) for emphasis.
      ,         Short pause.
      ;         Medium pause.
      .         Long pause.
      (         Begin whispering.
      )         End whispering.
      |         Do not interpolate between previous and next phonemes.
      <blank>   Syntactic separator. Prevents adjacent letters from being treated as a pair.
      a         A as in At.
      ae        Long I sound, as in bIte.
      al        AL, as in pAL.
      ai,ay     Long A sound, as in bAIt.
      ar        AR, as in pARt.
      ah,o      "ah" sound, as in pOt.
      e         Short E sound, as in pEt.
      ee        Long E sound, as in fEEd.
      ew        EW, as in pEW.
      er,ir     IR, as in gIRl 
      el        EL, as in pELt.
      i         Short I sound, as in hIt.
      o         Short O sound, as in pOt.
      oa        Long O sound, as in bOAt.
      or        OR, as in fORt.
      ol        "ahl" sound, as in mALl
      ou,ow     OU, as in OUt.
      oi,oy     OY, as in bOY.
      oo        Long OO sound, as in bOOt.
      u         Short U sound, as in gUt.
      uu        Short OO sound, as in pUt.
      d         D, as in Dog.
      dh        Soft (voiced) TH sound, as in THat.
      t         T, as in Tot.
      th        Hard (unvoiced) TH sound, as in THink.
      s         S, as in Sip.
      sh        SH, as in SHip.
      c,k       C, as in Cot.
      ch        CH, as in CHip.
      z         Z, as in Zoo.
      zh        ZH sound, as in aZure.
      l         L, as in Lot.
      r         R, as in Rot.
      rr        Rolled R, as in peRRo (Esp.).
      w         W, as in Want.
      y         Y, as in Yell.
      m         M, as in Mom.
      n         N, as in Name.
      p         P, as in Pop.
      g         G, as in Good.
      b         B, as in Bad.
      f         F, as in Fad.
      h         H, as in Had.
      v         V, as in Vat.
      j         J, as in Job.

*/    
int32_t talk_say( talk *talkId, char *ptr);
  
  
/**
  @brief set volume for all speakers.
  
  @param *self speech2text process ID.
  
  @param level (quietest) 0...7 (loudest).
*/ 
void talk_setVolume(talk *self, int level);
  

#endif //talk_Class_Defined__

#ifdef __cplusplus
}
#endif

//
// automatically generated by spin2cpp v1.93 on Thu Oct 08 13:24:57 2015
// spin2cpp --ccode --main talk_demo2.spin 
//


/*
''Phonemic voice synthesizer.
'' 
''Original copyright (C) 2006 Philip C. Pilgrim
'' 
''This program is free software; you can redistribute it and/or modify
''it under the terms of the GNU General Public License as published by
''the Free Software Foundation; either version 2 of the License.
''
''This program is distributed in the hope that it will be useful,
''but WITHOUT ANY WARRANTY; without even the implied warranty of
''MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
''GNU General Public License for more details.
''
''You should have received a copy of the GNU General Public License
''along with this program; if not, write to the Free Software
''Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
''
*/

