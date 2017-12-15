.class public final Lcom/creativemobi/engine/k;
.super Ljava/lang/Object;
.source "RaceView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# static fields
.field private static final G:[I

.field private static aE:F

.field private static aa:F

.field private static final ah:[I

.field private static bi:I

.field public static q:I

.field public static r:I

.field private static final s:[Ljava/lang/String;


# instance fields
.field private A:[F

.field private B:I

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Lcom/creativemobi/engine/m;

.field private F:I

.field private H:I

.field private I:Ljava/util/ArrayList;

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:Z

.field private Q:I

.field private R:Ljava/util/ArrayList;

.field private S:Landroid/os/Vibrator;

.field private T:Lcom/creativemobi/engine/bl;

.field private U:Z

.field private V:F

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:F

.field public a:Z

.field private aA:I

.field private aB:Z

.field private aC:I

.field private aD:Ljava/util/ArrayList;

.field private aF:F

.field private aG:F

.field private aH:F

.field private aI:I

.field private aJ:I

.field private aK:Ljava/util/Random;

.field private aL:Z

.field private aM:I

.field private aN:Ljava/lang/String;

.field private aO:Ljava/lang/String;

.field private aP:Ljava/lang/String;

.field private aQ:Ljava/lang/String;

.field private aR:Ljava/lang/String;

.field private aS:Ljava/lang/String;

.field private aT:Ljava/lang/String;

.field private aU:Ljava/lang/String;

.field private aV:Ljava/lang/String;

.field private aW:Ljava/lang/String;

.field private aX:F

.field private aY:F

.field private aZ:F

.field private ab:J

.field private ac:J

.field private ad:Z

.field private ae:Z

.field private af:Z

.field private ag:Z

.field private ai:I

.field private aj:Z

.field private ak:[Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/lang/String;

.field private aq:Landroid/graphics/Typeface;

.field private ar:Landroid/graphics/Typeface;

.field private as:Ljava/util/ArrayList;

.field private at:Ljava/util/ArrayList;

.field private au:Ljava/lang/String;

.field private av:Ljava/util/ArrayList;

.field private aw:Ljava/util/ArrayList;

.field private ax:Ljava/util/ArrayList;

.field private ay:F

.field private az:I

.field public b:I

.field private ba:J

.field private bb:Lcom/creativemobi/engine/x;

.field private bc:Lcom/creativemobi/engine/x;

.field private bd:Lcom/creativemobi/engine/x;

.field private be:Lcom/creativemobi/engine/x;

.field private bf:Lcom/creativemobi/engine/x;

.field private bg:Lcom/creativemobi/engine/x;

.field private bh:[Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:Lcom/creativemobi/engine/cg;

.field public h:Lcom/creativemobi/engine/cg;

.field public i:I

.field public j:I

.field k:Lcom/creativemobi/engine/m;

.field public l:Z

.field m:Z

.field n:J

.field o:Lcom/creativemobi/engine/cd;

.field p:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 27
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Green indicator tells you when to shift and launch assuming perfect traction, which is rarely the case."

    aput-object v2, v0, v1

    const-string v1, "If there is too much wheelspin, consider upgrading tires to improve grip, or shift earlier."

    aput-object v1, v0, v4

    const-string v1, "Use nitrous wisely \ufffd you only get one shot which lasts a few seconds."

    aput-object v1, v0, v5

    const-string v1, "Powerful and heavy cars generally do better in longer 1/2 mile races."

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "Remember that you can choose between 1/2 and 1/4 mile races, each with unique bosses."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Heavier cars need more power to accelerate, but also have more grip."

    aput-object v2, v0, v1

    const-string v1, "Four-wheel drive cars have lots of grip compared to RWD and FWD cars."

    aput-object v1, v0, v6

    const/4 v1, 0x7

    const-string v2, "Front-wheel drive cars suffer from excessive wheelspin as weight shifts toward the rear during acceleration."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Join us on facebook.com/DragRacingGame to get updates, gameplay hints, and talk to devs!"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Upgrading your car can move it to a higher class with tougher opposition!"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Unlock achievements to earn more respect points!"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Speed is not only about power: it also depends on weight, tires, gearing and aerodynamics."

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Tap the N2O button to use a shot of nitrous and increase power for a few seconds."

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Keep an eye on the car level - your ultimate machine can become useless in higher level races."

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Don\'t rush to spend all your money on upgrades! Try to find a perfect balance of power and grip on each level."

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "You can switch vibration and sound effects in the settings menu."

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Some cars are faster on paper than in a real drag race \ufffd test drive before you spend your hard-earned money!"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Don\'t be obsessed with perfect launch and shifts - you must find your winning strategy on your own."

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Doing 100% perfect shifts doesn\'t mean you do a perfect run - it\'s up to you to find the best strategy!"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Tuning your car only makes sense if you\'re near your level limit, otherwise you should invest in upgrades."

    aput-object v2, v0, v1

    sput-object v0, Lcom/creativemobi/engine/k;->s:[Ljava/lang/String;

    .line 89
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/creativemobi/engine/k;->G:[I

    .line 121
    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/creativemobi/engine/k;->aa:F

    .line 130
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/creativemobi/engine/k;->ah:[I

    .line 1574
    sput v4, Lcom/creativemobi/engine/k;->bi:I

    .line 1575
    sput v5, Lcom/creativemobi/engine/k;->q:I

    .line 1576
    sput v3, Lcom/creativemobi/engine/k;->r:I

    return-void

    .line 89
    :array_0
    .array-data 4
        0x1388
        0x1770
        0x1b58
        0x1f40
        0x2328
        0x2710
    .end array-data

    .line 130
    :array_1
    .array-data 4
        0x3e8
        0x7d0
        0xbb8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/high16 v1, 0x7fc00000    # NaNf

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->t:Z

    .line 61
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->a:Z

    .line 62
    iput v3, p0, Lcom/creativemobi/engine/k;->b:I

    .line 63
    iput v3, p0, Lcom/creativemobi/engine/k;->c:I

    .line 64
    iput v3, p0, Lcom/creativemobi/engine/k;->d:I

    .line 65
    iput v3, p0, Lcom/creativemobi/engine/k;->e:I

    .line 66
    iput v5, p0, Lcom/creativemobi/engine/k;->f:F

    .line 67
    const/16 v0, 0x190

    iput v0, p0, Lcom/creativemobi/engine/k;->u:I

    .line 68
    const/16 v0, 0x190

    iput v0, p0, Lcom/creativemobi/engine/k;->v:I

    .line 69
    iput-object v4, p0, Lcom/creativemobi/engine/k;->g:Lcom/creativemobi/engine/cg;

    .line 70
    iput-object v4, p0, Lcom/creativemobi/engine/k;->h:Lcom/creativemobi/engine/cg;

    .line 71
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/creativemobi/engine/k;->w:F

    .line 72
    iput v1, p0, Lcom/creativemobi/engine/k;->x:F

    .line 73
    iput v1, p0, Lcom/creativemobi/engine/k;->y:F

    .line 74
    iput v1, p0, Lcom/creativemobi/engine/k;->z:F

    .line 75
    iput-object v4, p0, Lcom/creativemobi/engine/k;->A:[F

    .line 76
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/creativemobi/engine/k;->B:I

    .line 77
    iput-object v4, p0, Lcom/creativemobi/engine/k;->C:Ljava/lang/String;

    .line 78
    iput v3, p0, Lcom/creativemobi/engine/k;->D:I

    .line 79
    iput v3, p0, Lcom/creativemobi/engine/k;->i:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/creativemobi/engine/k;->j:I

    .line 83
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->l:Z

    .line 94
    iput v3, p0, Lcom/creativemobi/engine/k;->H:I

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->I:Ljava/util/ArrayList;

    .line 96
    iput v3, p0, Lcom/creativemobi/engine/k;->J:I

    .line 97
    iput v3, p0, Lcom/creativemobi/engine/k;->K:I

    .line 98
    iput v3, p0, Lcom/creativemobi/engine/k;->L:I

    .line 99
    iput v3, p0, Lcom/creativemobi/engine/k;->M:I

    .line 100
    iput v3, p0, Lcom/creativemobi/engine/k;->N:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/creativemobi/engine/k;->O:I

    .line 104
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->P:Z

    .line 105
    iput v3, p0, Lcom/creativemobi/engine/k;->Q:I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->R:Ljava/util/ArrayList;

    .line 113
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->m:Z

    .line 114
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->U:Z

    .line 115
    iput v5, p0, Lcom/creativemobi/engine/k;->V:F

    .line 117
    iput-boolean v6, p0, Lcom/creativemobi/engine/k;->W:Z

    .line 118
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->X:Z

    .line 119
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->Y:Z

    .line 120
    iput v5, p0, Lcom/creativemobi/engine/k;->Z:F

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/creativemobi/engine/k;->ab:J

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/creativemobi/engine/k;->ac:J

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/creativemobi/engine/k;->n:J

    .line 126
    iput-boolean v6, p0, Lcom/creativemobi/engine/k;->ae:Z

    .line 127
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->af:Z

    .line 128
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->ag:Z

    .line 131
    iput v3, p0, Lcom/creativemobi/engine/k;->ai:I

    .line 132
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->aj:Z

    .line 135
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "crack1"

    aput-object v1, v0, v3

    const-string v1, "crack2"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "crack3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "spot"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wire1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "wire2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/creativemobi/engine/k;->ak:[Ljava/lang/String;

    .line 136
    const-string v0, "gearButtonDown"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->al:Ljava/lang/String;

    .line 137
    const-string v0, "gearButtonUP"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->am:Ljava/lang/String;

    .line 138
    const-string v0, "powerButton"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->an:Ljava/lang/String;

    .line 139
    const-string v0, "nitroButton"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->ao:Ljava/lang/String;

    .line 140
    const-string v0, "waitForPlayers"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->ap:Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->as:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->at:Ljava/util/ArrayList;

    .line 347
    const-string v0, "wheelSpin"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->au:Ljava/lang/String;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->av:Ljava/util/ArrayList;

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    .line 778
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    .line 779
    iput v5, p0, Lcom/creativemobi/engine/k;->ay:F

    .line 780
    const/16 v0, 0xa

    iput v0, p0, Lcom/creativemobi/engine/k;->az:I

    .line 781
    iput v3, p0, Lcom/creativemobi/engine/k;->aA:I

    .line 782
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->aB:Z

    .line 783
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/creativemobi/engine/k;->aC:I

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aD:Ljava/util/ArrayList;

    .line 983
    iput v5, p0, Lcom/creativemobi/engine/k;->aF:F

    .line 984
    iput v5, p0, Lcom/creativemobi/engine/k;->aG:F

    .line 986
    iput v5, p0, Lcom/creativemobi/engine/k;->aH:F

    .line 987
    const/16 v0, 0x14

    iput v0, p0, Lcom/creativemobi/engine/k;->aI:I

    .line 988
    const/16 v0, 0x96

    iput v0, p0, Lcom/creativemobi/engine/k;->aJ:I

    .line 989
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aK:Ljava/util/Random;

    .line 1001
    iput-boolean v6, p0, Lcom/creativemobi/engine/k;->aL:Z

    .line 1093
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->p:Z

    .line 1149
    const-string v0, "car1"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aN:Ljava/lang/String;

    .line 1150
    const-string v0, "car2"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aO:Ljava/lang/String;

    .line 1151
    const-string v0, "road1"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aP:Ljava/lang/String;

    .line 1152
    const-string v0, "road2"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aQ:Ljava/lang/String;

    .line 1153
    const-string v0, "arrow"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aR:Ljava/lang/String;

    .line 1154
    const-string v0, "advert1"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aS:Ljava/lang/String;

    .line 1155
    const-string v0, "advert2"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aT:Ljava/lang/String;

    .line 1156
    const-string v0, "bonusColor"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aU:Ljava/lang/String;

    .line 1157
    const-string v0, "indicators_large"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aV:Ljava/lang/String;

    .line 1158
    const-string v0, "shiftanimation"

    iput-object v0, p0, Lcom/creativemobi/engine/k;->aW:Ljava/lang/String;

    .line 1388
    iput v5, p0, Lcom/creativemobi/engine/k;->aX:F

    .line 1389
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/creativemobi/engine/k;->aY:F

    .line 1390
    iput v5, p0, Lcom/creativemobi/engine/k;->aZ:F

    .line 1394
    iput-object v4, p0, Lcom/creativemobi/engine/k;->bb:Lcom/creativemobi/engine/x;

    .line 1395
    iput-object v4, p0, Lcom/creativemobi/engine/k;->bc:Lcom/creativemobi/engine/x;

    .line 1397
    iput-object v4, p0, Lcom/creativemobi/engine/k;->bd:Lcom/creativemobi/engine/x;

    .line 1398
    iput-object v4, p0, Lcom/creativemobi/engine/k;->be:Lcom/creativemobi/engine/x;

    .line 1400
    iput-object v4, p0, Lcom/creativemobi/engine/k;->bf:Lcom/creativemobi/engine/x;

    .line 1401
    iput-object v4, p0, Lcom/creativemobi/engine/k;->bg:Lcom/creativemobi/engine/x;

    .line 1403
    const/16 v0, 0x1f4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/creativemobi/engine/k;->bh:[Ljava/lang/String;

    return-void
.end method

.method private static a(Lcom/creativemobi/engine/w;ILcom/creativemobi/engine/m;)F
    .locals 2

    .prologue
    .line 333
    :goto_0
    iget v0, p2, Lcom/creativemobi/engine/m;->f:F

    int-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 334
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p2, p0, v0, p1}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FI)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->n()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method static synthetic a(Lcom/creativemobi/engine/k;)Lcom/creativemobi/engine/bl;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    return-object v0
.end method

.method private a(J)V
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/ac;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/k;->S:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1330
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/w;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/k;->b(Lcom/creativemobi/engine/w;I)V

    return-void
.end method

.method private a(Lcom/creativemobi/engine/w;IIF)V
    .locals 11

    .prologue
    .line 382
    add-int/lit8 v7, p3, 0xa

    .line 383
    const/4 v0, 0x0

    .line 384
    const/16 v1, 0x1388

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    move v8, v0

    .line 391
    :goto_0
    float-to-int v0, p4

    mul-int/lit8 v1, v8, 0xf

    div-int/lit8 v1, v1, 0x2

    sub-int v9, v0, v1

    .line 392
    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, v8, :cond_6

    .line 393
    iget-object v0, p0, Lcom/creativemobi/engine/k;->av:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "star"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    const/16 v0, 0x1388

    if-eq p2, v0, :cond_5

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "star"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "starL"

    mul-int/lit8 v2, v10, 0xf

    add-int/2addr v2, v9

    invoke-virtual {p1, v0, v1, v2, v7}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 398
    const v1, 0x3f28f5c3    # 0.66f

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 405
    :goto_2
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 392
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_1

    .line 385
    :cond_0
    const/16 v1, 0x10cc

    if-lt p2, v1, :cond_1

    const/4 v0, 0x5

    move v8, v0

    goto :goto_0

    .line 386
    :cond_1
    const/16 v1, 0xdac

    if-lt p2, v1, :cond_2

    const/4 v0, 0x4

    move v8, v0

    goto :goto_0

    .line 387
    :cond_2
    const/16 v1, 0x9c4

    if-lt p2, v1, :cond_3

    const/4 v0, 0x3

    move v8, v0

    goto :goto_0

    .line 388
    :cond_3
    const/16 v1, 0x3e8

    if-lt p2, v1, :cond_4

    const/4 v0, 0x2

    move v8, v0

    goto/16 :goto_0

    .line 389
    :cond_4
    const/16 v1, 0x12c

    if-lt p2, v1, :cond_7

    const/4 v0, 0x1

    move v8, v0

    goto/16 :goto_0

    .line 402
    :cond_5
    const-string v1, "starRed"

    const-string v2, "graphics/starD.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const v4, 0x3f9a3d71    # 1.205f

    const v5, 0x3eeb851f    # 0.46f

    const v6, 0x3de147ae    # 0.11f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "star"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "starRed"

    mul-int/lit8 v2, v10, 0xf

    add-int/2addr v2, v9

    const/16 v3, 0xa

    sub-int v3, v7, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    goto :goto_2

    .line 407
    :cond_6
    return-void

    :cond_7
    move v8, v0

    goto/16 :goto_0
.end method

.method private static a(Lcom/creativemobi/engine/w;Ljava/lang/String;ILcom/creativemobi/engine/m;)V
    .locals 12

    .prologue
    const/16 v11, 0x37

    const/16 v10, 0xe

    const/16 v9, 0xc

    const/high16 v8, 0x425c0000    # 55.0f

    const/high16 v7, 0x3e800000    # 0.25f

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "texture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p3}, Lcom/creativemobi/engine/m;->P()F

    move-result v4

    invoke-virtual {p3}, Lcom/creativemobi/engine/m;->Q()F

    move-result v5

    invoke-virtual {p3}, Lcom/creativemobi/engine/m;->R()F

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_Details"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_Details"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "graphics/cars/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Detail.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 758
    :cond_0
    invoke-virtual {p0, p1, v1, v11, p2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 760
    invoke-virtual {v0, v9}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 761
    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Details"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v11, p2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 764
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 765
    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1_Disk1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/creativemobi/engine/m;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v8

    int-to-float v3, p2

    iget-object v4, p3, Lcom/creativemobi/engine/m;->b:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1_Disk2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/creativemobi/engine/m;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v8

    int-to-float v3, p2

    iget-object v4, p3, Lcom/creativemobi/engine/m;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1_Disk1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1_Disk2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "highlight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1_Disk1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/creativemobi/engine/cd;->h()F

    move-result v2

    invoke-virtual {p0, v0, v1, v8, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 775
    return-void
.end method

.method private static a(Lcom/creativemobi/engine/x;F)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 729
    invoke-virtual {p0}, Lcom/creativemobi/engine/x;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v3

    .line 731
    :goto_0
    invoke-virtual {p0}, Lcom/creativemobi/engine/x;->a()F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    .line 732
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0}, Lcom/creativemobi/engine/x;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    .line 734
    goto :goto_0

    .line 736
    :cond_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 737
    return-void

    :cond_1
    move-object v0, v1

    .line 736
    goto :goto_1
.end method

.method static synthetic b(Lcom/creativemobi/engine/k;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->ad:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->P:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WON_IN_A_ROW_ONLINE"

    invoke-static {v0, v1, v4}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "WON_IN_A_ROW_ONLINE"

    invoke-static {v1, v2, v0}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v1

    int-to-float v0, v0

    invoke-static {v1, v5, v0}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;IF)V

    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/k;->c:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;I)V

    :cond_1
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->ae:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1, v3}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;IF)V

    :cond_2
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->af:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1, v3}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;IF)V

    :cond_3
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->ag:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v0, v1, v3}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;IF)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/creativemobi/engine/k;->d()V

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->P:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WON_IN_A_ROW_ONLINE"

    invoke-static {v0, v1, v4}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private b(Lcom/creativemobi/engine/w;)V
    .locals 9

    .prologue
    .line 905
    iget-object v0, p0, Lcom/creativemobi/engine/k;->am:Ljava/lang/String;

    const-string v1, "shiftUp"

    const/16 v2, 0x244

    const/16 v3, 0x168

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 906
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 907
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 909
    iget-object v0, p0, Lcom/creativemobi/engine/k;->al:Ljava/lang/String;

    const-string v1, "shiftDown"

    const/16 v2, 0x68

    const/16 v3, 0x168

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 910
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 911
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 913
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/k;->ao:Ljava/lang/String;

    const-string v1, "nitroButtons"

    const/4 v2, 0x0

    const/16 v3, 0x17c

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 915
    :cond_0
    const-string v0, "panel"

    const-string v1, "panel"

    const/4 v2, 0x0

    const/16 v3, 0x12a

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 917
    const-string v0, "tachometer"

    const-string v1, "tachometer"

    const/16 v2, 0x122

    const/16 v3, 0x15c

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 919
    const-string v0, "arrow"

    const-string v1, "arrow"

    const/16 v2, 0x122

    const/16 v3, 0x1c0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 921
    const-string v0, "powerButton"

    const-string v1, "powerButton"

    const/16 v2, 0x2a8

    const/16 v3, 0xbe

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 923
    const-string v0, "race_track"

    const-string v1, "race_track"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 924
    const-string v0, "car1"

    const-string v1, "car1"

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 925
    const-string v0, "car2"

    const-string v1, "car2"

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 926
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/creativemobi/engine/k;->aO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 928
    :cond_1
    const-string v0, "road1"

    const-string v1, "road"

    const/4 v2, 0x0

    const/16 v3, 0x3c

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 929
    const-string v0, "road2"

    const-string v1, "road"

    const/16 v2, 0x54e

    const/16 v3, 0x3c

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 931
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0, p1}, Lcom/creativemobi/engine/m;->b(Lcom/creativemobi/engine/w;)F

    move-result v6

    .line 932
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v0, p1}, Lcom/creativemobi/engine/m;->b(Lcom/creativemobi/engine/w;)F

    move-result v7

    .line 933
    cmpl-float v0, v6, v7

    if-lez v0, :cond_2

    move v0, v6

    :goto_0
    sput v0, Lcom/creativemobi/engine/k;->aE:F

    .line 935
    iget-object v8, p0, Lcom/creativemobi/engine/k;->aD:Ljava/util/ArrayList;

    new-instance v0, Lcom/creativemobi/engine/j;

    const-string v3, "start"

    const/high16 v4, 0x42700000    # 60.0f

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/creativemobi/engine/j;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/w;Ljava/lang/String;FF)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    iget-object v8, p0, Lcom/creativemobi/engine/k;->aD:Ljava/util/ArrayList;

    new-instance v0, Lcom/creativemobi/engine/j;

    const-string v3, "finish"

    const/high16 v4, 0x42700000    # 60.0f

    iget v1, p0, Lcom/creativemobi/engine/k;->u:I

    int-to-float v5, v1

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/creativemobi/engine/j;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/w;Ljava/lang/String;FF)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    sget v0, Lcom/creativemobi/engine/k;->aE:F

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/creativemobi/engine/k;->aF:F

    .line 943
    sget v0, Lcom/creativemobi/engine/k;->aE:F

    sub-float/2addr v0, v7

    iput v0, p0, Lcom/creativemobi/engine/k;->aG:F

    .line 945
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    const/4 v1, 0x0

    iget v2, p0, Lcom/creativemobi/engine/k;->aG:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FF)V

    .line 946
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    const/4 v1, 0x0

    iget v2, p0, Lcom/creativemobi/engine/k;->aF:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FF)V

    .line 948
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    const v1, 0x44bb8000    # 1500.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 950
    const-string v0, "advert1"

    const-string v1, "advert"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 951
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 952
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 953
    const-string v0, "advert2"

    const-string v1, "advert"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 954
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 955
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 957
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->c(Lcom/creativemobi/engine/w;)V

    .line 959
    new-instance v0, Lcom/creativemobi/engine/cd;

    const-string v1, "poweranimation"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    const/16 v2, 0x2a6

    const/16 v3, 0xb8

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/cd;-><init>(Lcom/creativemobi/engine/l;II)V

    .line 960
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 961
    const-string v1, "poweranimation"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cd;Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    .line 963
    new-instance v0, Lcom/creativemobi/engine/cd;

    const-string v1, "shiftanimation"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    const/16 v2, 0x240

    const/16 v3, 0x15e

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/cd;-><init>(Lcom/creativemobi/engine/l;II)V

    .line 964
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 965
    const-string v1, "shiftanimation"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cd;Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    .line 967
    new-instance v0, Lcom/creativemobi/engine/cd;

    const-string v1, "girl"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/cd;-><init>(Lcom/creativemobi/engine/l;II)V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->o:Lcom/creativemobi/engine/cd;

    .line 968
    iget-object v0, p0, Lcom/creativemobi/engine/k;->o:Lcom/creativemobi/engine/cd;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 969
    iget-object v0, p0, Lcom/creativemobi/engine/k;->o:Lcom/creativemobi/engine/cd;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 970
    iget-object v7, p0, Lcom/creativemobi/engine/k;->aD:Ljava/util/ArrayList;

    new-instance v0, Lcom/creativemobi/engine/j;

    iget-object v3, p0, Lcom/creativemobi/engine/k;->o:Lcom/creativemobi/engine/cd;

    const-string v4, "girl"

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/creativemobi/engine/j;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/w;Lcom/creativemobi/engine/cd;Ljava/lang/String;FF)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    new-instance v3, Lcom/creativemobi/engine/cd;

    const-string v0, "shadow_small"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v3, v0, v1, v2}, Lcom/creativemobi/engine/cd;-><init>(Lcom/creativemobi/engine/l;II)V

    .line 973
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 975
    iget-object v7, p0, Lcom/creativemobi/engine/k;->aD:Ljava/util/ArrayList;

    new-instance v0, Lcom/creativemobi/engine/j;

    const-string v4, "girl_shadow"

    const/high16 v5, 0x43230000    # 163.0f

    const v6, -0x4151eb85    # -0.34f

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/creativemobi/engine/j;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/w;Lcom/creativemobi/engine/cd;Ljava/lang/String;FF)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 977
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/k;->b(Lcom/creativemobi/engine/w;I)V

    .line 978
    return-void

    :cond_2
    move v0, v7

    .line 933
    goto/16 :goto_0
.end method

.method private b(Lcom/creativemobi/engine/w;I)V
    .locals 13

    .prologue
    .line 416
    iput p2, p0, Lcom/creativemobi/engine/k;->O:I

    .line 417
    packed-switch p2, :pswitch_data_0

    .line 726
    :goto_0
    :pswitch_0
    return-void

    .line 422
    :pswitch_1
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bg:Lcom/creativemobi/engine/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->x()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/creativemobi/engine/bl;->g(I)I

    move-result v0

    const/16 v1, 0x8c

    iget-object v2, p0, Lcom/creativemobi/engine/k;->bg:Lcom/creativemobi/engine/x;

    iget v2, v2, Lcom/creativemobi/engine/x;->a:I

    int-to-float v2, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/w;IIF)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bf:Lcom/creativemobi/engine/x;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/creativemobi/engine/k;->D:I

    const/16 v1, 0x15

    iget-object v2, p0, Lcom/creativemobi/engine/k;->bf:Lcom/creativemobi/engine/x;

    iget v2, v2, Lcom/creativemobi/engine/x;->a:I

    int-to-float v2, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/w;IIF)V

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 426
    const-string v0, "poweranimation"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a([I)V

    .line 427
    const-string v0, "poweranimation"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/as;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/as;-><init>(Lcom/creativemobi/engine/k;)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/br;)V

    goto :goto_0

    .line 435
    :pswitch_2
    iget-object v0, p0, Lcom/creativemobi/engine/k;->av:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->I()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/creativemobi/engine/k;->H:I

    .line 437
    iget-object v0, p0, Lcom/creativemobi/engine/k;->an:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 438
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/creativemobi/engine/k;->ac:J

    .line 439
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->g()I

    move-result v0

    .line 441
    if-lez v0, :cond_3

    .line 442
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/16 v1, 0x19

    iput v1, p0, Lcom/creativemobi/engine/k;->N:I

    .line 448
    :goto_2
    new-instance v1, Lcom/creativemobi/engine/r;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/r;-><init>(Lcom/creativemobi/engine/k;)V

    .line 449
    const/4 v2, 0x0

    iput v2, v1, Lcom/creativemobi/engine/r;->d:I

    .line 450
    const-string v2, "start"

    iput-object v2, v1, Lcom/creativemobi/engine/r;->a:Ljava/lang/String;

    .line 451
    iput v0, v1, Lcom/creativemobi/engine/r;->b:I

    .line 452
    const/16 v0, 0xc8

    iput v0, v1, Lcom/creativemobi/engine/r;->c:I

    .line 453
    iget-object v0, p0, Lcom/creativemobi/engine/k;->at:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/creativemobi/engine/SoundManager;->a(IZ)V

    goto/16 :goto_0

    .line 444
    :cond_4
    const/16 v1, 0x32

    iput v1, p0, Lcom/creativemobi/engine/k;->N:I

    .line 445
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/creativemobi/engine/k;->t:Z

    goto :goto_2

    .line 460
    :pswitch_3
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->a:Z

    if-eqz v0, :cond_5

    .line 461
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->x()I

    move-result v1

    .line 462
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    iget v2, p0, Lcom/creativemobi/engine/k;->v:I

    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->n()I

    move-result v3

    invoke-direct {p0}, Lcom/creativemobi/engine/k;->e()[B

    iget v4, p0, Lcom/creativemobi/engine/k;->L:I

    iget-object v5, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->n()I

    move-result v5

    int-to-float v5, v5

    invoke-interface/range {v0 .. v5}, Lcom/creativemobi/engine/bl;->a(IIIIF)V

    .line 464
    iget-object v0, p0, Lcom/creativemobi/engine/k;->ap:Ljava/lang/String;

    iget-object v1, p0, Lcom/creativemobi/engine/k;->ap:Ljava/lang/String;

    const/16 v2, 0x190

    const/16 v3, 0x64

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 465
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 466
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 467
    const v1, 0x3f733333    # 0.95f

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 468
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/at;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/at;-><init>(Lcom/creativemobi/engine/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 481
    :cond_5
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/creativemobi/engine/k;->n:J

    .line 482
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 486
    :pswitch_4
    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->d()V

    .line 487
    :goto_3
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    iget v1, p0, Lcom/creativemobi/engine/k;->u:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 488
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    const/high16 v1, 0x41a00000    # 20.0f

    iget v2, p0, Lcom/creativemobi/engine/k;->u:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FI)V

    goto :goto_3

    .line 490
    :cond_6
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->f()Lcom/creativemobi/engine/bo;

    move-result-object v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->B()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v1

    .line 496
    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->d()V

    .line 497
    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/m;->a([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_4
    iget v2, v1, Lcom/creativemobi/engine/m;->f:F

    iget v3, p0, Lcom/creativemobi/engine/k;->u:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 505
    const/high16 v2, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/creativemobi/engine/k;->u:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FI)V

    goto :goto_4

    .line 498
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 509
    :cond_7
    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->x()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 511
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->i()V

    .line 512
    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->m()V

    .line 513
    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->n()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->n()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 514
    const v3, 0x3fa66666    # 1.3f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_a

    const v1, 0x3fa66666    # 1.3f

    .line 517
    :cond_8
    :goto_5
    const-string v3, "summary"

    const-string v4, "summary"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 519
    iget-boolean v3, p0, Lcom/creativemobi/engine/k;->ad:Z

    if-eqz v3, :cond_b

    const/4 v3, -0x1

    .line 520
    :goto_6
    iget-boolean v4, p0, Lcom/creativemobi/engine/k;->ad:Z

    if-eqz v4, :cond_c

    const/16 v4, -0x113b

    .line 522
    :goto_7
    new-instance v5, Lcom/creativemobi/engine/x;

    const-string v6, "YOU WIN!"

    const/16 v7, 0x32

    const/16 v8, 0x87

    invoke-direct {v5, v6, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 523
    iget-boolean v6, p0, Lcom/creativemobi/engine/k;->ad:Z

    if-nez v6, :cond_9

    new-instance v5, Lcom/creativemobi/engine/x;

    const-string v6, "YOU LOSE!"

    const/16 v7, 0x32

    const/16 v8, 0x87

    invoke-direct {v5, v6, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 524
    :cond_9
    const/16 v6, 0x23

    const/high16 v7, -0x1000000

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 525
    iget-object v6, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v5, Lcom/creativemobi/engine/x;

    const-string v6, "WINNINGS"

    const/16 v7, 0x1b3

    const/16 v8, 0x87

    invoke-direct {v5, v6, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 528
    const/16 v6, 0x23

    const/high16 v7, -0x1000000

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 529
    iget-object v6, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v5, Lcom/creativemobi/engine/x;

    const-string v6, ""

    const/16 v7, 0x32

    const/16 v8, 0x1b8

    invoke-direct {v5, v6, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 532
    const/16 v6, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 534
    sget-object v6, Lcom/creativemobi/engine/k;->s:[Ljava/lang/String;

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    sget-object v8, Lcom/creativemobi/engine/k;->s:[Ljava/lang/String;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v7

    const/16 v8, 0x244

    invoke-static {v6, v7, v8}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 536
    const/16 v7, 0x1b5

    .line 537
    const-string v8, "hint"

    const-string v9, "hint"

    const/16 v10, 0x29

    const/16 v11, 0x19c

    invoke-virtual {p1, v8, v9, v10, v11}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 538
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v12, v7

    move-object v7, v5

    move v5, v12

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 539
    new-instance v7, Lcom/creativemobi/engine/x;

    const/16 v8, 0x50

    invoke-direct {v7, p2, v8, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 540
    const/16 v8, 0x18

    const/4 v9, -0x1

    sget-object v10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v11, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 541
    iget-object v8, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    add-int/lit8 v5, v5, 0x19

    goto :goto_8

    .line 515
    :cond_a
    const v3, 0x3e99999a    # 0.3f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_8

    const v1, 0x3e99999a    # 0.3f

    goto/16 :goto_5

    .line 519
    :cond_b
    const/16 v3, -0x113b

    goto/16 :goto_6

    .line 520
    :cond_c
    const/4 v4, -0x1

    goto/16 :goto_7

    .line 547
    :cond_d
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    new-instance v5, Lcom/creativemobi/engine/x;

    const-string v6, "%1$s s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->n()I

    move-result v9

    invoke-static {v9}, Lcom/creativemobi/engine/k;->e(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x15e

    const/16 v8, 0xb4

    invoke-direct {v5, v6, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 550
    const/16 v6, 0x1e

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v8, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6, v4, v7, v8}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 551
    invoke-virtual {v5}, Lcom/creativemobi/engine/x;->a()F

    move-result v6

    .line 552
    iget-object v7, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    new-instance v5, Lcom/creativemobi/engine/x;

    const-string v7, "%1$s s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v10}, Lcom/creativemobi/engine/m;->n()I

    move-result v10

    invoke-static {v10}, Lcom/creativemobi/engine/k;->e(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x15e

    const/16 v9, 0xdc

    invoke-direct {v5, v7, v8, v9}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 555
    const/16 v7, 0x1e

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7, v3, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 556
    iget-object v7, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    iget v5, p0, Lcom/creativemobi/engine/k;->u:I

    const/16 v7, 0x190

    if-ne v5, v7, :cond_16

    .line 559
    iget v0, v0, Lcom/creativemobi/engine/bo;->i:F

    iget-object v5, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->n()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_e

    const-string v0, "arrowUpTime"

    const-string v5, "arrowUP"

    const/16 v7, 0x166

    const/16 v8, 0xa0

    invoke-virtual {p1, v0, v5, v7, v8}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 562
    :cond_e
    :goto_9
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v5, "MAX SPEED:"

    const/16 v7, 0x37

    const/16 v8, 0x104

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 563
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 564
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    new-instance v0, Lcom/creativemobi/engine/x;

    iget-object v5, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v5}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->r()F

    move-result v7

    invoke-static {v5}, Lcom/creativemobi/engine/ac;->h(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x3fcdfefc

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "km/h"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_a
    const/16 v7, 0x160

    const/16 v8, 0x104

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 567
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 568
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x6

    invoke-static {v0, v5}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;I)F

    move-result v0

    iget-object v5, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->r()F

    move-result v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_f

    const-string v0, "arrowUpMaxSpeed"

    const-string v5, "arrowUP"

    const/16 v7, 0x166

    const/16 v8, 0xf0

    invoke-virtual {p1, v0, v5, v7, v8}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 573
    :cond_f
    new-instance v0, Lcom/creativemobi/engine/x;

    iget-object v5, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v5}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/creativemobi/engine/ac;->h(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "0-100 km/h:"

    :goto_b
    const/16 v7, 0x37

    const/16 v8, 0x11d

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 574
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 575
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->p()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v5, "N/A"

    const/16 v7, 0x160

    const/16 v8, 0x11d

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 579
    :goto_c
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 580
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x3

    invoke-static {v0, v5}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;I)F

    move-result v0

    iget-object v5, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->p()F

    move-result v5

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v5, v7

    cmpl-float v0, v0, v5

    if-lez v0, :cond_10

    const-string v0, "arrowUp60"

    const-string v5, "arrowUP"

    const/16 v7, 0x166

    const/16 v8, 0x10b

    invoke-virtual {p1, v0, v5, v7, v8}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 585
    :cond_10
    new-instance v0, Lcom/creativemobi/engine/x;

    iget-object v5, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v5}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/creativemobi/engine/ac;->h(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "0-160 km/h:"

    :goto_d
    const/16 v7, 0x37

    const/16 v8, 0x136

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 586
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 587
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->o()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v5, "N/A"

    const/16 v7, 0x160

    const/16 v8, 0x136

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 591
    :goto_e
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 592
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v5, "1/4mi:"

    const/16 v7, 0x37

    const/16 v8, 0x14f

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 595
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 596
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v5, "%.2f s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->C()F

    move-result v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x160

    const/16 v8, 0x14f

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 599
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 600
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v5, "PERFECT SHIFTS:"

    const/16 v7, 0x37

    const/16 v8, 0x168

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 603
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 604
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/creativemobi/engine/k;->L:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/creativemobi/engine/k;->M:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x160

    const/16 v8, 0x168

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 607
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 608
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v5, "RACE RATING:"

    const/16 v7, 0x37

    const/16 v8, 0x181

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 611
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 612
    iget-object v5, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v5, "RACE BONUS:"

    const/16 v7, 0x1b3

    const/16 v8, 0xc8

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 615
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 616
    iget-object v5, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v7, Lcom/creativemobi/engine/bf;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v0, v8}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    int-to-float v5, v2

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 620
    new-instance v5, Lcom/creativemobi/engine/x;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e4

    const/16 v9, 0xc8

    invoke-direct {v5, v7, v8, v9}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 621
    const/16 v7, 0x1c

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v10, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 622
    iget-object v7, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v8, Lcom/creativemobi/engine/bf;

    invoke-direct {v8, p0, v5, v0}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    new-instance v5, Lcom/creativemobi/engine/x;

    const-string v7, "LAUNCH BONUS:"

    const/16 v8, 0x1b3

    const/16 v9, 0xe1

    invoke-direct {v5, v7, v8, v9}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 625
    const/16 v7, 0x1c

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v10, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 626
    iget-object v7, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v8, Lcom/creativemobi/engine/bf;

    invoke-direct {v8, p0, v5, v0}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    iget v5, p0, Lcom/creativemobi/engine/k;->N:I

    mul-int/2addr v5, v2

    iput v5, p0, Lcom/creativemobi/engine/k;->N:I

    .line 629
    iget v5, p0, Lcom/creativemobi/engine/k;->N:I

    add-int/2addr v0, v5

    .line 631
    new-instance v5, Lcom/creativemobi/engine/x;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/creativemobi/engine/k;->N:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e4

    const/16 v9, 0xe1

    invoke-direct {v5, v7, v8, v9}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 632
    const/16 v7, 0x1c

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v10, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 633
    iget-object v7, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v8, Lcom/creativemobi/engine/bf;

    invoke-direct {v8, p0, v5, v0}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance v5, Lcom/creativemobi/engine/x;

    const-string v7, "PERFECT SHIFT:"

    const/16 v8, 0x1b3

    const/16 v9, 0xfa

    invoke-direct {v5, v7, v8, v9}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 636
    const/16 v7, 0x1c

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v10, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 637
    iget-object v7, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v8, Lcom/creativemobi/engine/bf;

    invoke-direct {v8, p0, v5, v0}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    iget v5, p0, Lcom/creativemobi/engine/k;->L:I

    mul-int/lit8 v5, v5, 0x19

    mul-int/2addr v5, v2

    .line 640
    add-int/2addr v0, v5

    .line 642
    new-instance v7, Lcom/creativemobi/engine/x;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x2e4

    const/16 v9, 0xfa

    invoke-direct {v7, v5, v8, v9}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 643
    const/16 v5, 0x1c

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v10, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v7, v5, v8, v9, v10}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 644
    iget-object v5, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v8, Lcom/creativemobi/engine/bf;

    invoke-direct {v8, p0, v7, v0}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    new-instance v5, Lcom/creativemobi/engine/x;

    const-string v7, "GOOD SHIFT:"

    const/16 v8, 0x1b3

    const/16 v9, 0x113

    invoke-direct {v5, v7, v8, v9}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 647
    const/16 v7, 0x1c

    const/4 v8, -0x1

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v10, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v7, v8, v9, v10}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 648
    iget-object v7, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v8, Lcom/creativemobi/engine/bf;

    invoke-direct {v8, p0, v5, v0}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget v5, p0, Lcom/creativemobi/engine/k;->K:I

    mul-int/lit8 v5, v5, 0xf

    mul-int/2addr v2, v5

    .line 651
    add-int/2addr v0, v2

    .line 653
    new-instance v5, Lcom/creativemobi/engine/x;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x2e4

    const/16 v8, 0x113

    invoke-direct {v5, v2, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 654
    const/16 v2, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v2, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 655
    iget-object v2, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v7, Lcom/creativemobi/engine/bf;

    invoke-direct {v7, p0, v5, v0}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v2, Lcom/creativemobi/engine/x;

    const-string v5, "RACE PRIZE:"

    const/16 v7, 0x1b3

    const/16 v8, 0x12c

    invoke-direct {v2, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 658
    const/16 v5, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v2, v5, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 659
    iget-object v5, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v7, Lcom/creativemobi/engine/bf;

    invoke-direct {v7, p0, v2, v0}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    iget-boolean v2, p0, Lcom/creativemobi/engine/k;->ad:Z

    if-eqz v2, :cond_1c

    iget v2, p0, Lcom/creativemobi/engine/k;->e:I

    .line 662
    :goto_f
    add-int/2addr v0, v2

    .line 664
    new-instance v5, Lcom/creativemobi/engine/x;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x2e4

    const/16 v8, 0x12c

    invoke-direct {v5, v2, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 665
    const/16 v2, 0x1c

    const/4 v7, -0x1

    sget-object v8, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v9, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v5, v2, v7, v8, v9}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 666
    iget-object v2, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v7, Lcom/creativemobi/engine/bf;

    invoke-direct {v7, p0, v5, v0}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    iput v0, p0, Lcom/creativemobi/engine/k;->az:I

    .line 670
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->ad:Z

    if-eqz v0, :cond_11

    .line 671
    iget v0, p0, Lcom/creativemobi/engine/k;->d:I

    iput v0, p0, Lcom/creativemobi/engine/k;->aA:I

    .line 672
    iget v0, p0, Lcom/creativemobi/engine/k;->d:I

    if-lez v0, :cond_11

    .line 673
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v2, "RESPECT WON:"

    const/16 v5, 0x1b3

    const/16 v7, 0x14a

    invoke-direct {v0, v2, v5, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 674
    const/16 v2, 0x20

    const v5, -0x2676e5

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v8, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v5, v7, v8}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 675
    iget-object v2, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v5, Lcom/creativemobi/engine/bf;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v0, v7}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/creativemobi/engine/k;->d:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x2e4

    const/16 v7, 0x14a

    invoke-direct {v0, v2, v5, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 678
    const/16 v2, 0x20

    const v5, -0x2676e5

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v8, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v5, v7, v8}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 679
    iget-object v2, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    new-instance v5, Lcom/creativemobi/engine/bf;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v0, v7}, Lcom/creativemobi/engine/bf;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/x;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_11
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bf:Lcom/creativemobi/engine/x;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/creativemobi/engine/k;->bg:Lcom/creativemobi/engine/x;

    if-nez v0, :cond_1d

    .line 684
    :cond_12
    const-string v0, "opponentCar"

    const/16 v2, 0xc8

    iget-object v3, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    invoke-static {p1, v0, v2, v3}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;ILcom/creativemobi/engine/m;)V

    .line 685
    const-string v0, "heroCar"

    const/16 v2, 0xa0

    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-static {p1, v0, v2, v3}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;ILcom/creativemobi/engine/m;)V

    .line 698
    :goto_10
    const/4 v0, 0x3

    .line 699
    float-to-double v2, v1

    const-wide v4, 0x3fefd70a3d70a3d7L    # 0.995

    cmpg-double v2, v2, v4

    if-gez v2, :cond_13

    add-int/lit8 v0, v0, -0x1

    .line 700
    :cond_13
    const v2, 0x3f733333    # 0.95f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_14

    .line 701
    add-int/lit8 v0, v0, -0x1

    .line 704
    :cond_14
    const v2, 0x3f666666    # 0.9f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_15

    iget-boolean v1, p0, Lcom/creativemobi/engine/k;->ad:Z

    if-nez v1, :cond_15

    add-int/lit8 v0, v0, -0x1

    .line 706
    :cond_15
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_1e

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "star"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "starL"

    mul-int/lit8 v4, v1, 0x1e

    add-int/lit16 v4, v4, 0x10e

    const/16 v5, 0x16d

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v2

    .line 709
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 707
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 560
    :cond_16
    iget v0, v0, Lcom/creativemobi/engine/bo;->j:F

    iget-object v5, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->n()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_e

    const-string v0, "arrowUpTime"

    const-string v5, "arrowUP"

    const/16 v7, 0x166

    const/16 v8, 0xa0

    invoke-virtual {p1, v0, v5, v7, v8}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    goto/16 :goto_9

    .line 566
    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "mph"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_a

    .line 573
    :cond_18
    const-string v5, "0-60 mph:"

    goto/16 :goto_b

    .line 578
    :cond_19
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v5, "%.2f s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->p()F

    move-result v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x160

    const/16 v8, 0x11d

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_c

    .line 585
    :cond_1a
    const-string v5, "0-100 mph:"

    goto/16 :goto_d

    .line 590
    :cond_1b
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v5, "%.2f s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->o()F

    move-result v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x160

    const/16 v8, 0x136

    invoke-direct {v0, v5, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_e

    .line 661
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 687
    :cond_1d
    new-instance v0, Lcom/creativemobi/engine/x;

    iget-object v2, p0, Lcom/creativemobi/engine/k;->C:Ljava/lang/String;

    const/16 v5, 0x37

    const/16 v7, 0xdc

    invoke-direct {v0, v2, v5, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 688
    const/16 v2, 0x20

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v3, v5, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 689
    const v2, 0x43898000    # 275.0f

    sub-float/2addr v2, v6

    invoke-static {v0, v2}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/x;F)V

    .line 690
    iget-object v2, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    new-instance v0, Lcom/creativemobi/engine/x;

    iget-object v2, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v2}, Lcom/creativemobi/engine/bl;->h()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x37

    const/16 v5, 0xb4

    invoke-direct {v0, v2, v3, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 693
    const/16 v2, 0x20

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v4, v3, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 694
    const v2, 0x43898000    # 275.0f

    sub-float/2addr v2, v6

    invoke-static {v0, v2}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/x;F)V

    .line 695
    iget-object v2, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 712
    :cond_1e
    :goto_12
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1f

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "star"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "starD"

    mul-int/lit8 v3, v0, 0x1e

    add-int/lit16 v3, v3, 0x10e

    const/16 v4, 0x16d

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    .line 714
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 712
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 717
    :cond_1f
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x190

    const/16 v3, 0x64

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 718
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 719
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 721
    const-string v0, "race_result"

    const-string v1, "race_result"

    const/16 v2, 0x2a8

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 723
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    goto/16 :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 426
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private b(Lcom/creativemobi/engine/w;J)V
    .locals 7

    .prologue
    const/16 v5, 0x181

    const/16 v4, 0x1c

    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 786
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->aB:Z

    if-nez v0, :cond_1

    .line 787
    iput-boolean v1, p0, Lcom/creativemobi/engine/k;->aB:Z

    .line 788
    invoke-static {v1}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    .line 790
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->ad:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/k;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 791
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/au;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/au;-><init>(Lcom/creativemobi/engine/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 800
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/av;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/av;-><init>(Lcom/creativemobi/engine/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 808
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/x;

    .line 809
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    goto :goto_0

    .line 811
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/k;->ax:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/bf;

    .line 812
    iget-object v2, v0, Lcom/creativemobi/engine/bf;->a:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 813
    iget v0, v0, Lcom/creativemobi/engine/bf;->b:I

    iget v2, p0, Lcom/creativemobi/engine/k;->ay:F

    float-to-int v2, v2

    if-le v0, v2, :cond_3

    .line 816
    :cond_4
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "TOTAL:"

    const/16 v2, 0x1b3

    invoke-direct {v0, v1, v2, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 817
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 818
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 820
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/k;->ay:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e4

    invoke-direct {v0, v1, v2, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 821
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 822
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 824
    iget v0, p0, Lcom/creativemobi/engine/k;->ay:F

    long-to-float v1, p2

    iget v2, p0, Lcom/creativemobi/engine/k;->az:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/creativemobi/engine/k;->aC:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/k;->ay:F

    .line 825
    iget v0, p0, Lcom/creativemobi/engine/k;->ay:F

    iget v1, p0, Lcom/creativemobi/engine/k;->az:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 826
    const-string v0, "nextButton"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_7

    .line 827
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->x()I

    move-result v0

    .line 828
    iget-boolean v1, p0, Lcom/creativemobi/engine/k;->P:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/creativemobi/engine/k;->v:I

    invoke-direct {p0}, Lcom/creativemobi/engine/k;->e()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/bp;->a(II[B)V

    .line 829
    :cond_5
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    iget-boolean v1, p0, Lcom/creativemobi/engine/k;->ad:Z

    iget v2, p0, Lcom/creativemobi/engine/k;->az:I

    iget v3, p0, Lcom/creativemobi/engine/k;->aA:I

    iget v4, p0, Lcom/creativemobi/engine/k;->u:I

    iget v5, p0, Lcom/creativemobi/engine/k;->L:I

    iget-object v6, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v6}, Lcom/creativemobi/engine/m;->n()I

    move-result v6

    int-to-float v6, v6

    invoke-interface/range {v0 .. v6}, Lcom/creativemobi/engine/bl;->a(ZIIIIF)V

    .line 830
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->ad:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/creativemobi/engine/k;->j:I

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/k;->j:I

    iget v2, p0, Lcom/creativemobi/engine/k;->u:I

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;II)V

    .line 832
    :cond_6
    const-string v0, "nextButton"

    const-string v1, "nextButton"

    const/16 v2, 0x294

    const/16 v3, 0x1a9

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 835
    :cond_7
    iget v0, p0, Lcom/creativemobi/engine/k;->az:I

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/k;->ay:F

    .line 837
    :cond_8
    return-void
.end method

.method static synthetic c(Lcom/creativemobi/engine/k;)V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    iget v1, p0, Lcom/creativemobi/engine/k;->J:I

    iget-object v2, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    iget v3, p0, Lcom/creativemobi/engine/k;->J:I

    invoke-interface {v2, v3}, Lcom/creativemobi/engine/bl;->g(I)I

    move-result v2

    iget v3, p0, Lcom/creativemobi/engine/k;->b:I

    invoke-static {v3}, Lcom/creativemobi/engine/ac;->a(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->e(II)V

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    const-string v1, "Connection failed, please try again later"

    invoke-interface {v0, v1}, Lcom/creativemobi/engine/bl;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/bd;

    invoke-direct {v1}, Lcom/creativemobi/engine/bd;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    return-void
.end method

.method private c(Lcom/creativemobi/engine/w;)V
    .locals 6

    .prologue
    const v3, 0x44a9e000    # 1359.0f

    const/high16 v5, 0x42700000    # 60.0f

    const/4 v4, 0x0

    .line 1133
    const/high16 v0, -0x3f000000    # -8.0f

    invoke-virtual {p0, p1, v0}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/w;F)F

    move-result v0

    .line 1135
    rem-float v1, v0, v3

    .line 1137
    iget-object v2, p0, Lcom/creativemobi/engine/k;->aP:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 1138
    iget-object v2, p0, Lcom/creativemobi/engine/k;->aQ:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v1, v3

    invoke-virtual {v2, v1, v5}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 1140
    const/high16 v1, 0x44c80000    # 1600.0f

    rem-float/2addr v0, v1

    .line 1142
    iget-object v1, p0, Lcom/creativemobi/engine/k;->aS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 1143
    iget-object v1, p0, Lcom/creativemobi/engine/k;->aT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    const v2, 0x44c58000    # 1580.0f

    add-float/2addr v0, v2

    invoke-virtual {v1, v0, v4}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 1145
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/j;

    invoke-virtual {v0, p1}, Lcom/creativemobi/engine/j;->a(Lcom/creativemobi/engine/w;)V

    .line 1145
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1147
    :cond_0
    return-void
.end method

.method private c(Lcom/creativemobi/engine/w;I)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1161
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 1164
    if-eqz p2, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 1166
    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/ac;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/k;->aV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 1169
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 1183
    :goto_0
    :pswitch_0
    return-void

    .line 1171
    :pswitch_1
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 1172
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->c(I)V

    goto :goto_0

    .line 1175
    :pswitch_2
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 1176
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->c(I)V

    goto :goto_0

    .line 1179
    :pswitch_3
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 1180
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->c(I)V

    goto :goto_0

    .line 1169
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c(Lcom/creativemobi/engine/w;J)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x5dc

    const/high16 v5, 0x447a0000    # 1000.0f

    const/high16 v4, 0x40a00000    # 5.0f

    .line 1004
    iget-wide v0, p0, Lcom/creativemobi/engine/k;->n:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/creativemobi/engine/k;->n:J

    .line 1005
    iget-wide v0, p0, Lcom/creativemobi/engine/k;->n:J

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->a:Z

    if-nez v0, :cond_1

    .line 1006
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/k;->b(Lcom/creativemobi/engine/w;I)V

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    const/16 v0, 0x61a8

    .line 1011
    iget-boolean v1, p0, Lcom/creativemobi/engine/k;->a:Z

    if-eqz v1, :cond_2

    .line 1012
    const/16 v0, 0x1388

    .line 1013
    iget-object v1, p0, Lcom/creativemobi/engine/k;->ap:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    .line 1014
    if-eqz v1, :cond_2

    .line 1015
    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->a()F

    move-result v2

    .line 1016
    iget-boolean v3, p0, Lcom/creativemobi/engine/k;->aL:Z

    if-eqz v3, :cond_4

    .line 1017
    const v3, 0x3f866666    # 1.05f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    long-to-float v3, p2

    div-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 1024
    :goto_1
    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 1028
    :cond_2
    iget-object v1, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v1, v1, Lcom/creativemobi/engine/m;->f:F

    iget v2, p0, Lcom/creativemobi/engine/k;->u:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    iget-object v1, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    long-to-float v2, p2

    invoke-virtual {v1, v2, v0}, Lcom/creativemobi/engine/m;->a(FI)V

    .line 1031
    :goto_2
    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    long-to-float v2, p2

    invoke-virtual {v1, v2, v0}, Lcom/creativemobi/engine/m;->a(FI)V

    .line 1033
    invoke-direct {p0, p1, p2, p3}, Lcom/creativemobi/engine/k;->d(Lcom/creativemobi/engine/w;J)V

    .line 1035
    invoke-direct {p0, p1, p2, p3}, Lcom/creativemobi/engine/k;->g(Lcom/creativemobi/engine/w;J)V

    .line 1037
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->c(Lcom/creativemobi/engine/w;)V

    .line 1039
    invoke-direct {p0, p1, p2, p3}, Lcom/creativemobi/engine/k;->e(Lcom/creativemobi/engine/w;J)V

    .line 1041
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->a:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/creativemobi/engine/k;->n:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 1043
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/ap;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/ap;-><init>(Lcom/creativemobi/engine/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1018
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->aL:Z

    goto :goto_1

    .line 1020
    :cond_4
    const v3, 0x3f733333    # 0.95f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    long-to-float v3, p2

    div-float/2addr v3, v5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    goto :goto_1

    .line 1021
    :cond_5
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->aL:Z

    goto :goto_1

    .line 1029
    :cond_6
    iget-object v1, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    long-to-float v2, p2

    iget v3, p0, Lcom/creativemobi/engine/k;->u:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FI)V

    goto :goto_2
.end method

.method private d()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 840
    iget v0, p0, Lcom/creativemobi/engine/k;->u:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 841
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->n()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/be;->c(Landroid/content/Context;IF)V

    .line 843
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v0, v4, v1}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;IF)V

    .line 849
    :goto_0
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->r()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;IF)V

    .line 851
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x7

    iget v2, p0, Lcom/creativemobi/engine/k;->L:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;IF)V

    .line 852
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;I)V

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->p()F

    move-result v2

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/be;->c(Landroid/content/Context;IF)V

    .line 857
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 859
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/be;

    .line 860
    iget-object v2, v0, Lcom/creativemobi/engine/be;->b:Ljava/lang/String;

    iget v0, v0, Lcom/creativemobi/engine/be;->f:I

    iget-object v3, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v3}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/creativemobi/engine/ao;

    invoke-direct {v4, p0, v2, v0}, Lcom/creativemobi/engine/ao;-><init>(Lcom/creativemobi/engine/k;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->n()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/be;->c(Landroid/content/Context;IF)V

    .line 846
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v4, v1}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;IF)V

    goto/16 :goto_0

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;)V

    .line 863
    return-void
.end method

.method static synthetic d(Lcom/creativemobi/engine/k;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/creativemobi/engine/k;->d()V

    return-void
.end method

.method private d(Lcom/creativemobi/engine/w;)V
    .locals 2

    .prologue
    .line 1699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/k;->aj:Z

    .line 1700
    iget-object v0, p0, Lcom/creativemobi/engine/k;->o:Lcom/creativemobi/engine/cd;

    iget-boolean v0, v0, Lcom/creativemobi/engine/cd;->a:Z

    if-nez v0, :cond_0

    .line 1701
    const-string v0, "poweranimation"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/creativemobi/engine/k;->o:Lcom/creativemobi/engine/cd;

    const/16 v1, 0xb

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->b([I)V

    .line 1703
    iget-object v0, p0, Lcom/creativemobi/engine/k;->o:Lcom/creativemobi/engine/cd;

    new-instance v1, Lcom/creativemobi/engine/ar;

    invoke-direct {v1, p0, p1}, Lcom/creativemobi/engine/ar;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/w;)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/br;)V

    .line 1711
    :cond_0
    return-void

    .line 1702
    nop

    :array_0
    .array-data 4
        0x190
        0xc8
        0x64
        0x64
        0x64
        0xc8
        0x2bc
        0xc8
        0x64
        0x64
        0xc8
    .end array-data
.end method

.method private d(Lcom/creativemobi/engine/w;J)V
    .locals 7

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->g:I

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v1, v0, Lcom/creativemobi/engine/m;->h:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v3, v3, Lcom/creativemobi/engine/m;->g:I

    int-to-long v3, v3

    mul-long/2addr v3, p2

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcom/creativemobi/engine/m;->h:I

    .line 1123
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->h:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->I()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->I()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/creativemobi/engine/m;->h:I

    .line 1125
    :cond_0
    const/16 v0, 0x96

    .line 1126
    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->J()F

    move-result v1

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->I()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/creativemobi/engine/k;->aK:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0x96

    .line 1127
    :cond_1
    iget-object v1, p0, Lcom/creativemobi/engine/k;->aR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/creativemobi/engine/cd;->c:Z

    .line 1128
    iget-object v1, p0, Lcom/creativemobi/engine/k;->aR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    const/16 v3, 0x6d

    const/16 v4, 0xf

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, v1, Lcom/creativemobi/engine/cd;->d:Landroid/graphics/Point;

    .line 1129
    iget-object v1, p0, Lcom/creativemobi/engine/k;->aR:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v2, v2, Lcom/creativemobi/engine/m;->h:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->J()F

    move-result v2

    div-float/2addr v0, v2

    iput v0, v1, Lcom/creativemobi/engine/cd;->b:F

    .line 1130
    return-void
.end method

.method private static e(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit16 v1, p0, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    rem-int/lit16 v1, p0, 0x3e8

    .line 742
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "00"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    return-object v0

    .line 743
    :cond_1
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Lcom/creativemobi/engine/w;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1714
    iget-object v0, p0, Lcom/creativemobi/engine/k;->ao:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0, p1}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    const-wide/16 v0, 0xfa

    invoke-direct {p0, v0, v1}, Lcom/creativemobi/engine/k;->a(J)V

    .line 1716
    iget-object v0, p0, Lcom/creativemobi/engine/k;->I:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->n()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    iget-object v0, p0, Lcom/creativemobi/engine/k;->ao:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 1718
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/creativemobi/engine/SoundManager;->a(I)V

    .line 1719
    iput-boolean v4, p0, Lcom/creativemobi/engine/k;->Y:Z

    .line 1722
    :cond_0
    return-void
.end method

.method private e(Lcom/creativemobi/engine/w;J)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1186
    move v1, v7

    :goto_0
    iget-object v0, p0, Lcom/creativemobi/engine/k;->at:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 1187
    iget-object v0, p0, Lcom/creativemobi/engine/k;->at:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/r;

    .line 1188
    const-string v2, "bonus"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1189
    const-string v2, "bonus"

    const-string v3, "signs"

    const/16 v4, 0xbb

    iget v5, v0, Lcom/creativemobi/engine/r;->c:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1190
    const-string v2, "bonus"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v8, v3}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 1192
    :cond_0
    iget v2, v0, Lcom/creativemobi/engine/r;->d:I

    packed-switch v2, :pswitch_data_0

    .line 1213
    :goto_1
    iget v2, v0, Lcom/creativemobi/engine/r;->c:I

    int-to-long v2, v2

    const-wide/16 v4, 0x5

    div-long v4, p2, v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Lcom/creativemobi/engine/r;->c:I

    .line 1214
    const-string v2, "bonus"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    const/high16 v3, 0x433b0000    # 187.0f

    iget v0, v0, Lcom/creativemobi/engine/r;->c:I

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 1186
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1194
    :pswitch_0
    iget v2, v0, Lcom/creativemobi/engine/r;->b:I

    if-ne v2, v6, :cond_1

    const-string v2, "bonus"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/creativemobi/engine/cd;->c(I)V

    goto :goto_1

    .line 1195
    :cond_1
    const-string v2, "bonus"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/creativemobi/engine/cd;->c(I)V

    goto :goto_1

    .line 1198
    :pswitch_1
    iget v2, v0, Lcom/creativemobi/engine/r;->b:I

    if-ne v2, v6, :cond_2

    const-string v2, "bonus"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/creativemobi/engine/cd;->c(I)V

    goto :goto_1

    .line 1199
    :cond_2
    const-string v2, "bonus"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/creativemobi/engine/cd;->c(I)V

    goto :goto_1

    .line 1202
    :pswitch_2
    const-string v2, "bonus"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/creativemobi/engine/cd;->c(I)V

    goto :goto_1

    .line 1205
    :pswitch_3
    const-string v2, "bonus"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/creativemobi/engine/cd;->c(I)V

    goto :goto_1

    .line 1216
    :cond_3
    return-void

    .line 1192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private e()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1628
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x200

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1629
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1630
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    move v0, v5

    .line 1631
    :goto_0
    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1632
    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write(I)V

    .line 1631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1634
    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/k;->H:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1636
    iget-object v0, p0, Lcom/creativemobi/engine/k;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1637
    iget-object v0, p0, Lcom/creativemobi/engine/k;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 1638
    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 1639
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1664
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1667
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 1642
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->L()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1643
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v0

    .line 1644
    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1645
    array-length v3, v0

    move v4, v5

    :goto_3
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    .line 1646
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1645
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1648
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->O()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1650
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1651
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->i()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1658
    :goto_4
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->P()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1659
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->Q()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1660
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->R()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 1662
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1663
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_2

    .line 1654
    :cond_3
    const-string v0, "unregistered"

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1655
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private f(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1406
    if-gez p1, :cond_1

    const/4 v0, 0x0

    .line 1407
    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/k;->bh:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/creativemobi/engine/k;->bh:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1408
    :cond_0
    iget-object v1, p0, Lcom/creativemobi/engine/k;->bh:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method private f(Lcom/creativemobi/engine/w;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1725
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->H()I

    move-result v0

    if-lez v0, :cond_0

    .line 1726
    const-wide/16 v0, 0x46

    invoke-direct {p0, v0, v1}, Lcom/creativemobi/engine/k;->a(J)V

    .line 1728
    iget-object v0, p0, Lcom/creativemobi/engine/k;->I:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->n()I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1730
    iget-object v0, p0, Lcom/creativemobi/engine/k;->al:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v3, v3, v1, v4}, Lcom/creativemobi/engine/cd;->a(IIIZ)V

    .line 1731
    iget-object v0, p0, Lcom/creativemobi/engine/k;->al:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/ay;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/ay;-><init>(Lcom/creativemobi/engine/k;)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/br;)V

    .line 1738
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->l()V

    .line 1739
    iput-boolean v4, p0, Lcom/creativemobi/engine/k;->W:Z

    .line 1740
    iput-boolean v3, p0, Lcom/creativemobi/engine/k;->Y:Z

    .line 1741
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/creativemobi/engine/SoundManager;->a(I)V

    .line 1743
    :cond_0
    return-void
.end method

.method private f(Lcom/creativemobi/engine/w;J)V
    .locals 12

    .prologue
    const/high16 v11, 0x44430000    # 780.0f

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1219
    iget-object v0, p0, Lcom/creativemobi/engine/k;->as:Ljava/util/ArrayList;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    iget v1, p0, Lcom/creativemobi/engine/k;->aH:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    iget v1, p0, Lcom/creativemobi/engine/k;->aI:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/k;->aH:F

    iget-object v0, p0, Lcom/creativemobi/engine/k;->aK:Ljava/util/Random;

    iget-object v1, p0, Lcom/creativemobi/engine/k;->ak:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v0, p0, Lcom/creativemobi/engine/k;->aK:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3c

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    iget-object v3, p0, Lcom/creativemobi/engine/k;->aK:Ljava/util/Random;

    iget v4, p0, Lcom/creativemobi/engine/k;->aI:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/creativemobi/engine/k;->aI:I

    int-to-float v3, v3

    add-float v5, v0, v3

    iget-object v6, p0, Lcom/creativemobi/engine/k;->aD:Ljava/util/ArrayList;

    new-instance v0, Lcom/creativemobi/engine/j;

    iget-object v3, p0, Lcom/creativemobi/engine/k;->ak:[Ljava/lang/String;

    aget-object v3, v3, v1

    int-to-float v4, v2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/creativemobi/engine/j;-><init>(Lcom/creativemobi/engine/k;Lcom/creativemobi/engine/w;Ljava/lang/String;FF)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/creativemobi/engine/k;->V:F

    const/high16 v1, 0x43160000    # 150.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->n()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->n()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/k;->V:F

    iget-object v0, p0, Lcom/creativemobi/engine/k;->au:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 1223
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/creativemobi/engine/k;->e(Lcom/creativemobi/engine/w;J)V

    .line 1225
    iget-wide v0, p0, Lcom/creativemobi/engine/k;->ac:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/creativemobi/engine/k;->ac:J

    .line 1227
    invoke-direct {p0, p1, p2, p3}, Lcom/creativemobi/engine/k;->d(Lcom/creativemobi/engine/w;J)V

    .line 1229
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->G()F

    move-result v0

    iget v1, p0, Lcom/creativemobi/engine/k;->Z:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->G()F

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/k;->Z:F

    .line 1231
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    iget v1, p0, Lcom/creativemobi/engine/k;->u:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 1233
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    iget v1, p0, Lcom/creativemobi/engine/k;->u:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    long-to-float v1, p2

    iget v2, p0, Lcom/creativemobi/engine/k;->u:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FI)V

    .line 1236
    :goto_2
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    long-to-float v1, p2

    iget v2, p0, Lcom/creativemobi/engine/k;->u:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FI)V

    .line 1238
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    const/high16 v1, 0x40600000    # 3.5f

    sget v2, Lcom/creativemobi/engine/k;->aa:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v2, v2, Lcom/creativemobi/engine/m;->f:F

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v2, v2, Lcom/creativemobi/engine/m;->f:F

    div-float/2addr v2, v9

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 1242
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    const/high16 v1, 0x44480000    # 800.0f

    mul-float/2addr v0, v1

    div-float/2addr v0, v10

    sget v1, Lcom/creativemobi/engine/k;->aa:F

    div-float/2addr v0, v1

    .line 1243
    iget-object v1, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v1, v1, Lcom/creativemobi/engine/m;->f:F

    const/high16 v2, 0x44480000    # 800.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v10

    sget v2, Lcom/creativemobi/engine/k;->aa:F

    div-float/2addr v1, v2

    .line 1245
    iget-object v2, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v3, p0, Lcom/creativemobi/engine/k;->aG:F

    add-float/2addr v1, v3

    long-to-float v3, p2

    invoke-virtual {v2, p1, v1, v3}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FF)V

    .line 1246
    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v2, p0, Lcom/creativemobi/engine/k;->aF:F

    add-float/2addr v0, v2

    long-to-float v2, p2

    invoke-virtual {v1, p1, v0, v2}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FF)V

    .line 1251
    :goto_3
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->ae:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    iget-object v1, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v1, v1, Lcom/creativemobi/engine/m;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iput-boolean v8, p0, Lcom/creativemobi/engine/k;->ae:Z

    .line 1253
    :cond_2
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->ag:Z

    if-nez v0, :cond_3

    .line 1254
    iget v0, p0, Lcom/creativemobi/engine/k;->u:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v1, v1, Lcom/creativemobi/engine/m;->f:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    iget-object v1, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v1, v1, Lcom/creativemobi/engine/m;->f:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iput-boolean v7, p0, Lcom/creativemobi/engine/k;->ag:Z

    .line 1257
    :cond_3
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->c(Lcom/creativemobi/engine/w;)V

    .line 1258
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v1, v1, Lcom/creativemobi/engine/m;->f:F

    mul-float/2addr v1, v11

    iget v2, p0, Lcom/creativemobi/engine/k;->u:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->h()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    iget-object v0, p0, Lcom/creativemobi/engine/k;->aO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v1, v1, Lcom/creativemobi/engine/m;->f:F

    mul-float/2addr v1, v11

    iget v2, p0, Lcom/creativemobi/engine/k;->u:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->h()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 1259
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0, p2, p3}, Lcom/creativemobi/engine/m;->c(J)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/k;->c(Lcom/creativemobi/engine/w;I)V

    .line 1286
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0, p2, p3}, Lcom/creativemobi/engine/m;->c(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->H()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->W:Z

    if-eqz v0, :cond_5

    .line 1287
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 1288
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iget-boolean v0, v0, Lcom/creativemobi/engine/cd;->a:Z

    if-nez v0, :cond_5

    .line 1289
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a([I)V

    .line 1290
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aW:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/aq;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/aq;-><init>(Lcom/creativemobi/engine/k;)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/br;)V

    .line 1298
    :cond_5
    return-void

    .line 1220
    :cond_6
    const/16 v0, 0xc9

    move v2, v0

    goto/16 :goto_0

    .line 1221
    :cond_7
    iget-object v0, p0, Lcom/creativemobi/engine/k;->au:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1234
    :cond_8
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    long-to-float v1, p2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/m;->a(F)V

    goto/16 :goto_2

    .line 1248
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/creativemobi/engine/k;->g(Lcom/creativemobi/engine/w;J)V

    goto/16 :goto_3

    .line 1261
    :cond_a
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    iget-object v1, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v1, v1, Lcom/creativemobi/engine/m;->f:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->P:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->h()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1262
    iput-boolean v7, p0, Lcom/creativemobi/engine/k;->af:Z

    .line 1264
    :cond_b
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/k;->b(Lcom/creativemobi/engine/w;I)V

    .line 1266
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->a:Z

    if-nez v0, :cond_4

    .line 1267
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->m()V

    .line 1268
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->m()V

    .line 1269
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    iget v1, p0, Lcom/creativemobi/engine/k;->u:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_d

    .line 1270
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->n()I

    move-result v0

    int-to-long v0, v0

    .line 1271
    iget-object v2, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->n()I

    move-result v2

    int-to-long v2, v2

    .line 1272
    cmp-long v0, v2, v0

    if-ltz v0, :cond_c

    move v0, v7

    :goto_5
    iput-boolean v0, p0, Lcom/creativemobi/engine/k;->ad:Z

    .line 1275
    :goto_6
    new-instance v0, Lcom/creativemobi/engine/r;

    invoke-direct {v0, p0}, Lcom/creativemobi/engine/r;-><init>(Lcom/creativemobi/engine/k;)V

    .line 1276
    iput v8, v0, Lcom/creativemobi/engine/r;->b:I

    .line 1278
    const-string v1, "You win"

    iput-object v1, v0, Lcom/creativemobi/engine/r;->a:Ljava/lang/String;

    .line 1279
    iget-boolean v1, p0, Lcom/creativemobi/engine/k;->ad:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    iput v1, v0, Lcom/creativemobi/engine/r;->d:I

    .line 1281
    :goto_7
    const/16 v1, 0xc8

    iput v1, v0, Lcom/creativemobi/engine/r;->c:I

    .line 1282
    iget-object v1, p0, Lcom/creativemobi/engine/k;->at:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_c
    move v0, v8

    .line 1272
    goto :goto_5

    .line 1273
    :cond_d
    iput-boolean v7, p0, Lcom/creativemobi/engine/k;->ad:Z

    goto :goto_6

    .line 1280
    :cond_e
    const/4 v1, 0x3

    iput v1, v0, Lcom/creativemobi/engine/r;->d:I

    goto :goto_7

    .line 1289
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private g(I)Lcom/creativemobi/engine/cg;
    .locals 2

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/engine/cg;

    .line 1960
    iget v1, p0, Lcom/creativemobi/engine/cg;->a:I

    if-ne v1, p1, :cond_0

    move-object v0, p0

    .line 1962
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Lcom/creativemobi/engine/w;)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1746
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1747
    const-string v0, "shiftanimation"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 1749
    const-wide/16 v0, 0x46

    invoke-direct {p0, v0, v1}, Lcom/creativemobi/engine/k;->a(J)V

    .line 1751
    iget-object v0, p0, Lcom/creativemobi/engine/k;->I:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->n()I

    move-result v2

    invoke-direct {v1, v7, v2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->W:Z

    if-eqz v0, :cond_1

    .line 1754
    iget v0, p0, Lcom/creativemobi/engine/k;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/creativemobi/engine/k;->M:I

    .line 1755
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/m;->c(J)I

    move-result v0

    .line 1756
    if-ne v0, v3, :cond_4

    iget v1, p0, Lcom/creativemobi/engine/k;->L:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/creativemobi/engine/k;->L:I

    .line 1758
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 1759
    new-instance v1, Lcom/creativemobi/engine/r;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/r;-><init>(Lcom/creativemobi/engine/k;)V

    .line 1760
    iput v6, v1, Lcom/creativemobi/engine/r;->d:I

    .line 1761
    const-string v2, "good shift"

    iput-object v2, v1, Lcom/creativemobi/engine/r;->a:Ljava/lang/String;

    .line 1762
    iput v0, v1, Lcom/creativemobi/engine/r;->b:I

    .line 1763
    const/16 v0, 0xc8

    iput v0, v1, Lcom/creativemobi/engine/r;->c:I

    .line 1764
    iget-object v0, p0, Lcom/creativemobi/engine/k;->at:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1768
    :cond_1
    invoke-static {v3}, Lcom/creativemobi/engine/SoundManager;->a(I)V

    .line 1769
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->I()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->J()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 1770
    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->a()V

    .line 1772
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->k()V

    .line 1774
    iget-object v0, p0, Lcom/creativemobi/engine/k;->am:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v6, v6, v1, v7}, Lcom/creativemobi/engine/cd;->a(IIIZ)V

    .line 1775
    iget-object v0, p0, Lcom/creativemobi/engine/k;->am:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/al;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/al;-><init>(Lcom/creativemobi/engine/k;)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/br;)V

    .line 1781
    iput-boolean v6, p0, Lcom/creativemobi/engine/k;->X:Z

    .line 1783
    :cond_3
    return-void

    .line 1757
    :cond_4
    if-ne v0, v6, :cond_0

    iget v1, p0, Lcom/creativemobi/engine/k;->K:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/creativemobi/engine/k;->K:I

    goto :goto_0
.end method

.method private g(Lcom/creativemobi/engine/w;J)V
    .locals 7

    .prologue
    const/high16 v6, 0x43d30000    # 422.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v2, 0x40600000    # 3.5f

    const/4 v4, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 1301
    sget v0, Lcom/creativemobi/engine/k;->aa:F

    mul-float/2addr v0, v2

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v1, v1, Lcom/creativemobi/engine/m;->f:F

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v1, v1, Lcom/creativemobi/engine/m;->f:F

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    div-float/2addr v0, v5

    sget v1, Lcom/creativemobi/engine/k;->aa:F

    div-float/2addr v0, v1

    const/high16 v1, 0x44480000    # 800.0f

    mul-float/2addr v0, v1

    .line 1302
    sget v1, Lcom/creativemobi/engine/k;->aa:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v2, v2, Lcom/creativemobi/engine/m;->f:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v2, v2, Lcom/creativemobi/engine/m;->f:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    sget v2, Lcom/creativemobi/engine/k;->aa:F

    div-float/2addr v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    mul-float/2addr v1, v2

    .line 1304
    cmpl-float v2, v0, v6

    if-lez v2, :cond_1

    move v0, v6

    .line 1308
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v3, p0, Lcom/creativemobi/engine/k;->aG:F

    add-float/2addr v1, v3

    long-to-float v3, p2

    invoke-virtual {v2, p1, v1, v3}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FF)V

    .line 1309
    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v2, p0, Lcom/creativemobi/engine/k;->aF:F

    add-float/2addr v0, v2

    long-to-float v2, p2

    invoke-virtual {v1, p1, v0, v2}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FF)V

    .line 1310
    return-void

    .line 1306
    :cond_1
    cmpg-float v2, v0, v4

    if-gez v2, :cond_0

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/creativemobi/engine/w;F)F
    .locals 2

    .prologue
    .line 1333
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v0

    div-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    sget v1, Lcom/creativemobi/engine/k;->aa:F

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v1, v1, Lcom/creativemobi/engine/m;->f:F

    sub-float v1, p2, v1

    mul-float/2addr v0, v1

    sget v1, Lcom/creativemobi/engine/k;->aE:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->D()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public final a([BLcom/creativemobi/engine/bl;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1580
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1581
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1583
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 1584
    invoke-interface {p2}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    sget v0, Lcom/creativemobi/engine/k;->q:I

    .line 1623
    :goto_0
    return v0

    .line 1585
    :cond_0
    const/4 v2, 0x6

    new-array v2, v2, [I

    move v3, v7

    .line 1586
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 1587
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v4

    aput v4, v2, v3

    .line 1586
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1589
    :cond_1
    new-instance v3, Lcom/creativemobi/engine/cg;

    invoke-direct {v3, v0, v2}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    iput-object v3, p0, Lcom/creativemobi/engine/k;->h:Lcom/creativemobi/engine/cg;

    .line 1590
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/k;->Q:I

    .line 1592
    iget-object v0, p0, Lcom/creativemobi/engine/k;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1594
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    move v2, v7

    .line 1595
    :goto_2
    if-ge v2, v0, :cond_2

    .line 1596
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v3

    .line 1597
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 1598
    iget-object v5, p0, Lcom/creativemobi/engine/k;->R:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1595
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1601
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/k;->w:F

    .line 1602
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 1603
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/creativemobi/engine/k;->A:[F

    move v0, v7

    .line 1604
    :goto_3
    iget-object v2, p0, Lcom/creativemobi/engine/k;->A:[F

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1605
    iget-object v2, p0, Lcom/creativemobi/engine/k;->A:[F

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    aput v3, v2, v0

    .line 1604
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1606
    :cond_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/k;->B:I

    .line 1607
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/k;->C:Ljava/lang/String;

    .line 1608
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/k;->D:I

    .line 1610
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_4

    .line 1611
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/k;->x:F

    .line 1612
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/k;->y:F

    .line 1613
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/k;->z:F

    .line 1616
    :cond_4
    invoke-interface {p2}, Lcom/creativemobi/engine/bl;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcom/creativemobi/engine/bl;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/k;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/creativemobi/engine/k;->r:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 1619
    :cond_5
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/creativemobi/engine/k;->P:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1623
    sget v0, Lcom/creativemobi/engine/k;->bi:I

    goto/16 :goto_0

    .line 1621
    :catch_1
    move-exception v0

    sget v0, Lcom/creativemobi/engine/k;->q:I

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v0, v0, Lcom/creativemobi/engine/m;->f:F

    iget v1, p0, Lcom/creativemobi/engine/k;->u:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->P:Z

    if-eqz v0, :cond_0

    .line 1969
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WON_IN_A_ROW_ONLINE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1971
    :cond_0
    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->d()V

    .line 1972
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 2033
    sparse-switch p1, :sswitch_data_0

    .line 2039
    :goto_0
    return-void

    .line 2036
    :sswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/k;->aj:Z

    goto :goto_0

    .line 2033
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/creativemobi/engine/m;)V
    .locals 0

    .prologue
    .line 1987
    iput-object p1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    .line 1988
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 5

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v1, 0x42200000    # 40.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1672
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->U:Z

    if-nez v0, :cond_1

    .line 1696
    :cond_0
    :goto_0
    return-void

    .line 1674
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1684
    :pswitch_1
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->aj:Z

    if-nez v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/creativemobi/engine/k;->an:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1686
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->d(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    .line 1677
    :pswitch_2
    const-string v0, "nextButton"

    invoke-virtual {p1, v0, p2, p3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ae;

    invoke-direct {v1}, Lcom/creativemobi/engine/ae;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto :goto_0

    .line 1679
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ad;

    invoke-direct {v1}, Lcom/creativemobi/engine/ad;-><init>()V

    invoke-interface {v0, v1, v3}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto :goto_0

    .line 1691
    :pswitch_3
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->F()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->e(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/creativemobi/engine/k;->ao:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    goto :goto_1

    .line 1692
    :cond_4
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->X:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/creativemobi/engine/k;->am:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    :goto_2
    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->g(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    .line 1693
    :cond_6
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->Y:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/creativemobi/engine/k;->al:Ljava/lang/String;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_3
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->f(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_3

    .line 1674
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2010
    sparse-switch p2, :sswitch_data_0

    .line 2029
    :cond_0
    :goto_0
    return-void

    .line 2014
    :sswitch_0
    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->g(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    .line 2017
    :sswitch_1
    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->f(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    .line 2022
    :sswitch_2
    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->e(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    .line 2026
    :sswitch_3
    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->d(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    .line 2010
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x17 -> :sswitch_3
        0x1d -> :sswitch_2
        0x2d -> :sswitch_2
        0x3e -> :sswitch_3
        0x42 -> :sswitch_0
        0x63 -> :sswitch_2
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 11

    .prologue
    const/16 v10, 0xb4

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1413
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->P:Z

    if-eqz v0, :cond_0

    .line 1414
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->n()I

    move-result v1

    .line 1415
    const/4 v2, -0x1

    move v3, v8

    .line 1416
    :goto_0
    iget-object v0, p0, Lcom/creativemobi/engine/k;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_20

    .line 1417
    iget-object v0, p0, Lcom/creativemobi/engine/k;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_2

    .line 1419
    iget-object v0, p0, Lcom/creativemobi/engine/k;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v3

    .line 1433
    :goto_2
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/creativemobi/engine/k;->R:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1436
    :cond_0
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->U:Z

    if-nez v0, :cond_3

    .line 1572
    :cond_1
    :goto_3
    return-void

    .line 1421
    :pswitch_0
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->k()V

    move v0, v3

    .line 1422
    goto :goto_2

    .line 1424
    :pswitch_1
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->l()V

    move v0, v3

    .line 1425
    goto :goto_2

    .line 1427
    :pswitch_2
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v0, p1}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;)Z

    goto :goto_1

    .line 1416
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1438
    :cond_3
    iget-wide v0, p0, Lcom/creativemobi/engine/k;->ab:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/creativemobi/engine/k;->ab:J

    .line 1439
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    .line 1440
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_c

    .line 1441
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bf:Lcom/creativemobi/engine/x;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/creativemobi/engine/k;->C:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1442
    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 1443
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1444
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->m()F

    move-result v0

    .line 1445
    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->N()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    .line 1447
    new-instance v2, Lcom/creativemobi/engine/x;

    iget-object v3, p0, Lcom/creativemobi/engine/k;->C:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->m()F

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float v0, v1, v0

    float-to-int v0, v0

    const/16 v1, 0x3c

    invoke-direct {v2, v3, v0, v1}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/creativemobi/engine/k;->bf:Lcom/creativemobi/engine/x;

    .line 1448
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bf:Lcom/creativemobi/engine/x;

    const/16 v1, 0x16

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1449
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bf:Lcom/creativemobi/engine/x;

    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v9, v7, v7, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1453
    :cond_4
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bg:Lcom/creativemobi/engine/x;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1454
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->N()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 1455
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1456
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->m()F

    move-result v0

    .line 1457
    new-instance v1, Lcom/creativemobi/engine/x;

    iget-object v2, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v2}, Lcom/creativemobi/engine/bl;->h()Ljava/lang/String;

    move-result-object v2

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v2, v0, v10}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/creativemobi/engine/k;->bg:Lcom/creativemobi/engine/x;

    .line 1458
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bg:Lcom/creativemobi/engine/x;

    const/16 v1, 0x16

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1459
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bg:Lcom/creativemobi/engine/x;

    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v9, v7, v7, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1463
    :cond_5
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bd:Lcom/creativemobi/engine/x;

    if-nez v0, :cond_6

    .line 1464
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v2}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->s()F

    move-result v3

    invoke-static {v2, v3}, Lcom/creativemobi/engine/h;->b(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe4

    const/16 v3, 0x198

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->bd:Lcom/creativemobi/engine/x;

    .line 1465
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bd:Lcom/creativemobi/engine/x;

    const/16 v1, 0x1e

    const/16 v2, 0xff

    const/16 v3, 0xfd

    const/16 v4, 0x89

    const/16 v5, 0x32

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/engine/k;->aq:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Typeface;)V

    .line 1468
    :cond_6
    iget-object v0, p0, Lcom/creativemobi/engine/k;->be:Lcom/creativemobi/engine/x;

    if-nez v0, :cond_7

    .line 1469
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->H()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x23f

    const/16 v3, 0x198

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->be:Lcom/creativemobi/engine/x;

    .line 1470
    iget-object v0, p0, Lcom/creativemobi/engine/k;->be:Lcom/creativemobi/engine/x;

    const/16 v1, 0x1e

    const/16 v2, 0xff

    const/16 v3, 0xfd

    const/16 v4, 0x89

    const/16 v5, 0x32

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/engine/k;->aq:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Typeface;)V

    .line 1473
    :cond_7
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bb:Lcom/creativemobi/engine/x;

    if-nez v0, :cond_8

    .line 1474
    new-instance v0, Lcom/creativemobi/engine/x;

    iget-object v1, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/creativemobi/engine/ac;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "km/h"

    :goto_4
    const/16 v2, 0xe1

    const/16 v3, 0x1ae

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->bb:Lcom/creativemobi/engine/x;

    .line 1475
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bb:Lcom/creativemobi/engine/x;

    const/16 v1, 0x12

    const/16 v2, 0xff

    invoke-static {v2, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/engine/k;->aq:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Typeface;)V

    .line 1478
    :cond_8
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bc:Lcom/creativemobi/engine/x;

    if-nez v0, :cond_9

    .line 1479
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "GEAR"

    const/16 v2, 0x23f

    const/16 v3, 0x1ae

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/creativemobi/engine/k;->bc:Lcom/creativemobi/engine/x;

    .line 1480
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bc:Lcom/creativemobi/engine/x;

    const/16 v1, 0x12

    const/16 v2, 0xff

    invoke-static {v2, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/engine/k;->aq:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Typeface;)V

    .line 1483
    :cond_9
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bd:Lcom/creativemobi/engine/x;

    iget-object v1, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->s()F

    move-result v2

    invoke-static {v1, v2}, Lcom/creativemobi/engine/h;->b(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/creativemobi/engine/k;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/creativemobi/engine/k;->be:Lcom/creativemobi/engine/x;

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->H()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/creativemobi/engine/k;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 1486
    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    if-gtz v0, :cond_b

    .line 1487
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bf:Lcom/creativemobi/engine/x;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/creativemobi/engine/k;->bf:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1488
    :cond_a
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bg:Lcom/creativemobi/engine/x;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/creativemobi/engine/k;->bg:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1490
    :cond_b
    iget-object v0, p0, Lcom/creativemobi/engine/k;->be:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1491
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bd:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1492
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bb:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1493
    iget-object v0, p0, Lcom/creativemobi/engine/k;->bc:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1496
    :cond_c
    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    packed-switch v0, :pswitch_data_1

    .line 1515
    :goto_5
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/creativemobi/engine/SoundManager;->b(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/creativemobi/engine/SoundManager;->b(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {v8}, Lcom/creativemobi/engine/SoundManager;->b(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/creativemobi/engine/SoundManager;->b(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1517
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->J()F

    move-result v0

    const v1, 0x45dac000    # 7000.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_17

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->e()F

    move-result v0

    const v1, 0x48435000    # 200000.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    const/16 v0, 0x9

    invoke-static {v0, v6}, Lcom/creativemobi/engine/SoundManager;->a(IZ)V

    .line 1524
    :cond_d
    :goto_6
    const/16 v0, 0x9

    const/high16 v1, 0x3f000000    # 0.5f

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->I()F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->J()F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/creativemobi/engine/SoundManager;->a(IF)V

    .line 1525
    const/16 v0, 0x8

    const/high16 v1, 0x3f000000    # 0.5f

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->I()F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->J()F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/creativemobi/engine/SoundManager;->a(IF)V

    .line 1526
    const/high16 v0, 0x3f000000    # 0.5f

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->I()F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->J()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v8, v0}, Lcom/creativemobi/engine/SoundManager;->a(IF)V

    .line 1527
    const/4 v0, 0x7

    const/high16 v1, 0x3f000000    # 0.5f

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->I()F

    move-result v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    const v3, 0x460ca000    # 9000.0f

    iget-object v4, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v4}, Lcom/creativemobi/engine/m;->J()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/creativemobi/engine/SoundManager;->a(IF)V

    .line 1529
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->E()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1530
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->I()F

    move-result v0

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->J()F

    move-result v1

    div-float/2addr v1, v9

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    .line 1531
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/creativemobi/engine/SoundManager;->b(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x6

    invoke-static {v0, v6}, Lcom/creativemobi/engine/SoundManager;->a(IZ)V

    .line 1532
    :cond_e
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->I()F

    move-result v0

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->J()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v9

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->J()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Lcom/creativemobi/engine/SoundManager;->a(F)V

    .line 1534
    const/4 v0, 0x6

    const/high16 v1, 0x3f000000    # 0.5f

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->I()F

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->J()F

    move-result v3

    div-float/2addr v3, v9

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->J()F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/creativemobi/engine/SoundManager;->a(IF)V

    .line 1539
    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->i()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {v6}, Lcom/creativemobi/engine/SoundManager;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->g()V

    .line 1549
    :cond_10
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/creativemobi/engine/k;->ba:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 1550
    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 1551
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->s()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->r()F

    move-result v1

    div-float/2addr v0, v1

    add-float/2addr v0, v9

    float-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/creativemobi/engine/k;->a(J)V

    .line 1552
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/creativemobi/engine/k;->ba:J

    .line 1565
    :cond_11
    :goto_9
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->s()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1f

    .line 1566
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 1567
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->c(I)V

    goto/16 :goto_3

    .line 1474
    :cond_12
    const-string v1, "mph"

    goto/16 :goto_4

    .line 1498
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/k;->b(Lcom/creativemobi/engine/w;)V

    goto/16 :goto_5

    .line 1501
    :pswitch_4
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->aj:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0, p2, p3}, Lcom/creativemobi/engine/m;->a(J)V

    :goto_a
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->aj:Z

    if-nez v0, :cond_16

    iget v0, p0, Lcom/creativemobi/engine/k;->aM:I

    const/16 v1, 0x2bc

    if-le v0, v1, :cond_13

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->E()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->I()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->J()F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x5

    invoke-static {v0, v8}, Lcom/creativemobi/engine/SoundManager;->a(IZ)V

    :cond_13
    iput v8, p0, Lcom/creativemobi/engine/k;->aM:I

    :goto_b
    invoke-direct {p0, p1, p2, p3}, Lcom/creativemobi/engine/k;->d(Lcom/creativemobi/engine/w;J)V

    sget-object v0, Lcom/creativemobi/engine/k;->ah:[I

    array-length v0, v0

    iget v1, p0, Lcom/creativemobi/engine/k;->ai:I

    if-le v0, v1, :cond_14

    sget-object v0, Lcom/creativemobi/engine/k;->ah:[I

    iget v1, p0, Lcom/creativemobi/engine/k;->ai:I

    aget v0, v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/creativemobi/engine/k;->ab:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    iget v0, p0, Lcom/creativemobi/engine/k;->ai:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/creativemobi/engine/k;->ai:I

    :cond_14
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->g()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/k;->c(Lcom/creativemobi/engine/w;I)V

    iget-object v0, p0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    iget v1, p0, Lcom/creativemobi/engine/k;->aG:F

    add-float/2addr v1, v7

    invoke-virtual {v0, p1, v1, v7}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FF)V

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    iget v1, p0, Lcom/creativemobi/engine/k;->aF:F

    add-float/2addr v1, v7

    invoke-virtual {v0, p1, v1, v7}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FF)V

    goto/16 :goto_5

    :cond_15
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0, p2, p3}, Lcom/creativemobi/engine/m;->b(J)V

    goto :goto_a

    :cond_16
    iget v0, p0, Lcom/creativemobi/engine/k;->aM:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lcom/creativemobi/engine/k;->aM:I

    goto :goto_b

    .line 1504
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/creativemobi/engine/k;->f(Lcom/creativemobi/engine/w;J)V

    goto/16 :goto_5

    .line 1507
    :pswitch_6
    invoke-direct {p0, p1, p2, p3}, Lcom/creativemobi/engine/k;->c(Lcom/creativemobi/engine/w;J)V

    goto/16 :goto_5

    .line 1510
    :pswitch_7
    invoke-direct {p0, p1, p2, p3}, Lcom/creativemobi/engine/k;->b(Lcom/creativemobi/engine/w;J)V

    goto/16 :goto_5

    .line 1519
    :cond_17
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->J()F

    move-result v0

    const v1, 0x45dac000    # 7000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    const/16 v0, 0x8

    invoke-static {v0, v6}, Lcom/creativemobi/engine/SoundManager;->a(IZ)V

    goto/16 :goto_6

    .line 1520
    :cond_18
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->J()F

    move-result v0

    const v1, 0x45ea6000    # 7500.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    invoke-static {v8, v6}, Lcom/creativemobi/engine/SoundManager;->a(IZ)V

    goto/16 :goto_6

    .line 1521
    :cond_19
    const/4 v0, 0x7

    invoke-static {v0, v6}, Lcom/creativemobi/engine/SoundManager;->a(IZ)V

    goto/16 :goto_6

    .line 1536
    :cond_1a
    invoke-static {v7}, Lcom/creativemobi/engine/SoundManager;->a(F)V

    goto/16 :goto_7

    .line 1540
    :cond_1b
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1541
    invoke-static {v6}, Lcom/creativemobi/engine/SoundManager;->b(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {v6, v6}, Lcom/creativemobi/engine/SoundManager;->a(IZ)V

    .line 1542
    :cond_1c
    const v0, 0x3f19999a    # 0.6f

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->I()F

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->J()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v6, v0}, Lcom/creativemobi/engine/SoundManager;->a(IF)V

    .line 1543
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/creativemobi/engine/k;->ba:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    .line 1544
    const/high16 v0, 0x40a00000    # 5.0f

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->I()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->J()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/creativemobi/engine/k;->a(J)V

    .line 1545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/creativemobi/engine/k;->ba:J

    goto/16 :goto_8

    .line 1553
    :cond_1d
    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    if-nez v0, :cond_11

    invoke-static {v8}, Lcom/creativemobi/engine/SoundManager;->b(I)Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/creativemobi/engine/SoundManager;->b(I)Z

    move-result v0

    if-nez v0, :cond_1e

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/creativemobi/engine/SoundManager;->b(I)Z

    move-result v0

    if-nez v0, :cond_1e

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/creativemobi/engine/SoundManager;->b(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1557
    :cond_1e
    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->J()F

    move-result v0

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->I()F

    move-result v1

    sub-float/2addr v0, v1

    const v1, 0x44bb8000    # 1500.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->J()F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v9

    .line 1558
    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_11

    .line 1559
    float-to-long v1, v0

    invoke-direct {p0, v1, v2}, Lcom/creativemobi/engine/k;->a(J)V

    .line 1560
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x14

    add-long/2addr v1, v3

    const/high16 v3, 0x40200000    # 2.5f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-long v3, v0

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/creativemobi/engine/k;->ba:J

    goto/16 :goto_9

    .line 1568
    :cond_1f
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->s()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 1570
    iget-object v0, p0, Lcom/creativemobi/engine/k;->aT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/creativemobi/engine/cd;->c(I)V

    goto/16 :goto_3

    :cond_20
    move v0, v2

    goto/16 :goto_2

    .line 1419
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1496
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 18

    .prologue
    .line 1803
    invoke-static/range {p2 .. p2}, Lcom/creativemobi/engine/SoundManager;->a(Landroid/content/Context;)V

    .line 1804
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    .line 1806
    :try_start_0
    const-string v5, "vibrator"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/k;->S:Landroid/os/Vibrator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/creativemobi/engine/w;->n()V

    .line 1812
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "digital_italic.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/k;->aq:Landroid/graphics/Typeface;

    .line 1813
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "electrotome.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/k;->ar:Landroid/graphics/Typeface;

    .line 1815
    const-string v5, "graphics/loading.jpg"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 1816
    invoke-virtual/range {p1 .. p1}, Lcom/creativemobi/engine/w;->b()V

    .line 1818
    const-string v5, "hint"

    const-string v6, "graphics/menu/hint.png"

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1819
    const-string v5, "arrowUP"

    const-string v6, "graphics/menu/arrowUP.png"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1820
    const-string v5, "indicators_large"

    const-string v6, "graphics/indicators_large.png"

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1821
    const-string v5, "highlight"

    const-string v6, "graphics/highlight.png"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1822
    const-string v5, "race_result"

    const-string v6, "graphics/race_result.png"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1823
    const-string v5, "nextButton"

    const-string v6, "graphics/next.png"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1824
    const-string v5, "divider"

    const-string v6, "graphics/divider.png"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1825
    const-string v6, "poweranimation"

    const-string v7, "graphics/poweranimation.png"

    const/16 v8, 0x13b

    const/16 v9, 0x83

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1826
    const-string v5, "shiftanimation"

    const-string v6, "graphics/shiftanimation.png"

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1827
    const-string v5, "girl"

    const-string v6, "graphics/girl.png"

    const/16 v7, 0x1e0

    const/16 v8, 0x20b

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1829
    const-string v6, "shadow"

    const-string v7, "graphics/shadow.png"

    const/16 v8, 0x113

    const/16 v9, 0x4a

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1830
    const-string v5, "shadow_small"

    const-string v6, "graphics/road/shadow_small.png"

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1832
    const-string v5, "wheelSpin"

    const-string v6, "graphics/wheelSpin.png"

    const/16 v7, 0x14

    const/16 v8, 0x18

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1834
    const-string v5, "crack1"

    const-string v6, "graphics/road/crack1.png"

    const/16 v7, 0x41

    const/16 v8, 0x69

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1835
    const-string v5, "crack2"

    const-string v6, "graphics/road/crack2.png"

    const/16 v7, 0xee

    const/16 v8, 0x61

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1836
    const-string v5, "crack3"

    const-string v6, "graphics/road/crack3.png"

    const/16 v7, 0xfe

    const/16 v8, 0x84

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1838
    const-string v5, "advert"

    const-string v6, "graphics/advert.png"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1839
    const-string v5, "spot"

    const-string v6, "graphics/road/spot.png"

    const/16 v7, 0x223

    const/16 v8, 0x38

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1841
    const-string v5, "wire1"

    const-string v6, "graphics/road/wire1.png"

    const/16 v7, 0x22b

    const/16 v8, 0x15

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1842
    const-string v5, "wire2"

    const-string v6, "graphics/road/wire2.png"

    const/16 v7, 0x1aa

    const/16 v8, 0x15

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1844
    const-string v5, "bonusColor"

    const-string v6, "graphics/indicators.png"

    const/16 v7, 0x33

    const/16 v8, 0x10

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1846
    const-string v5, "signs"

    const-string v6, "graphics/signs.png"

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1848
    const-string v5, "road"

    const-string v6, "graphics/road.jpg"

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1850
    const-string v5, "summary"

    const-string v6, "graphics/menu_bg.jpg"

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1852
    const-string v5, "panel"

    const-string v6, "graphics/panel.png"

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1854
    const-string v5, "shiftDown"

    const-string v6, "graphics/shiftDown.png"

    const/16 v7, 0xe8

    const/16 v8, 0x7d

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1855
    const-string v5, "shiftUp"

    const-string v6, "graphics/shiftUp.png"

    const/16 v7, 0xe8

    const/16 v8, 0x7c

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1857
    const-string v5, "arrow"

    const-string v6, "graphics/arrow.png"

    const/16 v7, 0x7c

    const/16 v8, 0x1d

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1859
    const-string v5, "powerButton"

    const-string v6, "graphics/powerButton.png"

    const/16 v7, 0x67

    const/16 v8, 0x7d

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1860
    const-string v6, "nitroButtons"

    const-string v7, "graphics/nitroButtons.png"

    const/16 v8, 0xb4

    const/16 v9, 0x57

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1862
    const-string v5, "car1"

    const-string v6, "graphics/mincar1.png"

    const/16 v7, 0xe

    const/16 v8, 0xe

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1863
    const-string v5, "car2"

    const-string v6, "graphics/mincar2.png"

    const/16 v7, 0xe

    const/16 v8, 0xe

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1865
    const-string v5, "race_track"

    const-string v6, "graphics/race_track.png"

    const/16 v7, 0x316

    const/16 v8, 0x1b

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1867
    const-string v5, "start"

    const-string v6, "graphics/start.png"

    const/16 v7, 0x27

    const/16 v8, 0x114

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1868
    const-string v5, "finish"

    const-string v6, "graphics/finish.png"

    const/16 v7, 0x44

    const/16 v8, 0x112

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1870
    const-string v5, "nitro"

    const-string v6, "graphics/nitro.png"

    const/16 v7, 0x43

    const/16 v8, 0x57

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1872
    const-string v5, "starD"

    const-string v6, "graphics/starD.png"

    const/16 v7, 0x19

    const/16 v8, 0x19

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1873
    const-string v5, "starL"

    const-string v6, "graphics/starL.png"

    const/16 v7, 0x19

    const/16 v8, 0x19

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1875
    const-string v5, "wheelSpin"

    const-string v6, "wheelSpin"

    const/16 v7, 0x1ae

    const/16 v8, 0x1bd

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 1877
    const-string v5, "bonusColor"

    const-string v6, "bonusColor"

    const/16 v7, 0x164

    const/16 v8, 0x1c9

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 1878
    const-string v5, "bonusColor"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 1880
    const-string v5, "indicators_large"

    const-string v6, "indicators_large"

    const/16 v7, 0x190

    const/16 v8, 0x8c

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 1881
    const-string v5, "indicators_large"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 1882
    const-string v5, "indicators_large"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1883
    const-string v5, "indicators_large"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/creativemobi/engine/cd;->k()V

    .line 1885
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/creativemobi/engine/k;->l:Z

    move v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/creativemobi/engine/k;->P:Z

    move v5, v0

    if-nez v5, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v5, v0

    if-nez v5, :cond_b

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->g:Lcom/creativemobi/engine/cg;

    move-object v5, v0

    .line 1888
    if-nez v5, :cond_1

    invoke-interface/range {p3 .. p3}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v5

    .line 1889
    :cond_1
    iget v6, v5, Lcom/creativemobi/engine/cg;->a:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/creativemobi/engine/k;->F:I

    .line 1890
    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->F:I

    move v6, v0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move v2, v6

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/creativemobi/engine/m;->B()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/creativemobi/engine/k;->g(I)Lcom/creativemobi/engine/cg;

    move-result-object v6

    .line 1892
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/creativemobi/engine/cg;->c()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v7, v0

    iget v8, v6, Lcom/creativemobi/engine/cg;->g:F

    iget v9, v6, Lcom/creativemobi/engine/cg;->h:F

    iget v6, v6, Lcom/creativemobi/engine/cg;->i:F

    invoke-virtual {v7, v8, v9, v6}, Lcom/creativemobi/engine/m;->a(FFF)V

    .line 1893
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;ZZ)V

    .line 1894
    iget-object v6, v5, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v7, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v8, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v9, v0

    invoke-virtual {v7, v8, v9}, Lcom/creativemobi/engine/m;->a(II)V

    goto :goto_1

    .line 1806
    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1897
    :cond_3
    iget-object v6, v5, Lcom/creativemobi/engine/cg;->e:[F

    if-eqz v6, :cond_4

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v6, v0

    iget v7, v5, Lcom/creativemobi/engine/cg;->f:I

    invoke-virtual {v6, v7}, Lcom/creativemobi/engine/m;->b(I)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v6, v0

    iget v7, v5, Lcom/creativemobi/engine/cg;->d:F

    invoke-virtual {v6, v7}, Lcom/creativemobi/engine/m;->b(F)V

    .line 1901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v6, v0

    iget-object v5, v5, Lcom/creativemobi/engine/cg;->e:[F

    invoke-virtual {v6, v5}, Lcom/creativemobi/engine/m;->a([F)V

    .line 1913
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->h:Lcom/creativemobi/engine/cg;

    move-object v5, v0

    if-nez v5, :cond_23

    .line 1914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->i:I

    move v5, v0

    if-nez v5, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->f:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->u:I

    move v6, v0

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v7, v0

    invoke-interface {v7}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Z

    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    const/4 v9, 0x6

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    move/from16 v17, v12

    move v12, v10

    move/from16 v10, v17

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v13, v0

    invoke-interface {v13}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ne v12, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->aK:Ljava/util/Random;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v8, v0

    invoke-interface {v8}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    move v8, v11

    move v9, v7

    move v7, v10

    :goto_3
    int-to-float v10, v5

    sub-float v10, v8, v10

    sub-float v7, v8, v7

    div-float v7, v10, v7

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    if-gez v7, :cond_6

    const/4 v7, 0x0

    :cond_6
    const/4 v8, 0x6

    if-le v7, v8, :cond_7

    const/4 v7, 0x6

    :cond_7
    const/4 v8, 0x6

    new-array v8, v8, [I

    const/4 v10, 0x0

    aput v7, v8, v10

    const/4 v10, 0x1

    aput v7, v8, v10

    const/4 v10, 0x2

    aput v7, v8, v10

    const/4 v10, 0x3

    aput v7, v8, v10

    const/4 v10, 0x4

    aput v7, v8, v10

    const/4 v10, 0x5

    aput v7, v8, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p1

    move v2, v9

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v7

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->d()V

    invoke-virtual {v7, v8}, Lcom/creativemobi/engine/m;->a([I)V

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/w;ILcom/creativemobi/engine/m;)F

    move-result v7

    int-to-float v10, v5

    cmpg-float v10, v7, v10

    if-gez v10, :cond_e

    const/4 v10, 0x1

    :goto_4
    int-to-float v11, v5

    cmpl-float v11, v7, v11

    if-eqz v11, :cond_15

    const/4 v11, 0x6

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v17, v13

    move v13, v12

    move/from16 v12, v17

    :goto_5
    array-length v14, v8

    if-ge v12, v14, :cond_13

    const/high16 v14, -0x40800000    # -1.0f

    aput v14, v11, v12

    aget v14, v8, v12

    const/4 v15, 0x6

    if-lt v14, v15, :cond_f

    const/4 v14, 0x1

    :goto_6
    if-nez v10, :cond_8

    aget v14, v8, v12

    if-gtz v14, :cond_10

    const/4 v14, 0x1

    :cond_8
    :goto_7
    if-nez v14, :cond_9

    const/4 v14, 0x6

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aget v16, v8, v16

    aput v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    aget v16, v8, v16

    aput v16, v14, v15

    const/4 v15, 0x2

    const/16 v16, 0x2

    aget v16, v8, v16

    aput v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x3

    aget v16, v8, v16

    aput v16, v14, v15

    const/4 v15, 0x4

    const/16 v16, 0x4

    aget v16, v8, v16

    aput v16, v14, v15

    const/4 v15, 0x5

    const/16 v16, 0x5

    aget v16, v8, v16

    aput v16, v14, v15

    if-eqz v10, :cond_11

    aget v15, v14, v12

    add-int/lit8 v15, v15, 0x1

    aput v15, v14, v12

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v15, v0

    move-object v0, v15

    move-object/from16 v1, p1

    move v2, v9

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v15

    invoke-virtual {v15}, Lcom/creativemobi/engine/m;->d()V

    invoke-virtual {v15, v14}, Lcom/creativemobi/engine/m;->a([I)V

    if-eqz v10, :cond_12

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/w;ILcom/creativemobi/engine/m;)F

    move-result v14

    sub-float/2addr v14, v7

    aput v14, v11, v12

    :cond_9
    :goto_9
    aget v14, v11, v12

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_a

    aget v14, v11, v13

    aget v15, v11, v12

    cmpg-float v14, v14, v15

    if-gez v14, :cond_a

    move v13, v12

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1904
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->B()I

    move-result v5

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move v2, v5

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->B()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/creativemobi/engine/k;->g(I)Lcom/creativemobi/engine/cg;

    move-result-object v5

    .line 1906
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/creativemobi/engine/cg;->c()Z

    move-result v6

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v6, v0

    iget v7, v5, Lcom/creativemobi/engine/cg;->g:F

    iget v8, v5, Lcom/creativemobi/engine/cg;->h:F

    iget v5, v5, Lcom/creativemobi/engine/cg;->i:F

    invoke-virtual {v6, v7, v8, v5}, Lcom/creativemobi/engine/m;->a(FFF)V

    .line 1907
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;ZZ)V

    goto/16 :goto_2

    .line 1914
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->aK:Ljava/util/Random;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v14, v0

    invoke-interface {v14}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    aget-boolean v14, v7, v13

    if-nez v14, :cond_5

    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x1

    aput-boolean v14, v7, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v13

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v14

    invoke-virtual {v14}, Lcom/creativemobi/engine/m;->x()I

    move-result v15

    if-gtz v15, :cond_5

    invoke-virtual {v14}, Lcom/creativemobi/engine/m;->d()V

    invoke-virtual {v14, v8}, Lcom/creativemobi/engine/m;->a([I)V

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/w;ILcom/creativemobi/engine/m;)F

    move-result v11

    int-to-float v14, v5

    cmpg-float v14, v11, v14

    if-ltz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v10, v0

    move-object v0, v10

    move-object/from16 v1, p1

    move v2, v13

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v10

    invoke-virtual {v10}, Lcom/creativemobi/engine/m;->d()V

    invoke-virtual {v10, v9}, Lcom/creativemobi/engine/m;->a([I)V

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/w;ILcom/creativemobi/engine/m;)F

    move-result v10

    int-to-float v14, v5

    cmpl-float v14, v10, v14

    if-gtz v14, :cond_5

    move v7, v10

    move v8, v11

    move v9, v13

    goto/16 :goto_3

    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_11
    aget v15, v14, v12

    const/16 v16, 0x1

    sub-int v15, v15, v16

    aput v15, v14, v12

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/w;ILcom/creativemobi/engine/m;)F

    move-result v14

    sub-float v14, v7, v14

    aput v14, v11, v12

    goto/16 :goto_9

    :cond_13
    aget v11, v11, v13

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_15

    if-eqz v10, :cond_14

    aget v11, v8, v13

    add-int/lit8 v11, v11, 0x1

    aput v11, v8, v13

    goto/16 :goto_4

    :cond_14
    aget v11, v8, v13

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aput v11, v8, v13

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v9

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;ZZ)V

    invoke-virtual {v5, v8}, Lcom/creativemobi/engine/m;->a([I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    .line 1932
    :cond_16
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/creativemobi/engine/k;->a:Z

    move v5, v0

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/m;->c(Lcom/creativemobi/engine/w;)V

    .line 1934
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/creativemobi/engine/k;->l:Z

    move v5, v0

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/creativemobi/engine/k;->P:Z

    move v5, v0

    if-eqz v5, :cond_18

    .line 1935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->B()I

    move-result v5

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move v2, v5

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/m;->a([I)V

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;ZZ)V

    .line 1940
    :cond_18
    const/4 v5, 0x0

    .line 1942
    const/4 v6, 0x0

    :goto_b
    sget-object v7, Lcom/creativemobi/engine/k;->G:[I

    array-length v7, v7

    if-ge v6, v7, :cond_19

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->k:Lcom/creativemobi/engine/m;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->q()F

    move-result v7

    float-to-int v7, v7

    sget-object v8, Lcom/creativemobi/engine/k;->G:[I

    aget v8, v8, v6

    if-ge v7, v8, :cond_27

    move v5, v6

    .line 1949
    :cond_19
    const-string v6, "tachometer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "graphics/tachometer"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/creativemobi/engine/k;->G:[I

    aget v5, v8, v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".png"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xdd

    const/16 v8, 0x80

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 1951
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/creativemobi/engine/k;->a:Z

    move v5, v0

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->ap:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "graphics/waiting.png"

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1953
    :cond_1a
    sget-object v5, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    if-eqz v5, :cond_1b

    sget-object v5, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    invoke-virtual {v5}, Lcom/creativemobi/DragRacing/billing/b;->c()Ljava/util/Set;

    move-result-object v5

    sget-object v6, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/creativemobi/engine/k;->aC:I

    .line 1955
    :cond_1b
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/creativemobi/engine/k;->U:Z

    .line 1956
    return-void

    .line 1915
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->i:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v6, v0

    invoke-interface {v6}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Z

    const/4 v7, 0x0

    const/4 v8, 0x6

    new-array v8, v8, [I

    fill-array-data v8, :array_2

    move/from16 v17, v7

    move-object v7, v6

    move v6, v5

    move/from16 v5, v17

    :cond_1d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v9, v0

    invoke-interface {v9}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v5, v9, :cond_1e

    int-to-float v5, v6

    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v6, v0

    invoke-interface {v6}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Z

    const/4 v7, 0x0

    move/from16 v17, v7

    move-object v7, v6

    move v6, v5

    move/from16 v5, v17

    goto :goto_c

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->aK:Ljava/util/Random;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v10, v0

    invoke-interface {v10}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    aget-boolean v10, v7, v9

    if-nez v10, :cond_1d

    add-int/lit8 v5, v5, 0x1

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v10, v0

    move-object v0, v10

    move-object/from16 v1, p1

    move v2, v9

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v10

    invoke-virtual {v10}, Lcom/creativemobi/engine/m;->z()I

    move-result v11

    if-gt v11, v6, :cond_1d

    invoke-virtual {v10, v8}, Lcom/creativemobi/engine/m;->a([I)V

    invoke-virtual {v10}, Lcom/creativemobi/engine/m;->y()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v6

    const v12, 0x3f666666    # 0.9f

    mul-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-ltz v10, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v9

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v7

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->z()I

    move-result v5

    move v8, v5

    :goto_d
    const/4 v10, 0x0

    array-length v11, v7

    new-array v11, v11, [I

    const/4 v12, 0x0

    move/from16 v17, v12

    move v12, v10

    move/from16 v10, v17

    :goto_e
    array-length v13, v11

    if-ge v10, v13, :cond_20

    const/4 v13, -0x1

    aput v13, v11, v10

    aget v13, v7, v10

    const/4 v14, 0x6

    if-ge v13, v14, :cond_1f

    aget v13, v7, v10

    add-int/lit8 v13, v13, 0x1

    invoke-static {v5, v10, v13}, Lcom/creativemobi/engine/i;->b(III)F

    move-result v13

    float-to-int v13, v13

    sub-int v13, v6, v13

    sub-int/2addr v13, v8

    aput v13, v11, v10

    aget v13, v11, v10

    if-ltz v13, :cond_1f

    const/4 v12, 0x1

    :cond_1f
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_20
    if-eqz v12, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->aK:Ljava/util/Random;

    move-object v8, v0

    array-length v10, v11

    invoke-virtual {v8, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    aget v10, v11, v8

    if-ltz v10, :cond_21

    aget v10, v7, v8

    add-int/lit8 v10, v10, 0x1

    aput v10, v7, v8

    aget v8, v11, v8

    sub-int v8, v6, v8

    goto :goto_d

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v9

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;ZZ)V

    invoke-virtual {v5, v7}, Lcom/creativemobi/engine/m;->a([I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    goto/16 :goto_a

    .line 1917
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->h:Lcom/creativemobi/engine/cg;

    move-object v5, v0

    iget v5, v5, Lcom/creativemobi/engine/cg;->a:I

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move v2, v5

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    .line 1919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->x:F

    move v5, v0

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->x:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->y:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->z:F

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Lcom/creativemobi/engine/m;->a(FFF)V

    .line 1921
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/creativemobi/engine/k;->P:Z

    move v7, v0

    if-nez v7, :cond_26

    const/4 v7, 0x1

    :goto_f
    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;ZZ)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->h:Lcom/creativemobi/engine/cg;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/creativemobi/engine/cg;->b()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/m;->a([I)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->A:[F

    move-object v5, v0

    if-eqz v5, :cond_25

    .line 1924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->A:[F

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/m;->a([F)V

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->w:F

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/m;->b(F)V

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->B:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/m;->b(I)V

    .line 1929
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/creativemobi/engine/k;->P:Z

    move v5, v0

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/k;->E:Lcom/creativemobi/engine/m;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/k;->Q:I

    move v6, v0

    int-to-float v6, v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/creativemobi/engine/m;->a(FZ)V

    goto/16 :goto_a

    .line 1921
    :cond_26
    const/4 v7, 0x0

    goto :goto_f

    .line 1942
    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    .line 1914
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
    .end array-data

    .line 1915
    :array_2
    .array-data 4
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
    .end array-data
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2001
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->m:Z

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/creativemobi/engine/k;->T:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ae;

    invoke-direct {v1}, Lcom/creativemobi/engine/ae;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 2003
    const/4 v0, 0x1

    .line 2005
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 1975
    iget v0, p0, Lcom/creativemobi/engine/k;->u:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 1979
    iput p1, p0, Lcom/creativemobi/engine/k;->u:I

    .line 1980
    return-void
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 4

    .prologue
    const/high16 v3, 0x42200000    # 40.0f

    const/4 v2, 0x0

    .line 1787
    iget-boolean v0, p0, Lcom/creativemobi/engine/k;->U:Z

    if-nez v0, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1789
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/k;->O:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1791
    :pswitch_0
    iput-boolean v2, p0, Lcom/creativemobi/engine/k;->aj:Z

    goto :goto_0

    .line 1794
    :pswitch_1
    iget-object v0, p0, Lcom/creativemobi/engine/k;->am:Ljava/lang/String;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/creativemobi/engine/k;->X:Z

    .line 1795
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/k;->al:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/creativemobi/engine/k;->Y:Z

    .line 1796
    :cond_3
    iget-object v0, p0, Lcom/creativemobi/engine/k;->ao:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/creativemobi/engine/k;->Y:Z

    goto :goto_0

    .line 1789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 2042
    iget v0, p0, Lcom/creativemobi/engine/k;->J:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 1995
    iput p1, p0, Lcom/creativemobi/engine/k;->v:I

    .line 1996
    return-void
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 2046
    iput p1, p0, Lcom/creativemobi/engine/k;->J:I

    .line 2047
    return-void
.end method
