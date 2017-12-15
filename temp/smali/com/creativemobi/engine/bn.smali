.class public final Lcom/creativemobi/engine/bn;
.super Ljava/lang/Object;
.source "RaceOfflineView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# static fields
.field private static i:[F

.field private static j:[F


# instance fields
.field a:Lcom/creativemobi/engine/bl;

.field b:I

.field c:I

.field private d:Landroid/graphics/Typeface;

.field private e:Z

.field private f:I

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private k:[F

.field private l:[F

.field private m:[[I

.field private n:[Lcom/creativemobi/engine/cg;

.field private o:[Lcom/creativemobi/engine/cg;

.field private p:I

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 34
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/creativemobi/engine/bn;->i:[F

    .line 36
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/creativemobi/engine/bn;->j:[F

    return-void

    .line 34
    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3fb33333    # 1.4f
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x40400000    # 3.0f
    .end array-data

    .line 36
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x41200000    # 10.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x6

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v8, p0, Lcom/creativemobi/engine/bn;->e:Z

    .line 18
    iput v8, p0, Lcom/creativemobi/engine/bn;->b:I

    .line 19
    iput v7, p0, Lcom/creativemobi/engine/bn;->f:I

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vs BEGINNER"

    aput-object v1, v0, v7

    const-string v1, "vs AMATEUR"

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "vs PRO"

    aput-object v2, v0, v1

    const-string v1, "BOSS BATTLE"

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/creativemobi/engine/bn;->g:[Ljava/lang/String;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Race against a weak opponent with a car of your level. Choose between 1/4 and 1/2 mile using the switch above."

    aput-object v1, v0, v7

    const-string v1, "Race against an average opponent with a car of your level. Mediocre driving, random upgrades, low reward."

    aput-object v1, v0, v8

    const/4 v1, 0x2

    const-string v2, "Race against a stronger opponent with a car of your level. If you beat these easily, it\'s time to take on the bosses."

    aput-object v2, v0, v1

    const-string v1, "Challenge one of the two unique bosses on each level. These are the most challenging and rewarding offline races."

    aput-object v1, v0, v9

    iput-object v0, p0, Lcom/creativemobi/engine/bn;->h:[Ljava/lang/String;

    .line 38
    new-array v0, v6, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/creativemobi/engine/bn;->k:[F

    .line 39
    new-array v0, v6, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/creativemobi/engine/bn;->l:[F

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v8

    const/4 v1, 0x2

    new-array v2, v6, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-array v2, v6, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    new-array v1, v6, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v6

    new-array v1, v6, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v2, v6, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/creativemobi/engine/bn;->m:[[I

    .line 46
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/creativemobi/engine/cg;

    new-instance v1, Lcom/creativemobi/engine/cg;

    new-array v2, v5, [I

    fill-array-data v2, :array_c

    invoke-direct {v1, v9, v2}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/creativemobi/engine/cg;

    const/16 v2, 0xb

    new-array v3, v5, [I

    fill-array-data v3, :array_d

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v1, v0, v8

    const/4 v1, 0x2

    new-instance v2, Lcom/creativemobi/engine/cg;

    const/16 v3, 0xd

    new-array v4, v5, [I

    fill-array-data v4, :array_e

    invoke-direct {v2, v3, v4}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/creativemobi/engine/cg;

    const/16 v2, 0xf

    new-array v3, v5, [I

    fill-array-data v3, :array_f

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-instance v2, Lcom/creativemobi/engine/cg;

    const/16 v3, 0x10

    new-array v4, v5, [I

    fill-array-data v4, :array_10

    invoke-direct {v2, v3, v4}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/creativemobi/engine/cg;

    const/16 v2, 0x13

    new-array v3, v5, [I

    fill-array-data v3, :array_11

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/creativemobi/engine/cg;

    const/16 v2, 0x15

    new-array v3, v5, [I

    fill-array-data v3, :array_12

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-instance v2, Lcom/creativemobi/engine/cg;

    const/16 v3, 0x17

    new-array v4, v5, [I

    fill-array-data v4, :array_13

    invoke-direct {v2, v3, v4}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/creativemobi/engine/cg;

    const/16 v3, 0x1b

    new-array v4, v5, [I

    fill-array-data v4, :array_14

    invoke-direct {v2, v3, v4}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/creativemobi/engine/cg;

    const/16 v3, 0x20

    new-array v4, v5, [I

    fill-array-data v4, :array_15

    invoke-direct {v2, v3, v4}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/creativemobi/engine/bn;->n:[Lcom/creativemobi/engine/cg;

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/creativemobi/engine/cg;

    new-instance v1, Lcom/creativemobi/engine/cg;

    const/16 v2, 0xa

    new-array v3, v5, [I

    fill-array-data v3, :array_16

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/creativemobi/engine/cg;

    new-array v2, v5, [I

    fill-array-data v2, :array_17

    invoke-direct {v1, v6, v2}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v1, v0, v8

    const/4 v1, 0x2

    new-instance v2, Lcom/creativemobi/engine/cg;

    new-array v3, v5, [I

    fill-array-data v3, :array_18

    invoke-direct {v2, v8, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/creativemobi/engine/cg;

    const/16 v2, 0xc

    new-array v3, v5, [I

    fill-array-data v3, :array_19

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v1, v0, v9

    const/4 v1, 0x4

    new-instance v2, Lcom/creativemobi/engine/cg;

    const/16 v3, 0x11

    new-array v4, v5, [I

    fill-array-data v4, :array_1a

    invoke-direct {v2, v3, v4}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/creativemobi/engine/cg;

    const/16 v2, 0xe

    new-array v3, v5, [I

    fill-array-data v3, :array_1b

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/creativemobi/engine/cg;

    const/16 v2, 0x14

    new-array v3, v5, [I

    fill-array-data v3, :array_1c

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-instance v2, Lcom/creativemobi/engine/cg;

    const/16 v3, 0x19

    new-array v4, v5, [I

    fill-array-data v4, :array_1d

    invoke-direct {v2, v3, v4}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/creativemobi/engine/cg;

    const/16 v3, 0x1c

    new-array v4, v5, [I

    fill-array-data v4, :array_1e

    invoke-direct {v2, v3, v4}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/creativemobi/engine/cg;

    const/16 v3, 0x20

    new-array v4, v5, [I

    fill-array-data v4, :array_1f

    invoke-direct {v2, v3, v4}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/creativemobi/engine/bn;->o:[Lcom/creativemobi/engine/cg;

    .line 156
    iput v7, p0, Lcom/creativemobi/engine/bn;->p:I

    .line 158
    iput-boolean v7, p0, Lcom/creativemobi/engine/bn;->q:Z

    return-void

    .line 38
    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x41780000    # 15.5f
        0x41600000    # 14.0f
        0x41500000    # 13.0f
        0x41500000    # 13.0f
    .end array-data

    .line 39
    :array_1
    .array-data 4
        0x41b80000    # 23.0f
        0x41b40000    # 22.5f
        0x41ac0000    # 21.5f
        0x41600000    # 14.0f
        0x41500000    # 13.0f
    .end array-data

    .line 41
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x7530
        0x9c40
        0xc350
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xc350
        0x13880
        0x186a0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x186a0
        0x222e0
        0x30d40
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x30d40
        0x41eb0
        0x57e40
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x53020
        0x7a120
        0xaae60
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x9eb10
        0xc3500
        0x13d620
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x124f80
        0x19f0a0
        0x2625a0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x2625a0
        0x30d400
        0x401640
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x3d0900
        0x53ec60
        0x802c80
        0x0
        0x0
    .end array-data

    .line 46
    :array_c
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x6
        0x6
        0x6
        0x3
    .end array-data

    :array_e
    .array-data 4
        0x2
        0x2
        0x6
        0x6
        0x3
        0x6
    .end array-data

    :array_f
    .array-data 4
        0x4
        0x4
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x4
        0x4
        0x4
        0x6
        0x6
        0x6
    .end array-data

    :array_11
    .array-data 4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x6
    .end array-data

    :array_12
    .array-data 4
        0x3
        0x3
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_14
    .array-data 4
        0x5
        0x5
        0x5
        0x1
        0x6
        0x6
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
    .end array-data

    .line 57
    :array_16
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_18
    .array-data 4
        0x4
        0x4
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_19
    .array-data 4
        0x2
        0x2
        0x2
        0x6
        0x3
        0x6
    .end array-data

    :array_1a
    .array-data 4
        0x4
        0x4
        0x4
        0x6
        0x6
        0x6
    .end array-data

    :array_1b
    .array-data 4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x6
    .end array-data

    :array_1c
    .array-data 4
        0x3
        0x3
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_1d
    .array-data 4
        0x3
        0x3
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_1e
    .array-data 4
        0x3
        0x3
        0x6
        0x6
        0x6
        0x6
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
    .end array-data
.end method

.method private b(Lcom/creativemobi/engine/w;)V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "distance400Selected"

    invoke-static {v0, v1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/creativemobi/engine/bn;->e:Z

    .line 296
    iget-boolean v0, p0, Lcom/creativemobi/engine/bn;->e:Z

    if-eqz v0, :cond_1

    .line 297
    const-string v0, "distance_switch_on"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_on"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 298
    const-string v0, "distance_switch_off"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_off"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 303
    :goto_0
    const/16 v0, 0x190

    iput v0, p0, Lcom/creativemobi/engine/bn;->c:I

    .line 304
    iget-boolean v0, p0, Lcom/creativemobi/engine/bn;->e:Z

    if-nez v0, :cond_0

    const/16 v0, 0x320

    iput v0, p0, Lcom/creativemobi/engine/bn;->c:I

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/bn;->c:I

    invoke-static {v0, v1}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/bn;->p:I

    .line 306
    return-void

    .line 300
    :cond_1
    const-string v0, "distance_switch_on"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_off"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 301
    const-string v0, "distance_switch_off"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_on"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/high16 v5, 0x43960000    # 300.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x0

    .line 162
    iget-boolean v0, p0, Lcom/creativemobi/engine/bn;->q:Z

    if-eqz v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iput-boolean v2, p0, Lcom/creativemobi/engine/bn;->q:Z

    .line 164
    const-string v0, "distance_switch_on"

    invoke-virtual {p1, v0, p2, p3, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "distance400Selected"

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 166
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/bn;->b(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    .line 169
    :cond_2
    const-string v0, "distance_switch_off"

    invoke-virtual {p1, v0, p2, p3, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "distance400Selected"

    invoke-static {v0, v1, v4}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 171
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/bn;->b(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    .line 175
    :cond_3
    const-string v0, "nextButton"

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    new-instance v0, Lcom/creativemobi/engine/k;

    invoke-direct {v0}, Lcom/creativemobi/engine/k;-><init>()V

    .line 177
    sget-object v1, Lcom/creativemobi/engine/bn;->i:[F

    iget v2, p0, Lcom/creativemobi/engine/bn;->f:I

    aget v1, v1, v2

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/creativemobi/engine/bn;->b:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/creativemobi/engine/k;->e:I

    .line 178
    sget-object v1, Lcom/creativemobi/engine/bn;->j:[F

    iget v2, p0, Lcom/creativemobi/engine/bn;->f:I

    aget v1, v1, v2

    iget v2, p0, Lcom/creativemobi/engine/bn;->b:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/creativemobi/engine/k;->d:I

    .line 180
    iget v1, p0, Lcom/creativemobi/engine/bn;->f:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 181
    iget v1, p0, Lcom/creativemobi/engine/bn;->p:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 182
    iget-object v0, p0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/c;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/c;-><init>(Lcom/creativemobi/engine/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/creativemobi/engine/bn;->o:[Lcom/creativemobi/engine/cg;

    array-length v1, v1

    iget v2, p0, Lcom/creativemobi/engine/bn;->p:I

    if-gt v1, v2, :cond_5

    .line 193
    iget-object v0, p0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/a;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/a;-><init>(Lcom/creativemobi/engine/bn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 202
    :cond_5
    iget-boolean v1, p0, Lcom/creativemobi/engine/bn;->e:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/creativemobi/engine/bn;->o:[Lcom/creativemobi/engine/cg;

    iget v2, p0, Lcom/creativemobi/engine/bn;->p:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/creativemobi/engine/k;->h:Lcom/creativemobi/engine/cg;

    .line 204
    :goto_1
    sget-object v1, Lcom/creativemobi/engine/bn;->i:[F

    iget v2, p0, Lcom/creativemobi/engine/bn;->f:I

    aget v1, v1, v2

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/creativemobi/engine/bn;->p:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/creativemobi/engine/k;->e:I

    .line 205
    sget-object v1, Lcom/creativemobi/engine/bn;->j:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/creativemobi/engine/bn;->p:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/creativemobi/engine/bn;->p:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/creativemobi/engine/k;->d:I

    .line 206
    iget v1, p0, Lcom/creativemobi/engine/bn;->p:I

    iput v1, v0, Lcom/creativemobi/engine/k;->j:I

    .line 215
    :goto_2
    iget-boolean v1, p0, Lcom/creativemobi/engine/bn;->e:Z

    if-eqz v1, :cond_a

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/k;->b(I)V

    .line 218
    :goto_3
    iget v1, p0, Lcom/creativemobi/engine/bn;->f:I

    iput v1, v0, Lcom/creativemobi/engine/k;->c:I

    .line 220
    iget-object v1, p0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v1, v0, v4}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 221
    invoke-static {v4}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    goto/16 :goto_0

    .line 203
    :cond_6
    iget-object v1, p0, Lcom/creativemobi/engine/bn;->n:[Lcom/creativemobi/engine/cg;

    iget v2, p0, Lcom/creativemobi/engine/bn;->p:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/creativemobi/engine/k;->h:Lcom/creativemobi/engine/cg;

    goto :goto_1

    .line 207
    :cond_7
    iget-object v1, p0, Lcom/creativemobi/engine/bn;->m:[[I

    iget v2, p0, Lcom/creativemobi/engine/bn;->b:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/creativemobi/engine/bn;->f:I

    aget v1, v1, v2

    if-nez v1, :cond_9

    .line 208
    iget-boolean v1, p0, Lcom/creativemobi/engine/bn;->e:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/creativemobi/engine/bn;->k:[F

    iget v2, p0, Lcom/creativemobi/engine/bn;->f:I

    aget v1, v1, v2

    iput v1, v0, Lcom/creativemobi/engine/k;->f:F

    goto :goto_2

    .line 209
    :cond_8
    iget-object v1, p0, Lcom/creativemobi/engine/bn;->l:[F

    iget v2, p0, Lcom/creativemobi/engine/bn;->f:I

    aget v1, v1, v2

    iput v1, v0, Lcom/creativemobi/engine/k;->f:F

    goto :goto_2

    .line 211
    :cond_9
    sget-object v1, Lcom/creativemobi/engine/bn;->i:[F

    aget v1, v1, v6

    mul-float/2addr v1, v5

    iget v2, p0, Lcom/creativemobi/engine/bn;->b:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/bn;->m:[[I

    iget v3, p0, Lcom/creativemobi/engine/bn;->b:I

    aget-object v2, v2, v3

    iget v3, p0, Lcom/creativemobi/engine/bn;->f:I

    aget v2, v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/bn;->m:[[I

    iget v3, p0, Lcom/creativemobi/engine/bn;->b:I

    aget-object v2, v2, v3

    aget v2, v2, v6

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    .line 212
    long-to-int v1, v1

    iput v1, v0, Lcom/creativemobi/engine/k;->e:I

    .line 213
    iget-object v1, p0, Lcom/creativemobi/engine/bn;->m:[[I

    iget v2, p0, Lcom/creativemobi/engine/bn;->b:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/creativemobi/engine/bn;->f:I

    aget v1, v1, v2

    iput v1, v0, Lcom/creativemobi/engine/k;->i:I

    goto :goto_2

    .line 216
    :cond_a
    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/k;->b(I)V

    goto :goto_3

    :cond_b
    move v0, v4

    .line 224
    :goto_4
    iget-object v1, p0, Lcom/creativemobi/engine/bn;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listitem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, p3, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 226
    iput v0, p0, Lcom/creativemobi/engine/bn;->f:I

    .line 227
    const-string v0, "listitem_hl"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/high16 v1, 0x42340000    # 45.0f

    iget v2, p0, Lcom/creativemobi/engine/bn;->f:I

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v2, v2, 0x96

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 228
    iget-object v0, p0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "raceOfflineSelectedIdx"

    iget v2, p0, Lcom/creativemobi/engine/bn;->f:I

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 224
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 10

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "LEVEL %1$d RACES"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/creativemobi/engine/bn;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    const/16 v3, 0x85

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "RACE DESCRIPTION"

    const/16 v2, 0x21c

    const/16 v3, 0x85

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, ""

    const/16 v2, 0x22b

    const/16 v3, 0x99

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/creativemobi/engine/bn;->h:[Ljava/lang/String;

    iget v2, p0, Lcom/creativemobi/engine/bn;->f:I

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v2, 0xdc

    invoke-static {v1, v0, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/creativemobi/engine/x;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/16 v3, 0x21c

    mul-int/lit8 v4, v1, 0x1c

    add-int/lit16 v4, v4, 0xaa

    invoke-direct {v2, p2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x18

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/creativemobi/engine/bn;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    mul-int/lit8 v1, v0, 0x32

    add-int/lit16 v1, v1, 0xaf

    new-instance v2, Lcom/creativemobi/engine/x;

    iget-object v3, p0, Lcom/creativemobi/engine/bn;->g:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/16 v4, 0x3c

    add-int/lit8 v5, v1, 0x6

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x1c

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget v3, p0, Lcom/creativemobi/engine/bn;->b:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    iget v3, p0, Lcom/creativemobi/engine/bn;->p:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/creativemobi/engine/bn;->g:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    :cond_1
    move v2, v3

    iget-object v3, p0, Lcom/creativemobi/engine/bn;->n:[Lcom/creativemobi/engine/cg;

    array-length v3, v3

    if-lt v2, v3, :cond_2

    new-instance v2, Lcom/creativemobi/engine/x;

    const-string v3, "COMPLETE"

    const/16 v4, 0x1ea

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v2, v3, v4, v1}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1a

    const v3, -0x112555

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/creativemobi/engine/bn;->i:[F

    aget v3, v3, v0

    const/high16 v4, 0x43960000    # 300.0f

    mul-float/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/creativemobi/engine/bn;->m:[[I

    iget v6, p0, Lcom/creativemobi/engine/bn;->b:I

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget v5, v5, v6

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    if-ge v0, v5, :cond_3

    sget-object v3, Lcom/creativemobi/engine/bn;->i:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    const/high16 v4, 0x43960000    # 300.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/creativemobi/engine/bn;->b:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/creativemobi/engine/bn;->m:[[I

    iget v5, p0, Lcom/creativemobi/engine/bn;->b:I

    aget-object v4, v4, v5

    aget v4, v4, v0

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/creativemobi/engine/bn;->m:[[I

    iget v5, p0, Lcom/creativemobi/engine/bn;->b:I

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-long v3, v3

    :cond_3
    new-instance v5, Lcom/creativemobi/engine/x;

    const-string v6, "$%1$d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1ea

    const/4 v8, 0x7

    sub-int v8, v1, v8

    invoke-direct {v5, v6, v7, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v6, 0x14

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_4

    const/4 v3, -0x1

    :goto_3
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6, v3, v4, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v5}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v3, Lcom/creativemobi/engine/x;

    const-string v4, "+cash: "

    const/16 v6, 0x1ea

    invoke-virtual {v5}, Lcom/creativemobi/engine/x;->a()F

    move-result v5

    float-to-int v5, v5

    sub-int v5, v6, v5

    const/4 v6, 0x7

    sub-int v6, v1, v6

    invoke-direct {v3, v4, v5, v6}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x14

    const v5, -0x112555

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    sget-object v3, Lcom/creativemobi/engine/bn;->j:[F

    aget v3, v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_7

    sget-object v3, Lcom/creativemobi/engine/bn;->j:[F

    aget v3, v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    :goto_4
    new-instance v3, Lcom/creativemobi/engine/x;

    const-string v4, "%1$d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1ea

    add-int/lit8 v6, v1, 0xb

    invoke-direct {v3, v4, v5, v6}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x14

    if-lez v2, :cond_5

    const v2, -0x2676e5

    :goto_5
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v2, Lcom/creativemobi/engine/x;

    const-string v4, "+respect: "

    const/16 v5, 0x1ea

    invoke-virtual {v3}, Lcom/creativemobi/engine/x;->a()F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v5, v3

    add-int/lit8 v1, v1, 0xb

    invoke-direct {v2, v4, v3, v1}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x14

    const v3, -0x112555

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    goto/16 :goto_2

    :cond_4
    const v3, -0x112555

    goto/16 :goto_3

    :cond_5
    const v2, -0x112555

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "distance:"

    const/16 v2, 0x15b

    const/16 v3, 0x84

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x16

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "1/4mi"

    const/16 v2, 0x16a

    const/16 v3, 0x83

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "1/2mi"

    const/16 v2, 0x1b2

    const/16 v3, 0x83

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 154
    return-void

    :cond_7
    move v2, v3

    goto/16 :goto_4
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 6

    .prologue
    const/16 v3, 0x6c

    const/16 v5, 0x2d

    const/4 v4, 0x0

    .line 246
    iput-object p3, p0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    .line 248
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 251
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 252
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    invoke-virtual {p1, v0, v1, v4, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 254
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/bn;->d:Landroid/graphics/Typeface;

    .line 256
    const-string v0, "raceOfflineSelectedIdx"

    invoke-static {p2, v0}, Lcom/creativemobi/engine/ac;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/bn;->f:I

    .line 257
    iget v0, p0, Lcom/creativemobi/engine/bn;->f:I

    if-gtz v0, :cond_0

    iput v4, p0, Lcom/creativemobi/engine/bn;->f:I

    .line 259
    :cond_0
    const-string v0, "nextButton"

    const-string v1, "graphics/garage/race_button.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 261
    const-string v0, "listitem"

    const-string v1, "graphics/menu/listitem.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 262
    const-string v0, "listitem_hl"

    const-string v1, "graphics/menu/listitem_hl.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 264
    const-string v0, "divider"

    const-string v1, "graphics/divider.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 265
    const-string v0, "trophy_frame"

    const-string v1, "graphics/menu/trophy_frame.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 267
    const-string v0, "distance_switch_off"

    const-string v1, "graphics/menu/distance_switch_off.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 268
    const-string v0, "distance_switch_on"

    const-string v1, "graphics/menu/distance_switch_on.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 269
    const-string v0, "distance_switch_on"

    const-string v1, "distance_switch_on"

    const/16 v2, 0x160

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 270
    const-string v0, "distance_switch_off"

    const-string v1, "distance_switch_off"

    const/16 v2, 0x1a8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 272
    const-string v0, "raceSign"

    const-string v1, "nextButton"

    const/16 v2, 0x29e

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 274
    const-string v0, "nextButton"

    const-string v1, "nextButton"

    const/16 v2, 0x294

    const/16 v3, 0x1a9

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 275
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x1f4

    const/16 v3, 0x69

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    move v0, v4

    .line 277
    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/bn;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listitem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "listitem"

    mul-int/lit8 v3, v0, 0x32

    add-int/lit16 v3, v3, 0x96

    invoke-virtual {p1, v1, v2, v5, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_1
    const-string v0, "listitem_hl"

    const-string v1, "listitem_hl"

    iget v2, p0, Lcom/creativemobi/engine/bn;->f:I

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v2, v2, 0x96

    invoke-virtual {p1, v0, v1, v5, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 283
    :try_start_0
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    .line 284
    iget v1, v0, Lcom/creativemobi/engine/cg;->a:I

    invoke-interface {p3, p1, v1}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v1

    .line 285
    invoke-virtual {v0}, Lcom/creativemobi/engine/cg;->b()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/creativemobi/engine/m;->a([I)V

    .line 286
    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->x()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/bn;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_1
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/bn;->b(Lcom/creativemobi/engine/w;)V

    .line 290
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/creativemobi/engine/bn;->a:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/an;

    invoke-direct {v1}, Lcom/creativemobi/engine/an;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/bn;->q:Z

    .line 238
    return-void
.end method
