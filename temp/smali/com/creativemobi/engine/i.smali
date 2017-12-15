.class public final Lcom/creativemobi/engine/i;
.super Ljava/lang/Object;
.source "Upgrade.java"


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:F

.field public static c:F

.field public static d:F

.field private static e:[[Ljava/lang/String;

.field private static final f:[[F

.field private static final g:[[F

.field private static j:[[F

.field private static k:[F

.field private static l:[F

.field private static m:[F

.field private static n:[F

.field private static o:[F


# instance fields
.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x6

    .line 11
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ENGINE"

    aput-object v1, v0, v8

    const-string v1, "TURBO"

    aput-object v1, v0, v9

    const-string v1, "INTAKE/EXHAUST"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "NITRO"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WEIGHT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WHEELS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/creativemobi/engine/i;->a:[Ljava/lang/String;

    .line 13
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/creativemobi/engine/i;->b:F

    .line 14
    const v0, 0x3ac49ba6    # 0.0015f

    sput v0, Lcom/creativemobi/engine/i;->c:F

    .line 15
    const v0, 0x38d1b717    # 1.0E-4f

    sput v0, Lcom/creativemobi/engine/i;->d:F

    .line 17
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v8

    const-string v2, ""

    aput-object v2, v1, v9

    const-string v2, "Racing plugs, upgraded wiring\n(where applicable)"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "Valve adjustment\nUpgraded fuel pump"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "ECU upgrade\nPerformance pistons"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Larger injectors\nPerformance fuel pump"

    aput-object v3, v1, v2

    const-string v2, "Stronger internals\nECU tuning"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v8

    const-string v2, ""

    aput-object v2, v1, v9

    const-string v2, "Basic turbo kit"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "Upgraded intercooler\nBlow-off valve"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Larger turbo\nUpgraded intercooler"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Larger turbo kit"

    aput-object v3, v1, v2

    const-string v2, "Larger turbo kit\nAnti-lag system"

    aput-object v2, v1, v5

    aput-object v1, v0, v9

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v8

    const-string v2, ""

    aput-object v2, v1, v9

    const-string v2, "Performance air filter"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "Cold air intake\nSensor calibration"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Upgraded exhaust header"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Remove catalytic converter\n(where available)"

    aput-object v3, v1, v2

    const-string v2, "Straight exhaust system"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v8

    const-string v3, ""

    aput-object v3, v2, v9

    const-string v3, "Nitrous oxide injection kit"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-string v4, "Wet nitrous kit"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Direct port kit"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Increased shot volume"

    aput-object v4, v2, v3

    const-string v3, "Maximum shot volume"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v8

    const-string v3, ""

    aput-object v3, v2, v9

    const-string v3, "Remove passenger seats, spare wheel, carpets"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-string v4, "Remove airbags, A/C, radio; lighter dashboard"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Strip side impact beams and panels"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Fiberglass/aluminium body panels\n(where applicable)"

    aput-object v4, v2, v3

    const-string v3, "Full CF body kit"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v8

    const-string v3, ""

    aput-object v3, v2, v9

    const-string v3, "Upgraded racing tires"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    const-string v4, "Upgraded racing tires"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Upgraded racing tires"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Upgraded racing tires"

    aput-object v4, v2, v3

    const-string v3, "Upgraded racing tires"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/creativemobi/engine/i;->e:[[Ljava/lang/String;

    .line 30
    new-array v0, v7, [[F

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v5, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    sput-object v0, Lcom/creativemobi/engine/i;->f:[[F

    .line 34
    new-array v0, v7, [[F

    new-array v1, v5, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v8

    new-array v1, v5, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v9

    new-array v1, v5, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v5, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    new-array v1, v5, [F

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    sput-object v0, Lcom/creativemobi/engine/i;->g:[[F

    .line 49
    new-array v0, v7, [[F

    new-array v1, v6, [F

    fill-array-data v1, :array_e

    aput-object v1, v0, v8

    new-array v1, v6, [F

    fill-array-data v1, :array_f

    aput-object v1, v0, v9

    new-array v1, v6, [F

    fill-array-data v1, :array_10

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [F

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [F

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [F

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    new-array v1, v6, [F

    fill-array-data v1, :array_14

    aput-object v1, v0, v5

    sput-object v0, Lcom/creativemobi/engine/i;->j:[[F

    .line 52
    new-array v0, v7, [F

    fill-array-data v0, :array_15

    sput-object v0, Lcom/creativemobi/engine/i;->k:[F

    .line 53
    new-array v0, v7, [F

    fill-array-data v0, :array_16

    sput-object v0, Lcom/creativemobi/engine/i;->l:[F

    .line 54
    new-array v0, v7, [F

    fill-array-data v0, :array_17

    sput-object v0, Lcom/creativemobi/engine/i;->m:[F

    .line 55
    new-array v0, v7, [F

    fill-array-data v0, :array_18

    sput-object v0, Lcom/creativemobi/engine/i;->n:[F

    .line 56
    new-array v0, v7, [F

    fill-array-data v0, :array_19

    sput-object v0, Lcom/creativemobi/engine/i;->o:[F

    return-void

    .line 30
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3951b717    # 2.0E-4f
        0x3951b717    # 2.0E-4f
        0x3951b717    # 2.0E-4f
        0x3951b717    # 2.0E-4f
        0x3951b717    # 2.0E-4f
        0x3951b717    # 2.0E-4f
    .end array-data

    :array_5
    .array-data 4
        0x3a03126f    # 5.0E-4f
        0x3a03126f    # 5.0E-4f
        0x3a03126f    # 5.0E-4f
        0x3a03126f    # 5.0E-4f
        0x3a03126f    # 5.0E-4f
        0x3a03126f    # 5.0E-4f
    .end array-data

    :array_6
    .array-data 4
        0x3a83126f    # 0.001f
        0x3a83126f    # 0.001f
        0x3a83126f    # 0.001f
        0x3a83126f    # 0.001f
        0x3a83126f    # 0.001f
        0x3a83126f    # 0.001f
    .end array-data

    .line 34
    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e99999a    # 0.3f
        0x3ca3d70a    # 0.02f
        0x3dcccccd    # 0.1f
        0x3ca3d70a    # 0.02f
        0x3d75c28f    # 0.06f
    .end array-data

    :array_a
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e19999a    # 0.15f
        0x3d23d70a    # 0.04f
        0x3e19999a    # 0.15f
        0x3d23d70a    # 0.04f
        0x3df5c28f    # 0.12f
    .end array-data

    :array_b
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e19999a    # 0.15f
        0x3d23d70a    # 0.04f
        0x3e19999a    # 0.15f
        0x3d23d70a    # 0.04f
        0x3df5c28f    # 0.12f
    .end array-data

    :array_c
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e19999a    # 0.15f
        0x3d23d70a    # 0.04f
        0x3e19999a    # 0.15f
        0x3d23d70a    # 0.04f
        0x3df5c28f    # 0.12f
    .end array-data

    :array_d
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3e19999a    # 0.15f
        0x3d23d70a    # 0.04f
        0x3e19999a    # 0.15f
        0x3d23d70a    # 0.04f
        0x3df5c28f    # 0.12f
    .end array-data

    .line 49
    :array_e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3d4ccccd    # 0.05f
    .end array-data

    :array_12
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3d4ccccd    # 0.05f
    .end array-data

    :array_13
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_14
    .array-data 4
        0x3e19999a    # 0.15f
        0x3dcccccd    # 0.1f
    .end array-data

    .line 52
    :array_15
    .array-data 4
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x3eb33333    # 0.35f
        0x3ecccccd    # 0.4f
        0x3ee66666    # 0.45f
        0x3f000000    # 0.5f
    .end array-data

    .line 53
    :array_16
    .array-data 4
        -0x41e66666    # -0.15f
        0x0
        0x3d23d70a    # 0.04f
        0x3d4ccccd    # 0.05f
        0x3d75c28f    # 0.06f
        0x3d8f5c29    # 0.07f
        0x3da3d70a    # 0.08f
    .end array-data

    .line 54
    :array_17
    .array-data 4
        0x0
        0x0
        0x41c80000    # 25.0f
        0x42480000    # 50.0f
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
    .end array-data

    .line 55
    :array_18
    .array-data 4
        -0x41b33333    # -0.2f
        0x0
        -0x4270a3d7    # -0.07f
        -0x4247ae14    # -0.09f
        -0x421eb852    # -0.11f
        -0x41fae148    # -0.13f
        -0x41e66666    # -0.15f
    .end array-data

    .line 56
    :array_19
    .array-data 4
        -0x41b33333    # -0.2f
        0x0
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3e99999a    # 0.3f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Lcom/creativemobi/engine/i;->h:I

    .line 47
    iput v0, p0, Lcom/creativemobi/engine/i;->i:I

    return-void
.end method

.method public static a(I)F
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/creativemobi/engine/i;->m:[F

    aget v0, v0, p0

    return v0
.end method

.method public static a(III)I
    .locals 3

    .prologue
    .line 67
    int-to-float v0, p0

    sget-object v1, Lcom/creativemobi/engine/i;->f:[[F

    aget-object v1, v1, p2

    aget v1, v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 68
    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/creativemobi/engine/i;->e:[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static b(III)F
    .locals 2

    .prologue
    .line 72
    int-to-float v0, p0

    sget-object v1, Lcom/creativemobi/engine/i;->g:[[F

    aget-object v1, v1, p2

    aget v1, v1, p1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static b(II)[Lcom/creativemobi/engine/by;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 76
    const/4 v0, 0x0

    .line 77
    packed-switch p0, :pswitch_data_0

    .line 99
    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    new-array v0, v5, [Lcom/creativemobi/engine/by;

    .line 80
    new-instance v1, Lcom/creativemobi/engine/by;

    sget-object v2, Lcom/creativemobi/engine/i;->j:[[F

    aget-object v2, v2, p1

    aget v2, v2, v4

    invoke-direct {v1, v4, v2}, Lcom/creativemobi/engine/by;-><init>(IF)V

    aput-object v1, v0, v4

    .line 81
    new-instance v1, Lcom/creativemobi/engine/by;

    sget-object v2, Lcom/creativemobi/engine/i;->j:[[F

    aget-object v2, v2, p1

    aget v2, v2, v3

    invoke-direct {v1, v3, v2}, Lcom/creativemobi/engine/by;-><init>(IF)V

    aput-object v1, v0, v3

    goto :goto_0

    .line 84
    :pswitch_1
    new-array v0, v3, [Lcom/creativemobi/engine/by;

    new-instance v1, Lcom/creativemobi/engine/by;

    sget-object v2, Lcom/creativemobi/engine/i;->k:[F

    aget v2, v2, p1

    invoke-direct {v1, v4, v2}, Lcom/creativemobi/engine/by;-><init>(IF)V

    aput-object v1, v0, v4

    goto :goto_0

    .line 87
    :pswitch_2
    new-array v0, v3, [Lcom/creativemobi/engine/by;

    new-instance v1, Lcom/creativemobi/engine/by;

    sget-object v2, Lcom/creativemobi/engine/i;->l:[F

    aget v2, v2, p1

    invoke-direct {v1, v4, v2}, Lcom/creativemobi/engine/by;-><init>(IF)V

    aput-object v1, v0, v4

    goto :goto_0

    .line 90
    :pswitch_3
    new-array v0, v3, [Lcom/creativemobi/engine/by;

    new-instance v1, Lcom/creativemobi/engine/by;

    sget-object v2, Lcom/creativemobi/engine/i;->m:[F

    aget v2, v2, p1

    invoke-direct {v1, v5, v2}, Lcom/creativemobi/engine/by;-><init>(IF)V

    aput-object v1, v0, v4

    goto :goto_0

    .line 93
    :pswitch_4
    new-array v0, v3, [Lcom/creativemobi/engine/by;

    new-instance v1, Lcom/creativemobi/engine/by;

    const/4 v2, 0x3

    sget-object v3, Lcom/creativemobi/engine/i;->n:[F

    aget v3, v3, p1

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/by;-><init>(IF)V

    aput-object v1, v0, v4

    goto :goto_0

    .line 96
    :pswitch_5
    new-array v0, v3, [Lcom/creativemobi/engine/by;

    new-instance v1, Lcom/creativemobi/engine/by;

    const/4 v2, 0x4

    sget-object v3, Lcom/creativemobi/engine/i;->o:[F

    aget v3, v3, p1

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/by;-><init>(IF)V

    aput-object v1, v0, v4

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
