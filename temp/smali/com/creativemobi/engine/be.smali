.class public final Lcom/creativemobi/engine/be;
.super Ljava/lang/Object;
.source "Achivement.java"


# static fields
.field public static final g:[I

.field private static h:[F

.field private static i:[I

.field private static j:[Ljava/lang/String;

.field private static k:[Ljava/lang/String;

.field private static l:[Ljava/lang/String;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:F

.field e:F

.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x31

    .line 71
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/creativemobi/engine/be;->h:[F

    .line 87
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/creativemobi/engine/be;->i:[I

    .line 104
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "PRO RACER I"

    aput-object v1, v0, v4

    const-string v1, "PRO RACER II"

    aput-object v1, v0, v5

    const-string v1, "PRO RACER III"

    aput-object v1, v0, v6

    const-string v1, "PRO RACER IV"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "HUMAN FACTOR I"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HUMAN FACTOR II"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "HUMAN FACTOR III"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HUMAN FACTOR IV"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "HUMAN FACTOR V"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "HOT STREAK I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HOT STREAK II"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HOT STREAK III"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HOT STREAK IV"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LAUNCH CONTROL I"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "LAUNCH CONTROL II"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "LAUNCH CONTROL III"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "LAUNCH CONTROL IV"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "QUARTER MILE I"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "QUARTER MILE II"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "QUARTER MILE III"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "QUARTER MILE IV"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "HALF MILE I"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "HALF MILE II"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "HALF MILE III"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "HALF MILE IV"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "PEDAL TO THE METAL I"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PEDAL TO THE METAL II"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "PEDAL TO THE METAL III"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PEDAL TO THE METAL IV"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "PRECISE SHIFTING I"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "PRECISE SHIFTING II"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "PRECISE SHIFTING III"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "PRECISE SHIFTING IV"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PERFECT TIMING I"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "PERFECT TIMING II"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "PERFECT TIMING III"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "PERFECT TIMING IV"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "MILEAGE BONUS I"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "MILEAGE BONUS II"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "MILEAGE BONUS III"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "MILEAGE BONUS IV"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "MAXED OUT"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "DOMINATION"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "FIREWORKS"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "AMAZING COMEBACK"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "PRO LEAGUE WINNER I"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "PRO LEAGUE WINNER II"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "PRO LEAGUE WINNER III"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "PRO LEAGUE WINNER IV"

    aput-object v2, v0, v1

    sput-object v0, Lcom/creativemobi/engine/be;->j:[Ljava/lang/String;

    .line 114
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Win %1$d offline races against PRO level opponent "

    aput-object v1, v0, v4

    const-string v1, "Win %1$d online races against other players "

    aput-object v1, v0, v5

    const-string v1, "Win %1$d online races in a row "

    aput-object v1, v0, v6

    const-string v1, "Accelerate to 60 MPH in under %.2f seconds "

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Achieve a 1/4 mile time under %.2f seconds "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Achieve a 1/2 mile time under %.2f seconds "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Accelerate to over %1$d MPH "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Change %1$d gears at the perfect RPM "

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Launch %1$d times at the right RPM "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Drive a total of %1$d miles "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Fully upgrade at least one car "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Stay in the lead for the entire race "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Cross the finish line with nitrous on, and win the online race "

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Overtake your opponent right before the finish line "

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Win %1$d tournaments in Pro League"

    aput-object v2, v0, v1

    sput-object v0, Lcom/creativemobi/engine/be;->k:[Ljava/lang/String;

    .line 122
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "PRO RACER"

    aput-object v1, v0, v4

    const-string v1, "HUMAN FACTOR"

    aput-object v1, v0, v5

    const-string v1, "HOT STREAK"

    aput-object v1, v0, v6

    const-string v1, "LAUNCH CONTROL"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "QUARTER MILE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "HALF MILE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PEDAL TO THE METAL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "PRECISE SHIFTING"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "PERFECT TIMING"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MILEAGE BONUS"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MAXED OUT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "DOMINATION"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "FIREWORKS"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "AMAZING COMEBACK"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PRO LEAGUE WINNER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/creativemobi/engine/be;->l:[Ljava/lang/String;

    .line 126
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/creativemobi/engine/be;->g:[I

    return-void

    .line 71
    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41f00000    # 30.0f
        0x42c80000    # 100.0f
        0x43960000    # 300.0f
        0x40a00000    # 5.0f
        0x41c80000    # 25.0f
        0x42c80000    # 100.0f
        0x437a0000    # 250.0f
        0x43fa0000    # 500.0f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x41200000    # 10.0f
        0x4099999a    # 4.8f
        0x40733333    # 3.8f
        0x40400000    # 3.0f
        0x40051eb8    # 2.08f
        0x4151999a    # 13.1f
        0x4131999a    # 11.1f
        0x410ccccd    # 8.8f
        0x40fb851f    # 7.86f
        0x41b0cccd    # 22.1f
        0x4189999a    # 17.2f
        0x4154cccd    # 13.3f
        0x41380000    # 11.5f
        0x430c0000    # 140.0f
        0x432f0000    # 175.0f
        0x43520000    # 210.0f
        0x43700000    # 240.0f
        0x42480000    # 50.0f
        0x43480000    # 200.0f
        0x447a0000    # 1000.0f
        0x459c4000    # 5000.0f
        0x41200000    # 10.0f
        0x42480000    # 50.0f
        0x437a0000    # 250.0f
        0x447a0000    # 1000.0f
        0x41200000    # 10.0f
        0x42480000    # 50.0f
        0x437a0000    # 250.0f
        0x447a0000    # 1000.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x40a00000    # 5.0f
        0x41c80000    # 25.0f
        0x42c80000    # 100.0f
    .end array-data

    .line 87
    :array_1
    .array-data 4
        0x1
        0x2
        0x5
        0xa
        0x2
        0x4
        0xa
        0x32
        0x64
        0x2
        0x4
        0xf
        0x64
        0x2
        0x4
        0xf
        0x32
        0x2
        0x4
        0xf
        0x64
        0x2
        0x4
        0xf
        0x64
        0x2
        0x4
        0xf
        0x4b
        0x2
        0x4
        0xf
        0x32
        0x2
        0x4
        0xf
        0x32
        0x2
        0x4
        0xf
        0x4b
        0xa
        0x3
        0xf
        0xa
        0x2
        0xa
        0x32
        0x96
    .end array-data

    .line 126
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x6
        0x7
        0x7
        0x7
        0x7
        0x8
        0x8
        0x8
        0x8
        0x9
        0x9
        0x9
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xe
        0xe
        0xe
    .end array-data
.end method

.method private constructor <init>(IF)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    cmpg-float v0, p2, v1

    if-gez v0, :cond_0

    move v0, v1

    .line 58
    :goto_0
    iput p1, p0, Lcom/creativemobi/engine/be;->a:I

    .line 59
    iput v0, p0, Lcom/creativemobi/engine/be;->d:F

    .line 60
    sget-object v0, Lcom/creativemobi/engine/be;->h:[F

    aget v0, v0, p1

    iput v0, p0, Lcom/creativemobi/engine/be;->e:F

    .line 61
    sget-object v0, Lcom/creativemobi/engine/be;->i:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/creativemobi/engine/be;->f:I

    .line 62
    sget-object v0, Lcom/creativemobi/engine/be;->j:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/creativemobi/engine/be;->b:Ljava/lang/String;

    .line 65
    :try_start_0
    sget-object v0, Lcom/creativemobi/engine/be;->k:[Ljava/lang/String;

    sget-object v1, Lcom/creativemobi/engine/be;->g:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/creativemobi/engine/be;->e:F

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    sget-object v0, Lcom/creativemobi/engine/be;->k:[Ljava/lang/String;

    sget-object v1, Lcom/creativemobi/engine/be;->g:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/creativemobi/engine/be;->e:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    goto :goto_1

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)F
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/creativemobi/engine/be;->l:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/high16 v1, 0x7fc00000    # NaNf

    invoke-static {p0, v0, v1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 192
    const-string v0, "NONPROCESSED_COMPLETE_ACHIVEMENTS"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 193
    return-void
.end method

.method public static a(Landroid/content/Context;IF)V
    .locals 3

    .prologue
    .line 150
    invoke-static {p0, p1}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;I)F

    move-result v0

    .line 152
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p2

    .line 155
    :goto_0
    sget-object v2, Lcom/creativemobi/engine/be;->l:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {p0, v2, v1}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;F)V

    .line 156
    invoke-static {p0, p1, v1, v0}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;IFF)V

    .line 157
    return-void

    .line 153
    :cond_0
    add-float v1, v0, p2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;IFF)V
    .locals 8

    .prologue
    .line 209
    const-string v0, "NONPROCESSED_COMPLETE_ACHIVEMENTS"

    invoke-static {p0, v0}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 210
    const/4 v2, 0x0

    move v5, v2

    move-wide v6, v0

    move-wide v1, v6

    move v0, v5

    :goto_0
    sget-object v3, Lcom/creativemobi/engine/be;->g:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 211
    sget-object v3, Lcom/creativemobi/engine/be;->g:[I

    aget v3, v3, v0

    if-ne p1, v3, :cond_0

    .line 212
    sget-object v3, Lcom/creativemobi/engine/be;->h:[F

    aget v3, v3, v0

    invoke-static {v0, p2, v3}, Lcom/creativemobi/engine/be;->a(IFF)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/creativemobi/engine/be;->h:[F

    aget v3, v3, v0

    invoke-static {v0, p3, v3}, Lcom/creativemobi/engine/be;->a(IFF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 213
    const-wide/16 v3, 0x2

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    const-string v0, "NONPROCESSED_COMPLETE_ACHIVEMENTS"

    invoke-static {p0, v0, v1, v2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 218
    return-void
.end method

.method private static a(IFF)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 33
    :goto_0
    return v0

    .line 18
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 33
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_2

    move v0, v2

    goto :goto_0

    .line 31
    :pswitch_0
    cmpg-float v0, p1, p2

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 33
    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    const-string v1, "NONPROCESSED_COMPLETE_ACHIVEMENTS"

    invoke-static {p0, v1}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 198
    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/creativemobi/engine/be;->g:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 199
    const-wide/16 v4, 0x2

    shl-long/2addr v4, v3

    and-long/2addr v4, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 200
    sget-object v4, Lcom/creativemobi/engine/be;->l:[Ljava/lang/String;

    sget-object v5, Lcom/creativemobi/engine/be;->g:[I

    aget v5, v5, v3

    aget-object v4, v4, v5

    const/high16 v5, 0x7fc00000    # NaNf

    invoke-static {p0, v4, v5}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v4

    .line 201
    new-instance v5, Lcom/creativemobi/engine/be;

    invoke-direct {v5, v3, v4}, Lcom/creativemobi/engine/be;-><init>(IF)V

    .line 202
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_1
    return-object v0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 160
    invoke-static {p0, p1}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;I)F

    move-result v0

    .line 162
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 164
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    .line 165
    sget-object v2, Lcom/creativemobi/engine/be;->l:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {p0, v2, v1}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;F)V

    .line 166
    invoke-static {p0, p1, v1, v0}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;IFF)V

    .line 167
    return-void

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;IF)V
    .locals 2

    .prologue
    .line 170
    invoke-static {p0, p1}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;I)F

    move-result v0

    .line 173
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    cmpg-float v1, v0, p2

    if-gez v1, :cond_1

    .line 174
    :cond_0
    sget-object v1, Lcom/creativemobi/engine/be;->l:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {p0, v1, p2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;F)V

    .line 176
    invoke-static {p0, p1, p2, v0}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;IFF)V

    .line 178
    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    const/16 v5, 0x30

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    const/4 v1, 0x0

    :goto_0
    if-gt v1, v5, :cond_1

    .line 223
    sget-object v2, Lcom/creativemobi/engine/be;->l:[Ljava/lang/String;

    sget-object v3, Lcom/creativemobi/engine/be;->g:[I

    aget v3, v3, v1

    aget-object v2, v2, v3

    const/high16 v3, 0x7fc00000    # NaNf

    invoke-static {p0, v2, v3}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v2

    .line 224
    new-instance v3, Lcom/creativemobi/engine/be;

    invoke-direct {v3, v1, v2}, Lcom/creativemobi/engine/be;-><init>(IF)V

    .line 225
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {v3}, Lcom/creativemobi/engine/be;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    if-ge v1, v5, :cond_0

    sget-object v2, Lcom/creativemobi/engine/be;->g:[I

    aget v2, v2, v1

    sget-object v3, Lcom/creativemobi/engine/be;->g:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    if-ne v2, v3, :cond_0

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    :cond_1
    return-object v0
.end method

.method public static c(Landroid/content/Context;IF)V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/creativemobi/engine/be;->l:[Ljava/lang/String;

    aget-object v0, v0, p1

    const/high16 v1, 0x7fc00000    # NaNf

    invoke-static {p0, v0, v1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    .line 184
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    cmpl-float v1, v0, p2

    if-lez v1, :cond_1

    .line 185
    :cond_0
    sget-object v1, Lcom/creativemobi/engine/be;->l:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {p0, v1, p2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;F)V

    .line 187
    invoke-static {p0, p1, p2, v0}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;IFF)V

    .line 189
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    iget v0, p0, Lcom/creativemobi/engine/be;->d:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 53
    :goto_0
    return v0

    .line 38
    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/be;->a:I

    packed-switch v0, :pswitch_data_0

    .line 53
    iget v0, p0, Lcom/creativemobi/engine/be;->d:F

    iget v1, p0, Lcom/creativemobi/engine/be;->e:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    move v0, v3

    goto :goto_0

    .line 51
    :pswitch_0
    iget v0, p0, Lcom/creativemobi/engine/be;->d:F

    iget v1, p0, Lcom/creativemobi/engine/be;->e:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 53
    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
