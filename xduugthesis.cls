%%
%% This is file `xduugthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% xduts.dtx  (with options: `class,xduugthesis')
%% 
%%     Copyright (C) 2022--2022 by @note286 in GitHub
%% ---------------------------------------------------------------------
%% 
%%     This work may be distributed and/or modified under the
%%     conditions of the LaTeX Project Public License, either
%%     version 1.3c of this license or (at your option) any later
%%     version. This version of this license is in
%%        http://www.latex-project.org/lppl/lppl-1-3c.txt
%%     and the latest version of this license is in
%%        http://www.latex-project.org/lppl.txt
%%     and version 1.3 or later is part of all distributions of
%%     LaTeX version 2005/12/01 or later.
%% 
%%     This work has the LPPL maintenance status "maintained".
%% 
%% ---------------------------------------------------------------------
%% 
\NeedsTeXFormat{LaTeX2e}
\RequirePackage{expl3}
\ProvidesExplClass{xduugthesis}
  {2022/04/11}{0.7.0.0}
  {Xidian University Undergraduate Thesis document class}
\RequirePackage { xparse, l3keys2e }
\PassOptionsToPackage { quiet } { xeCJK }
\PassOptionsToClass
  {
    zihao=-4,
    sub4section,
    linespread = 1.5,
    fontset    = none
  }
  { ctexbook }
\LoadClass { ctexbook }
\RequirePackage { geometry        }
\geometry       { paper = a4paper }
\RequirePackage { fancyhdr        }
\RequirePackage { xeCJKfntef      }
\RequirePackage { graphicx        }
\tl_new:N \l__xdu_cjk_font_tl
\str_new:N \l__xdu_fake_bold_str
\str_new:N \l__xdu_fake_slant_str
\tl_new:N \l__xdu_latin_font_tl
\tl_new:N \l__xdu_math_font_tl
\tl_new:N \l__xdu_unicode_math_tl
\tl_new:N \l__xdu_font_type_tl
\tl_new:N \l__xdu_font_path_tl
\keys_define:nn { xdu / style }
  {
    cjk-font .choices:nn =
      { win, adobe, founder, sinotype, fandol, none }
      { \tl_set_eq:NN \l__xdu_cjk_font_tl \l_keys_choice_tl },
    cjk-fake-bold .str_set:N = \l__xdu_fake_bold_str,
    cjk-fake-slant .str_set:N = \l__xdu_fake_slant_str,
    latin-font .choices:nn = { tacn, thcs, none }
      { \tl_set_eq:NN \l__xdu_latin_font_tl \l_keys_choice_tl },
    math-font .choices:nn =
      {
        asana, cambria, cm, fira, garamond, lm, libertinus, stix,
        bonum, dejavu, pagella, schola, termes, xits, none
      }
      { \tl_set_eq:NN \l__xdu_math_font_tl \l_keys_choice_tl },
    unicode-math .tl_set:N = \l__xdu_unicode_math_tl,
    font-type .choices:nn = { font, file }
      { \tl_set_eq:NN \l__xdu_font_type_tl \l_keys_choice_tl },
    font-path .tl_set:N = \l__xdu_font_path_tl
  }
\keys_set:nn { xdu }
  {
    style / cjk-font              = win,
    style / cjk-fake-bold         = 3,
    style / cjk-fake-slant        = 0.2,
    style / latin-font            = tacn,
    style / math-font             = cm,
    style / unicode-math          = { },
    style / font-type             = font,
    style / font-path             = fonts
  }
\cs_new:Npn \__xdu_if_platform_macos:FT #1#2
  { \file_if_exist:nTF { /System/Library/Fonts/Menlo.ttc } { #2 } { #1 } }
\cs_new:Npn \__xdu_texmf_font:nn #1#2
  { \__xdu_if_platform_macos:FT { #1 } { #2 } }
\cs_new:Npn \__xdu_select_font:nn #1#2
  {
    \str_if_eq:NNTF { \l__xdu_font_type_tl } { font }
      { #1 }
      { #2 }
  }
\cs_new:Npn \__xdu_font_path:
  {
    \str_if_eq:NNTF { \l__xdu_font_type_tl } { font }
      { }
      { Path = \l__xdu_font_path_tl / , }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_sub_b:n #1
  {
    BoldFont = { #1 }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_sub_fb:n #1
  {
    BoldFont     = { #1 },
    BoldFeatures = { FakeBold = \l__xdu_fake_bold_str }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_sub_fs:n #1
  {
    SlantedFont     = { #1 },
    SlantedFeatures = { FakeSlant = \l__xdu_fake_slant_str }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_sub_fbfs:n #1
  {
    BoldSlantedFont     = { #1 },
    BoldSlantedFeatures =
      {
        FakeBold  = \l__xdu_fake_bold_str,
        FakeSlant = \l__xdu_fake_slant_str
      }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_sub_bfs:n #1
  {
    BoldSlantedFont     = { #1 },
    BoldSlantedFeatures = { FakeSlant = \l__xdu_fake_slant_str }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_sub_i:n #1
  {
    ItalicFont = { #1 }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_sub_fi:n #1
  {
    ItalicFont     = { #1 },
    ItalicFeatures = { FakeSlant = \l__xdu_fake_slant_str }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_sub_ifb:n #1
  {
    BoldItalicFont     = { #1 },
    BoldItalicFeatures = { FakeBold = \l__xdu_fake_bold_str }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_sub_fifb:n #1
  {
    BoldItalicFont     = { #1 },
    BoldItalicFeatures =
      {
        FakeBold  = \l__xdu_fake_bold_str,
        FakeSlant = \l__xdu_fake_slant_str
      }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_r:n #1
  {
    \__xdu_cfg_cjk_font_sub_fb:n   { #1 },
    \__xdu_cfg_cjk_font_sub_fs:n   { #1 },
    \__xdu_cfg_cjk_font_sub_fbfs:n { #1 },
    \__xdu_cfg_cjk_font_sub_fi:n   { #1 },
    \__xdu_cfg_cjk_font_sub_fifb:n { #1 }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_rb:nn #1#2
  {
    \__xdu_cfg_cjk_font_sub_b:n    { #2 },
    \__xdu_cfg_cjk_font_sub_fs:n   { #1 },
    \__xdu_cfg_cjk_font_sub_bfs:n  { #2 },
    \__xdu_cfg_cjk_font_sub_fi:n   { #1 },
    \__xdu_cfg_cjk_font_sub_fifb:n { #1 }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_ri:nn #1#2
  {
    \__xdu_cfg_cjk_font_sub_fb:n   { #1 },
    \__xdu_cfg_cjk_font_sub_fs:n   { #1 },
    \__xdu_cfg_cjk_font_sub_fbfs:n { #1 },
    \__xdu_cfg_cjk_font_sub_i:n    { #2 },
    \__xdu_cfg_cjk_font_sub_ifb:n  { #2 }
  }
\cs_new:Npn \__xdu_cfg_cjk_font_rbi:nnn #1#2#3
  {
    \__xdu_cfg_cjk_font_sub_b:n   { #2 },
    \__xdu_cfg_cjk_font_sub_fs:n  { #1 },
    \__xdu_cfg_cjk_font_sub_bfs:n { #2 },
    \__xdu_cfg_cjk_font_sub_i:n   { #3 },
    \__xdu_cfg_cjk_font_sub_ifb:n { #3 }
  }
\cs_new:Npn \__xdu_set_cjk_main_font:nn #1#2
  {
    \setCJKmainfont { #1 }
      [ \__xdu_font_path: \__xdu_cfg_cjk_font_ri:nn { #1 } { #2 } ]
  }
\cs_new:Npn \__xdu_set_cjk_main_font:nnn #1#2#3
  {
    \setCJKmainfont { #1 }
      [ \__xdu_font_path: \__xdu_cfg_cjk_font_rbi:nnn { #1 } { #2 } { #3 } ]
  }
\cs_new:Npn \__xdu_set_cjk_sans_font:n #1
  {
    \setCJKsansfont { #1 }
      [ \__xdu_font_path: \__xdu_cfg_cjk_font_r:n { #1 } ]
  }
\cs_new:Npn \__xdu_set_cjk_sans_font:nn #1#2
  {
    \setCJKsansfont { #1 }
      [ \__xdu_font_path: \__xdu_cfg_cjk_font_rb:nn { #1 } { #2 } ]
  }
\cs_new:Npn \__xdu_set_cjk_mono_font:n #1
  {
    \setCJKmonofont { #1 }
      [ \__xdu_font_path: \__xdu_cfg_cjk_font_r:n { #1 } ]
  }
\cs_new:Npn \__xdu_load_cjk_font_win:
  {
    \__xdu_set_cjk_main_font:nn
      { \__xdu_select_font:nn { SimSun   } { simsun.ttc  } }
      { \__xdu_select_font:nn { KaiTi    } { simkai.ttf  } }
    \__xdu_set_cjk_sans_font:n
      { \__xdu_select_font:nn { SimHei   } { simhei.ttf  } }
    \__xdu_set_cjk_mono_font:n
      { \__xdu_select_font:nn { FangSong } { simfang.ttf } }
  }
\cs_new:Npn \__xdu_load_cjk_font_adobe:
  {
    \__xdu_set_cjk_main_font:nn
      { \__xdu_select_font:nn { Adobe~Song~Std     } { adobesongstd-light.otf        } }
      { \__xdu_select_font:nn { Adobe~Kaiti~Std    } { adobekaitistd-regular.otf     } }
    \__xdu_set_cjk_sans_font:n
      { \__xdu_select_font:nn { Adobe~Heiti~Std    } { adobeheitistd-regular.otf     } }
    \__xdu_set_cjk_mono_font:n
      { \__xdu_select_font:nn { Adobe~Fangsong~Std } { Adobe-Fangsong-Std-R-Font.otf } }
  }
\cs_new:Npn \__xdu_load_cjk_font_founder:
  {
    \__xdu_set_cjk_main_font:nn
      { \__xdu_select_font:nn { FZShuSong-Z01  } { FZShuSong-Z01.ttf } }
      { \__xdu_select_font:nn { FZKai-Z03      } { FZKai-Z03.ttf     } }
    \__xdu_set_cjk_sans_font:n
      { \__xdu_select_font:nn { FZHei-B01      } { FZHei-B01.ttf     } }
    \__xdu_set_cjk_mono_font:n
      { \__xdu_select_font:nn { FZFangSong-Z02 } { FZFSK.TTF         } }
  }
\cs_new:Npn \__xdu_load_cjk_font_sinotype:
  {
    \__xdu_set_cjk_main_font:nn
      { \__xdu_select_font:nn { STSong     } { STSONG.TTF   } }
      { \__xdu_select_font:nn { STKaiti    } { STKAITI.TTF  } }
    \__xdu_set_cjk_sans_font:nn
      { \__xdu_select_font:nn { STXihei    } { STXIHEI.TTF  } }
      { \__xdu_select_font:nn { STHeiti    } { STHeiti.ttf  } }
    \__xdu_set_cjk_mono_font:n
      { \__xdu_select_font:nn { STFangsong } { STFANGSO.TTF } }
  }
\cs_new:Npn \__xdu_load_cjk_font_fandol:
  {
    \__xdu_set_cjk_main_font:nnn
      { FandolSong-Regular.otf }
      { FandolSong-Bold.otf    }
      { FandolKai-Regular.otf  }
    \__xdu_set_cjk_sans_font:nn
      { FandolHei-Regular.otf  }
      { FandolHei-Bold.otf     }
    \__xdu_set_cjk_mono_font:n
      { FandolFang-Regular.otf }
  }
\cs_new:Npn \__xdu_load_cjk_font_none: { }
\cs_new:Npn \__xdu_set_latin_font:nnn #1#2#3
  {
    \__xdu_font_path:
    BoldFont        = { #1 },
    SlantedFont     = { #2 },
    BoldSlantedFont = { #3 },
    ItalicFont      = { #2 },
    BoldItalicFont  = { #3 }
  }
\cs_new:Npn \__xdu_set_latin_main_font:nnnnn #1#2#3#4#5
  {
    \str_if_eq:NNTF { \l__xdu_font_type_tl } { font }
      { \setmainfont { #1 } }
      { \setmainfont { #2 } [ \__xdu_set_latin_font:nnn { #3 } { #4 } { #5 } ] }
  }
\cs_new:Npn \__xdu_set_latin_sans_font:nnnnn #1#2#3#4#5
  {
    \str_if_eq:NNTF { \l__xdu_font_type_tl } { font }
      { \setsansfont { #1 } }
      { \setsansfont { #2 } [ \__xdu_set_latin_font:nnn { #3 } { #4 } { #5 } ] }
  }
\cs_new:Npn \__xdu_set_latin_mono_font:nnnnn #1#2#3#4#5
  {
    \str_if_eq:NNTF { \l__xdu_font_type_tl } { font }
      { \setmonofont{ #1 } }
      { \setmonofont{ #2 } [ \__xdu_set_latin_font:nnn { #3 } { #4 } { #5 } ] }
  }
\cs_new:Npn \__xdu_load_latin_font_tacn:
  {
    \__xdu_set_latin_main_font:nnnnn
      { Times~New~Roman } { times.ttf } { timesbd.ttf } { timesi.ttf } { timesbi.ttf }
    \__xdu_set_latin_sans_font:nnnnn
      { Arial           } { arial.ttf } { arialbd.ttf } { ariali.ttf } { arialbi.ttf }
    \__xdu_set_latin_mono_font:nnnnn
      { Courier~New     } { cour.ttf  } { courbd.ttf  } { couri.ttf  } { courbi.ttf  }
  }
\cs_new:Npn \__xdu_load_latin_font_thcs:
  {
    \__xdu_set_latin_main_font:nnnnn
      { Times~New~Roman            }
      { times.ttf                  }
      { timesbd.ttf                }
      { timesi.ttf                 }
      { timesbi.ttf                }
    \__xdu_set_latin_sans_font:nnnnn
      { Helvetica                  }
      { Helvetica.ttf              }
      { Helvetica~Bold.ttf         }
      { Helvetica~Oblique.ttf      }
      { Helvetica~Bold~Oblique.ttf }
    \__xdu_set_latin_mono_font:nnnnn
      { Courier~Std                }
      { CourierStd.otf             }
      { CourierStd-Bold.otf        }
      { CourierStd-Oblique.otf     }
      { CourierStd-BoldOblique.otf }
  }
\cs_new:Npn \__xdu_load_latin_font_none: { }
\cs_new:Npn \__xdu_load_unicode_math_pkg:
  {
    \RequirePackage
      [ \l__xdu_unicode_math_tl ]
      { unicode-math          }
  }
\cs_new:Npn \__xdu_load_math_font_cambria:
  {
    \__xdu_load_unicode_math_pkg:
    \str_if_eq:NNTF { \l__xdu_font_type_tl} { font}
      { \setmathfont { Cambria~Math} }
      { \setmathfont { cambria.ttc} [ Path = \l__xdu_font_path_tl/, FontIndex = 1 ] }
  }
\cs_new:Npn \__xdu_define_math_font:nn #1#2
  {
    \cs_new:cpn { __xdu_load_math_font_ #1 : }
      {
        \__xdu_load_unicode_math_pkg:
        \setmathfont { #2 }
      }
  }
\clist_map_inline:nn
  {
    { asana      } { Asana-Math.otf             },
    { fira       } { FiraMath-Regular.otf       },
    { garamond   } { Garamond-Math.otf          },
    { lm         } { latinmodern-math.otf       },
    { libertinus } { LibertinusMath-Regular.otf },
    { stix       } { STIXMath-Regular.otf       },
    { bonum      } { texgyrebonum-math.otf      },
    { dejavu     } { texgyredejavu-math.otf     },
    { pagella    } { texgyrepagella-math.otf    },
    { schola     } { texgyreschola-math.otf     },
    { termes     } { texgyretermes-math.otf     }
  }
  { \__xdu_define_math_font:nn #1 }
\cs_new:Npn \__xdu_load_math_font_xits:
  {
    \__xdu_load_unicode_math_pkg:
    \__xdu_if_platform_macos:FT
      {
        \setmathfont { XITS~Math }
      }
      {
        \__xdu_load_unicode_math_pkg:
        \setmathfont { XITSMath-Regular.otf }
        \setmathfont { XITSMath-Bold.otf    }
          [range= { bfup -> up, bfit -> it } ]
      }
  }
\cs_new:Npn \__xdu_load_math_font_cm: { }
\cs_new:Npn \__xdu_load_math_font_none: { }
\cs_new:Npn \__xdu_load_font:
  {
    \use:c { __xdu_load_cjk_font_   \l__xdu_cjk_font_tl   : }
    \use:c { __xdu_load_latin_font_ \l__xdu_latin_font_tl : }
    \use:c { __xdu_load_math_font_  \l__xdu_math_font_tl  : }
  }
\ctex_at_end_preamble:n { \__xdu_load_font: }
\str_new:N \l__xdu_title_str
\str_new:N \l__xdu_title_i_str
\str_new:N \l__xdu_title_ii_str
\str_new:N \l__xdu_dept_str
\str_new:N \l__xdu_major_str
\str_new:N \l__xdu_author_str
\str_new:N \l__xdu_supv_str
\str_new:N \l__xdu_supv_dept_str
\str_new:N \l__xdu_supv_ent_str
\str_new:N \l__xdu_supv_sch_str
\str_new:N \l__xdu_class_id_str
\str_new:N \l__xdu_student_id_str
\tl_new:N \l__xdu_abstract_zh_tl
\tl_new:N \l__xdu_abstract_en_tl
\clist_new:N \l__xdu_keywords_zh_clist
\clist_new:N \l__xdu_keywords_en_clist
\tl_new:N \l__xdu_ack_tl
\keys_define:nn { xdu / info }
  {
    title .tl_set:N = \l__xdu_title_str,
    department .tl_set:N = \l__xdu_dept_str,
    major .tl_set:N = \l__xdu_major_str,
    author .tl_set:N = \l__xdu_author_str,
    supervisor .tl_set:N = \l__xdu_supv_str,
    supervisor-department .tl_set:N = \l__xdu_supv_dept_str,
    supervisor-enterprise .tl_set:N = \l__xdu_supv_ent_str,
    supervisor-school .tl_set:N = \l__xdu_supv_sch_str,
    class-id .tl_set:N = \l__xdu_class_id_str,
    student-id .tl_set:N = \l__xdu_student_id_str,
    abstract .tl_set:N = \l__xdu_abstract_zh_tl,
    abstract* .tl_set:N = \l__xdu_abstract_en_tl,
    keywords .clist_set:N = \l__xdu_keywords_zh_clist,
    keywords* .clist_set:N = \l__xdu_keywords_en_clist,
    acknowledgements .tl_set:N = \l__xdu_ack_tl
  }
\keys_set:nn { xdu }
  {
    info  / title                 = { },
    info  / department            = { },
    info  / major                 = { },
    info  / author                = { },
    info  / supervisor            = { },
    info  / supervisor-department = { },
    info  / supervisor-enterprise = { },
    info  / supervisor-school     = { },
    info  / class-id              = { },
    info  / student-id            = { },
    info  / abstract              = { },
    info  / abstract*             = { },
    info  / keywords              = { },
    info  / keywords*             = { },
    info  / acknowledgements      = { }
  }
\bool_new:N \l__xdu_en_cjk_font_bool
\tl_new:N \l__xdu_lang_tl
\tl_new:N \l__xdu_bib_tool_tl
\clist_new:N \l__xdu_bib_file_clist
\tl_new:N \l__xdu_fig_label_sep_tl
\clist_new:N \l__xdu_before_skip_clist
\clist_new:N \l__xdu_after_skip_clist
\tl_new:N \l__xdu_chap_tl
\tl_new:N \l__xdu_sec_tl
\tl_new:N \l__xdu_subsec_tl
\tl_new:N \l__xdu_subsubsec_tl
\tl_new:N \l__xdu_para_tl
\tl_new:N \l__xdu_subpara_tl
\keys_define:nn { xdu / style }
  {
    en-cjk-font .bool_set:N = \l__xdu_en_cjk_font_bool,
    language .choices:nn = { zh, en }
      { \tl_set_eq:NN \l__xdu_lang_tl \l_keys_choice_tl },
    bib-backend .choices:nn = { bibtex, biblatex }
      { \tl_set_eq:NN \l__xdu_bib_tool_tl \l_keys_choice_tl },
    bib-resource .clist_set:N = \l__xdu_bib_file_clist,
    fig-label-sep .tl_set:N = \l__xdu_fig_label_sep_tl,
    before-skip .clist_set:N = \l__xdu_before_skip_clist,
    after-skip .clist_set:N = \l__xdu_after_skip_clist,
    chap-zihao .tl_set:N = \l__xdu_chap_tl,
    sec-zihao .tl_set:N = \l__xdu_sec_tl,
    subsec-zihao .tl_set:N = \l__xdu_subsec_tl,
    subsubsec-zihao .tl_set:N = \l__xdu_subsubsec_tl,
    para-zihao .tl_set:N = \l__xdu_para_tl,
    subpara-zihao .tl_set:N = \l__xdu_subpara_tl
  }
\keys_set:nn { xdu }
  {
    style / en-cjk-font   = false,
    style / language      = zh,
    style / bib-backend   = biblatex,
    style / bib-resource  = { },
    style / fig-label-sep = { 0.75em },
    style / before-skip   = { 24pt, 18pt, 12pt, 12pt, 12pt, 12pt },
    style / after-skip    = { 18pt, 12pt, 6pt, 6pt, 6pt, 6pt }
  }
\NewDocumentCommand \xdusetup { m }
  { \keys_set:nn { xdu } { #1 } }
\keys_define:nn { xdu }
  {
    style .meta:nn = { xdu / style } { #1 },
    info  .meta:nn = { xdu / info  } { #1 }
  }
\ProcessKeysOptions { xdu / style }
\cs_new:Npn \__xdu_lang_switch:nn #1#2
  {
    \str_if_eq:NNTF { \l__xdu_lang_tl } { zh }
      { #1 }
      { #2 }
  }
\cs_new:Npn \__xdu_rm_family:
  { \bool_if:NTF \l__xdu_en_cjk_font_bool { \CJKfamily+ { rm } } { \rmfamily } }
\cs_new:Npn \__xdu_sf_family:
  { \bool_if:NTF \l__xdu_en_cjk_font_bool { \CJKfamily+ { sf } } { \sffamily } }
\cs_new:Npn \__xdu_tt_family:
  { \bool_if:NTF \l__xdu_en_cjk_font_bool { \CJKfamily+ { tt } } { \ttfamily } }
\ctex_at_end_preamble:n
  {
    \str_new:N \l__xdu_pure_title_str
    \str_set_eq:NN \l__xdu_pure_title_str \l__xdu_title_str
    \str_remove_all:Nn \l__xdu_pure_title_str { \\ }
  }
\cs_new:Npn \__xdu_uline:n #1
  { \CJKunderline [ thickness = 0.5pt ] { #1 } }
\cs_new:Npn \__xdu_tl_set_if_empty:Nn #1#2
  { \tl_if_empty:NT #1 { \tl_set:Nn #1 { #2 } } }
\cs_new:Npn \__xdu_get_text_width:Nn #1#2
  {
    \box_clear_new:N \l__xdu_tmp_box
    \hbox_set:Nn \l__xdu_tmp_box { #2 }
    \dim_set:Nn #1 { \box_wd:N \l__xdu_tmp_box }
  }
\cs_generate_variant:Nn \__xdu_get_text_width:Nn { NV }
\cs_new:Npn \__xdu_add_bookmark:n #1
  { \currentpdfbookmark { #1 } { #1 } }
\cs_new:Npn \__xdu_add_toc:n #1
  {
    \cleardoublepage
    \phantomsection
    \addcontentsline { toc } { chapter } { #1 }
  }
\cs_new:Npn \__xdu_n_chapter_head:n #1
  {
    \__xdu_add_bookmark:n { #1 }
    \chapter*          { #1 }
    \markboth          { #1 } { }
  }
\cs_new:Npn \__xdu_n_chapter_head:nn #1#2
  {
    {
      \ctexset { chapter / format = { #2 } }
      \__xdu_n_chapter_head:n { #1 }
    }
  }
\cs_new:Npn \__xdu_n_chapter_head_toc:n #1
  {
    \__xdu_add_toc:n { #1 }
    \chapter*     { #1 }
    \markboth     { #1 } { }
  }
\cs_new:Npn \__xdu_typeout_keywords:nNn #1#2#3
  {
    \str_clear_new:N \l__xdu_keywords_label_str
    \str_set:Nn \l__xdu_keywords_label_str { #1 }
    \dim_zero_new:N \l__xdu_keywords_label_dim
    \__xdu_get_text_width:NV \l__xdu_keywords_label_dim \l__xdu_keywords_label_str
    \begin { list } { \l__xdu_keywords_label_str }
      {
        \labelwidth  \l__xdu_keywords_label_dim
        \labelsep    \c_zero_dim
        \rightmargin \c_zero_dim
        \leftmargin  \l__xdu_keywords_label_dim
      }
      \item \clist_use:Nnnn #2 { #3 } { #3 } { #3 }
    \end { list }
  }
\newgeometry
  {
    top           = 3cm,
    bottom        = 2cm,
    inner         = 3cm,
    outer         = 2cm,
    bindingoffset = 1cm,
    head          = 2cm,
    foot          = 1cm
  }
\savegeometry { main }
\newgeometry
  {
    top    = 2.5cm,
    bottom = 2.5cm,
    inner  = 3cm,
    outer  = 2cm
  }
\savegeometry { cover }
\renewcommand { \chaptermark } [ 1 ]
  {
    \markboth
      {
        \__xdu_lang_switch:nn
          { \CTEXthechapter }
          { \chaptername\space\Roman { chapter } }
        \quad #1
      }
      { }
  }
\fancypagestyle { plain }
  {
    \pagestyle { fancy }
    \fancyhf { }
    \fancyhead [ CE ] { \__xdu_rm_family: \zihao { 5  } \l__xdu_pure_title_str }
    \fancyhead [ CO ] { \__xdu_rm_family: \zihao { 5  } \leftmark            }
    \fancyhead [ LE ] { \__xdu_rm_family: \zihao { -5 } \thepage             }
    \fancyhead [ RO ] { \__xdu_rm_family: \zihao { -5 } \thepage             }
    \renewcommand { \headrulewidth } { 0.75pt }
  }
\ctexset { secnumdepth=5 }
\ctexset
  {
    chapter       / name =
      {
        \__xdu_lang_switch:nn { 第 } { \chaptername\space },
        \__xdu_lang_switch:nn { 章 } { }
      },
    section       / name = { },
    subsection    / name = { },
    subsubsection / name = { },
    paragraph     / name = { },
    subparagraph  / name = { }
  }
\ctexset
  {
    chapter       / number =
      {
        \__xdu_lang_switch:nn
          { \chinese { chapter } }
          { \Roman   { chapter } }
      },
    section       / number = { \thesection       },
    subsection    / number = { \thesubsection    },
    subsubsection / number = { \thesubsubsection },
    paragraph     / number = { \theparagraph     },
    subparagraph  / number = { \thesubparagraph  }
  }
\cs_new:Npn \__xdu_zh_t:nnn #1#2#3
  {
    \use:c { __xdu_ #1 _family : }
    \zihao { \use:c { l__xdu_ #2 _tl } }
    \str_if_eq:ccTF { #3 } { c }
      { \centering   }
      { \raggedright }
  }
\cs_new:Npn \__xdu_en_t:nn #1#2
  { \zihao { \use:c { l__xdu_ #1 _tl } } \raggedright \skip_horizontal:n { #2 ex } }
\ctex_at_end_preamble:n
  {
    \__xdu_lang_switch:nn
      {
         \__xdu_tl_set_if_empty:Nn \l__xdu_chap_tl      { 3 }
         \__xdu_tl_set_if_empty:Nn \l__xdu_sec_tl       { 4 }
         \__xdu_tl_set_if_empty:Nn \l__xdu_subsec_tl    { 4 }
         \__xdu_tl_set_if_empty:Nn \l__xdu_subsubsec_tl { 4 }
         \__xdu_tl_set_if_empty:Nn \l__xdu_para_tl      { 4 }
         \__xdu_tl_set_if_empty:Nn \l__xdu_subpara_tl   { 4 }
        \ctexset
          {
            chapter       / format = { \__xdu_zh_t:nnn { sf } { chap      } { c } },
            section       / format = { \__xdu_zh_t:nnn { rm } { sec       } { c } },
            subsection    / format = { \__xdu_zh_t:nnn { rm } { subsec    } { l } },
            subsubsection / format = { \__xdu_zh_t:nnn { rm } { subsubsec } { l } },
            paragraph     / format = { \__xdu_zh_t:nnn { rm } { para      } { l } },
            subparagraph  / format = { \__xdu_zh_t:nnn { rm } { subpara   } { l } }
          }
      }
      {
        \__xdu_tl_set_if_empty:Nn \l__xdu_chap_tl      { 4  }
        \__xdu_tl_set_if_empty:Nn \l__xdu_sec_tl       { -4 }
        \__xdu_tl_set_if_empty:Nn \l__xdu_subsec_tl    { -4 }
        \__xdu_tl_set_if_empty:Nn \l__xdu_subsubsec_tl { -4 }
        \__xdu_tl_set_if_empty:Nn \l__xdu_para_tl      { -4 }
        \__xdu_tl_set_if_empty:Nn \l__xdu_subpara_tl   { -4 }
        \ctexset
          {
            chapter       / format = { \__xdu_en_t:nn { chap      } { 0  } },
            section       / format = { \__xdu_en_t:nn { sec       } { 4  } },
            subsection    / format = { \__xdu_en_t:nn { subsec    } { 8  } },
            subsubsection / format = { \__xdu_en_t:nn { subsubsec } { 12 } },
            paragraph     / format = { \__xdu_en_t:nn { para      } { 16 } },
            subparagraph  / format = { \__xdu_en_t:nn { subpara   } { 20 } }
          }
      }
  }
\ctexset
  {
    chapter       / fixskip    = true,
    section       / fixskip    = true,
    subsection    / fixskip    = true,
    subsubsection / fixskip    = true,
    paragraph     / fixskip    = true,
    subparagraph  / fixskip    = true,
    chapter       / beforeskip = { \clist_item:Nn \l__xdu_before_skip_clist { 1 } },
    section       / beforeskip = { \clist_item:Nn \l__xdu_before_skip_clist { 2 } },
    subsection    / beforeskip = { \clist_item:Nn \l__xdu_before_skip_clist { 3 } },
    subsubsection / beforeskip = { \clist_item:Nn \l__xdu_before_skip_clist { 4 } },
    paragraph     / beforeskip = { \clist_item:Nn \l__xdu_before_skip_clist { 5 } },
    subparagraph  / beforeskip = { \clist_item:Nn \l__xdu_before_skip_clist { 6 } },
    chapter       / afterskip  = { \clist_item:Nn \l__xdu_after_skip_clist  { 1 } },
    section       / afterskip  = { \clist_item:Nn \l__xdu_after_skip_clist  { 2 } },
    subsection    / afterskip  = { \clist_item:Nn \l__xdu_after_skip_clist  { 3 } },
    subsubsection / afterskip  = { \clist_item:Nn \l__xdu_after_skip_clist  { 4 } },
    paragraph     / afterskip  = { \clist_item:Nn \l__xdu_after_skip_clist  { 5 } },
    subparagraph  / afterskip  = { \clist_item:Nn \l__xdu_after_skip_clist  { 6 } }
  }
\RequirePackage [ titles ] { tocloft }
\renewcommand { \cftchapleader } { \bfseries \cftdotfill { \cftdotsep } }
\clist_map_inline:nn
  {
    \cftbeforechapskip,
    \cftbeforesecskip,
    \cftbeforesubsecskip,
    \cftbeforesubsubsecskip,
    \cftbeforeparaskip,
    \cftbeforesubparaskip
  }
  { \dim_set:Nn { #1 } { 5pt } }
  \clist_map_inline:nn
    {
      \cftchapfont,
      \cftchappagefont
    }
    { \renewcommand { #1 } { \__xdu_rm_family: \zihao { -4 } \bfseries } }
\clist_map_inline:nn
  {
    \cftsecfont,
    \cftsubsecfont,
    \cftsubsubsecfont,
    \cftparafont,
    \cftsubparafont,
    \cftsecpagefont,
    \cftsubsecpagefont,
    \cftsubsubsecpagefont,
    \cftparapagefont,
    \cftsubparapagefont
  }
  { \renewcommand { #1 } { \__xdu_rm_family: \zihao { -4 } } }
\renewcommand { \theequation } { \thechapter - \arabic { equation } }
\RequirePackage { caption }
\DeclareCaptionLabelSeparator { customskip } { \hskip \l__xdu_fig_label_sep_tl }
\DeclareCaptionFont { customfont } { \__xdu_rm_family: \zihao { 5 } }
\captionsetup
  {
    labelsep = customskip,
    font     = customfont
  }
\PassOptionsToPackage { font = small } { subfig }
\captionsetup [ sub ] { font = customfont }
\RequirePackage{hyperref}
\hypersetup
  {
    bookmarksnumbered,
    hidelinks
  }
\ctex_at_end_preamble:n
  {
    \hypersetup
      {
        pdftitle   = \l__xdu_pure_title_str,
        pdfsubject = {西安电子科技大学本科毕业设计论文},
        pdfauthor  = \l__xdu_author_str
      }
  }
\cs_new_protected:Npn \__xdu_begin_document:n #1
  { \ctex_gadd_ltxhook:nn { env/document/begin } { #1 } }
\__xdu_begin_document:n
  {
    \tl_if_eq:NnTF \l__xdu_bib_tool_tl { bibtex }
      {
        \RequirePackage [ sort&compress,square,super,comma,numbers ] { natbib }
        \RequirePackage { gbt7714 }
        \bibliographystyle { gbt7714-numerical }
      }
      {
        \RequirePackage [ style = gb7714-2015 ] { biblatex }
        \clist_map_inline:Nn \l__xdu_bib_file_clist { \addbibresource { #1 } }
      }
  }
\RequirePackage { environ }
\NewEnviron { appendixes }
  {
    \appendix
    \renewcommand { \thefigure } { \thechapter \arabic { figure } }
    \renewcommand { \thetable  } { \thechapter \arabic { table  } }
    \BODY
  }
\cs_new:Npn \__xdu_cover_i:nn #1#2
  {
    \vbox_to_ht:nn {12pt}
      {
        \mode_leave_vertical:
        \hfill
        \hbox:n
          {
            \__xdu_rm_family: \zihao { -4 } \bfseries
            \hbox_to_wd:nn { 3em } {  #1 }
            \skip_horizontal:n { 1em }
            \__xdu_uline:n { \hbox_to_wd:nn { 15ex } { \hfil #2 \hfil } }
            \skip_horizontal:n { 1.5cm }
          }
      }
  }
\cs_new:Npn \__xdu_cover_ii:nnn #1#2#3
  {
    \vbox_to_ht:nn {#1}
      {
        \mode_leave_vertical:
        \hfil
        \file_if_exist:nT { #3 }
          { \includegraphics [ height = #2, keepaspectratio ] { #3 } }
        \hfil
      }
  }
\cs_new:Npn \__xdu_cover_iii:nnnnn #1#2#3#4#5
  {
    \vbox_to_ht:nn {40pt}
      {
        \vfill
        \mode_leave_vertical:
        \hfil
        \hbox:n
          {
            \__xdu_rm_family:
            \zihao { 3 }
            \hbox_to_wd:nn { #1 } { \bfseries #2 }
            \skip_horizontal:n { 1em }
            \zihao { -3 }
            \__xdu_uline:n
              {
                \hbox_to_wd:nn { 16em }
                  { \hfil \use:c { __xdu_ #3 _family : } \zihao { #4 } #5 \hfil }
              }
          }
        \hfil
      }
  }
\cs_new_protected:Npn \__xdu_split_title:Nn #1#2
  {
    \seq_new:N \l__xdu_title_seq
    \tl_if_in:nnTF { #2 } { \\ }
      {
        \seq_set_split:Nnn \l__xdu_title_seq { \\ } { #2 }
        \clist_set_from_seq:NN #1 \l__xdu_title_seq
      }
      {
        \clist_put_right:Nx #1 { \tl_range:nnn { #2 } { 1  } { 14 } }
        \clist_put_right:Nx #1 { \tl_range:nnn { #2 } { 15 } { -1 } }
      }
  }
\cs_generate_variant:Nn \__xdu_split_title:Nn { NV }
\ctex_at_end_preamble:n
  {
    \cs_new:Npn \__xdu_cover_iii:nnnn #1#2#3#4
      {
        \tl_if_blank:VTF \l__xdu_supv_dept_str
          { \__xdu_cover_iii:nnnnn { 4em } { #1 } { #2 } { #3 } { #4 } }
          { \__xdu_cover_iii:nnnnn { 6em } { #1 } { #2 } { #3 } { #4 } }
      }
  }
\renewcommand{\frontmatter}
  {
    \loadgeometry { cover }
    \pagestyle    { empty }
    \dim_set:Nn \parindent { 0pt }
    \__xdu_add_bookmark:n { \__xdu_lang_switch:nn { 封面 } { Cover } }
    \__xdu_cover_i:nn   { 班级 } { \l__xdu_class_id_str   }
    \__xdu_cover_i:nn   { 学号 } { \l__xdu_student_id_str }
    \skip_vertical:n { 30pt }
    \__xdu_cover_ii:nnn { 65pt } { 35pt } { xidian-text.pdf }
    \vbox_to_ht:nn { 75pt }
      { \__xdu_sf_family: \zihao { 0 } \centering { 本科毕业设计论文 } }
    \__xdu_cover_ii:nnn { 130pt } { 120pt } { xidian-logo.pdf }
    \clist_new:N \l__xdu_title_clist
    \__xdu_split_title:NV \l__xdu_title_clist \l__xdu_title_str
    \str_set:Nx \l__xdu_title_i_str  { \clist_item:Nn  \l__xdu_title_clist { 1 } }
    \str_set:Nx \l__xdu_title_ii_str { \clist_item:Nn  \l__xdu_title_clist { 2 } }
    \__xdu_cover_iii:nnnn { 题目 } { sf } { 3 } { \l__xdu_title_i_str }
    \tl_if_blank:VF \l__xdu_title_ii_str
      { \__xdu_cover_iii:nnnn { } { sf } { 3 } { \l__xdu_title_ii_str } }
    \__xdu_cover_iii:nnnn { 学院     } { rm } { -3 } { \l__xdu_dept_str   }
    \__xdu_cover_iii:nnnn { 专业     } { rm } { -3 } { \l__xdu_major_str  }
    \__xdu_cover_iii:nnnn { 学生姓名 } { rm } { -3 } { \l__xdu_author_str }
    \tl_if_blank:VTF \l__xdu_supv_str
      {
        \__xdu_cover_iii:nnnn { 校外导师姓名 } { rm } { -3 } { \l__xdu_supv_ent_str }
        \__xdu_cover_iii:nnnn { 校内导师姓名 } { rm } { -3 } { \l__xdu_supv_sch_str }
      }
      {
        \__xdu_cover_iii:nnnn { 导师姓名 } { rm } { -3 } { \l__xdu_supv_str }
        \tl_if_blank:VF \l__xdu_supv_dept_str
          {
            \__xdu_cover_iii:nnnn
              { 院内导师姓名        }
              { rm                  }
              { -3                  }
              { \l__xdu_supv_dept_str }
          }
      }
    \cleardoublepage
    \loadgeometry  { main  }
    \pagestyle     { plain }
    \pagenumbering { Roman }
    \__xdu_n_chapter_head:n { 摘要 }
    {
      \dim_set:Nn \parindent { 2\ccwd }
      \rmfamily \zihao { -4 }
      \file_if_exist_input:n { \l__xdu_abstract_zh_tl }
    }
    {
      \sffamily \zihao { -4 } \par
      \__xdu_typeout_keywords:nNn { 关键词： } { \l__xdu_keywords_zh_clist } { \qquad }
    }
    \cleardoublepage
    \__xdu_n_chapter_head:nn {ABSTRACT} { \rmfamily \zihao{3} \bfseries \centering }
    {
      \dim_set:Nn \parindent { 2\ccwd }
      \rmfamily \zihao { -4 }
      \file_if_exist_input:n { \l__xdu_abstract_en_tl }
    }
    {
      \rmfamily \zihao { -4 } \bfseries \par
      \__xdu_typeout_keywords:nNn { Keywords： } { \l__xdu_keywords_en_clist } { \qquad }
    }
    \cleardoublepage
    \setcounter { tocdepth } { 5 }
    \tl_set:Nn \contentsname { \__xdu_lang_switch:nn { 目录 } { Contents } }
    \__xdu_add_bookmark:n { \contentsname }
    \tableofcontents
    \cleardoublepage
  }
\renewcommand{\mainmatter}
  {
    \loadgeometry  { main   }
    \pagestyle     { plain  }
    \pagenumbering { arabic }
    \dim_set:Nn \parindent { 2\ccwd }
    \rmfamily \zihao { -4 }
  }
\renewcommand{\backmatter}
  {
    \__xdu_n_chapter_head_toc:n { \__xdu_lang_switch:nn { 致谢 } { Acknowledgements } }
    {
      \dim_set:Nn \parindent { 2\ccwd }
      \rmfamily \zihao { -4 }
      \file_if_exist_input:n { \l__xdu_ack_tl }
    }
    \__xdu_add_toc:n { \__xdu_lang_switch:nn { 参考文献 } { Bibliography } }
    {
      \tl_if_eq:NnTF \l__xdu_bib_tool_tl { bibtex }
        {
          \__xdu_rm_family: \zihao { 5 }
          \bibliography { \l__xdu_bib_file_clist }
        }
        {
          \renewcommand { \bibfont } { \__xdu_rm_family: \zihao { 5 } }
          \printbibliography
        }
    }
  }
%% 
%%
%% End of file `xduugthesis.cls'.
