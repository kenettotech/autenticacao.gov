#include <cstdio>
#include "MyriadFontGlyphWidths.h"

namespace eIDMW
{

int MYRIAD_REGULAR_WIDTHS[] =
{
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 212, 230, 337, 497, 513, 792, 605, 188, 284, 284, 415, 596, 207, 307, 207, 343, 513, 513, 513, 513, 513, 513, 513, 513, 513, 513, 207, 207, 596, 596, 596, 406, 737, 612, 542, 580, 666, 492, 487, 646, 652, 239, 370, 542, 472, 804, 658, 689, 532, 689, 538, 493, 497, 647, 558, 846, 571, 541, 553, 284, 341, 284, 596, 500, 300, 482, 569, 448, 564, 501, 292, 559, 555, 234, 243, 469, 236, 834, 555, 549, 569, 563, 327, 396, 331, 551, 481, 736, 463, 471, 428, 284, 239, 284, 596, 0, 513, 0, 207, 513, 356, 1000, 500, 500, 300, 1156, 493, 255, 894, 0, 553, 0, 0, 207, 207, 354, 354, 282, 500, 1000, 300, 619, 396, 255, 863, 0, 428, 541, 212, 230, 513, 513, 513, 513, 239, 519, 300, 677, 346, 419, 596, 291, 419, 300, 318, 596, 311, 305, 300, 553, 512, 207, 300, 244, 355, 419, 759, 759, 759, 406, 612, 612, 612, 612, 612, 612, 788, 585, 492, 492, 492, 492, 239, 239, 239, 239, 671, 658, 689, 689, 689, 689, 689, 596, 689, 647, 647, 647, 647, 541, 531, 548, 482, 482, 482, 482, 482, 482, 773, 447, 501, 501, 501, 501, 234, 234, 234, 234, 541, 555, 549, 549, 549, 549, 549, 596, 549, 551, 551, 551, 551, 471, 569, 471
};

int MYRIAD_BOLD_WIDTHS[] =
{
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202, 268, 397, 550, 555, 880, 678, 205, 314, 314, 454, 596, 260, 322, 260, 331, 555, 555, 555, 555, 555, 555, 555, 555, 555, 555, 260, 260, 596, 596, 596, 445, 770, 656, 604, 595, 696, 534, 527, 682, 689, 285, 411, 614, 511, 846, 690, 717, 581, 717, 593, 540, 548, 682, 636, 888, 613, 603, 577, 314, 330, 314, 596, 500, 300, 528, 598, 451, 596, 528, 341, 585, 586, 274, 291, 542, 275, 860, 586, 577, 598, 595, 380, 434, 367, 583, 530, 759, 519, 523, 469, 314, 283, 314, 596, 0, 555, 0, 260, 555, 459, 1000, 524, 524, 300, 1285, 540, 270, 936, 0, 577, 0, 0, 260, 260, 454, 454, 338, 500, 1000, 300, 650, 434, 270, 868, 0, 469, 603, 202, 268, 555, 555, 555, 555, 283, 561, 300, 677, 378, 465, 596, 291, 459, 300, 356, 596, 352, 347, 300, 585, 542, 260, 300, 300, 386, 465, 831, 831, 831, 445, 656, 656, 656, 656, 656, 656, 868, 597, 534, 534, 534, 534, 285, 285, 285, 285, 704, 690, 717, 717, 717, 717, 717, 596, 717, 682, 682, 682, 682, 603, 580, 600, 528, 528, 528, 528, 528, 528, 803, 451, 528, 528, 528, 528, 274, 274, 274, 274, 574, 586, 577, 577, 577, 577, 577, 596, 577, 583, 583, 583, 583, 523, 598, 523
};

int MYRIAD_ITALIC_WIDTHS[] =
{
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 182, 236, 304, 492, 492, 773, 589, 166, 284, 284, 414, 596, 211, 307, 211, 326, 492, 492, 492, 492, 492, 492, 492, 492, 492, 492, 211, 211, 596, 596, 596, 384, 720, 568, 519, 555, 647, 470, 465, 623, 627, 233, 364, 515, 442, 780, 632, 668, 507, 668, 523, 466, 474, 621, 539, 829, 521, 517, 523, 284, 329, 284, 596, 500, 383, 522, 525, 423, 525, 453, 283, 524, 534, 229, 227, 456, 229, 808, 534, 522, 525, 525, 318, 373, 313, 526, 455, 707, 441, 441, 415, 284, 217, 284, 596, 0, 492, 0, 194, 492, 342, 1000, 483, 483, 383, 1124, 466, 245, 867, 0, 523, 0, 0, 194, 194, 342, 342, 277, 500, 1000, 383, 669, 373, 245, 800, 0, 415, 517, 182, 236, 492, 492, 492, 492, 217, 501, 383, 675, 350, 409, 596, 307, 395, 383, 318, 596, 298, 291, 383, 525, 494, 211, 383, 228, 345, 408, 751, 751, 751, 384, 568, 568, 568, 568, 568, 568, 773, 558, 470, 470, 470, 470, 233, 233, 233, 233, 654, 632, 668, 668, 668, 668, 668, 596, 667, 621, 621, 621, 621, 517, 507, 538, 522, 522, 522, 522, 522, 522, 718, 423, 453, 453, 453, 453, 229, 229, 229, 229, 516, 534, 522, 522, 522, 522, 522, 596, 523, 526, 526, 526, 526, 441, 526, 441
};

unsigned int getWidth(unsigned char c, MyriadFontType ft)
{
    switch(ft)
    {
       case MYRIAD_REGULAR:
         return MYRIAD_REGULAR_WIDTHS[c];

       case MYRIAD_ITALIC:
         return MYRIAD_ITALIC_WIDTHS[c];

       case MYRIAD_BOLD:
         return MYRIAD_BOLD_WIDTHS[c];
    }

    fprintf(stderr, "Illegal MyriadFontType arg: shouldn't be reached!\n");
    return 0;
};

}

