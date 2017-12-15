.class public final Lcom/creativemobi/engine/ab;
.super Ljava/lang/Object;
.source "RaceOnlineView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# static fields
.field private static final e:[F

.field private static l:[F

.field private static m:[F

.field private static n:[F


# instance fields
.field public a:I

.field b:Lcom/creativemobi/engine/bl;

.field public c:Z

.field private d:Z

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Typeface;

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Z

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/creativemobi/engine/ab;->e:[F

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/creativemobi/engine/ab;->l:[F

    .line 33
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/creativemobi/engine/ab;->m:[F

    .line 34
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/creativemobi/engine/ab;->n:[F

    return-void

    .line 17
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 32
    :array_1
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data

    .line 33
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x41000000    # 8.0f
        0x41200000    # 10.0f
        0x41400000    # 12.0f
        0x41700000    # 15.0f
        0x41900000    # 18.0f
        0x41a80000    # 21.0f
        0x41c80000    # 25.0f
    .end array-data

    .line 34
    :array_3
    .array-data 4
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41300000    # 11.0f
        0x41400000    # 12.0f
        0x41500000    # 13.0f
        0x41700000    # 15.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean v4, p0, Lcom/creativemobi/engine/ab;->d:Z

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "You will race against a recorded run by a randomly selected opponent of your level. Beat him to win the prize."

    aput-object v1, v0, v3

    const-string v1, "You and your online opponent will be driving identical cars. Win the battle of skill to get the prize."

    aput-object v1, v0, v4

    const-string v1, "You and your opponent will bet the same amount of respect points. The winner takes it all, the loser gets nothing."

    aput-object v1, v0, v5

    const-string v1, "Challenge the best racers in 10-player tournaments to improve your rating and rank high on the global leaderboards."

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "Quickly find and challenge your friends."

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/creativemobi/engine/ab;->f:[Ljava/lang/String;

    .line 24
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "FACE TO FACE"

    aput-object v1, v0, v3

    const-string v1, "DRIVERS BATTLE"

    aput-object v1, v0, v4

    const-string v1, "BET AND RACE"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/creativemobi/engine/ab;->g:[Ljava/lang/String;

    .line 25
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "FACE TO FACE"

    aput-object v1, v0, v3

    const-string v1, "DRIVERS BATTLE"

    aput-object v1, v0, v4

    const-string v1, "BET AND RACE"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/creativemobi/engine/ab;->h:[Ljava/lang/String;

    .line 27
    iput v4, p0, Lcom/creativemobi/engine/ab;->a:I

    .line 28
    iput v3, p0, Lcom/creativemobi/engine/ab;->i:I

    .line 29
    iput v3, p0, Lcom/creativemobi/engine/ab;->j:I

    .line 41
    iput-boolean v4, p0, Lcom/creativemobi/engine/ab;->c:Z

    .line 53
    iput-boolean v3, p0, Lcom/creativemobi/engine/ab;->o:Z

    .line 54
    iput-boolean v3, p0, Lcom/creativemobi/engine/ab;->p:Z

    .line 264
    iput v3, p0, Lcom/creativemobi/engine/ab;->s:I

    .line 265
    iput v3, p0, Lcom/creativemobi/engine/ab;->t:I

    return-void
.end method

.method public static a(II)F
    .locals 2

    .prologue
    .line 376
    packed-switch p0, :pswitch_data_0

    .line 381
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 379
    :pswitch_0
    sget-object v0, Lcom/creativemobi/engine/ab;->l:[F

    aget v0, v0, p0

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/creativemobi/engine/ab;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/creativemobi/engine/ab;->q:I

    return v0
.end method

.method static synthetic a(Lcom/creativemobi/engine/ab;[B)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    iput-boolean v4, p0, Lcom/creativemobi/engine/ab;->o:Z

    new-instance v0, Lcom/creativemobi/engine/k;

    invoke-direct {v0}, Lcom/creativemobi/engine/k;-><init>()V

    iget v1, p0, Lcom/creativemobi/engine/ab;->i:I

    iget v2, p0, Lcom/creativemobi/engine/ab;->a:I

    invoke-static {v1, v2}, Lcom/creativemobi/engine/ab;->a(II)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/creativemobi/engine/k;->e:I

    iget v1, p0, Lcom/creativemobi/engine/ab;->i:I

    iget v2, p0, Lcom/creativemobi/engine/ab;->a:I

    invoke-static {v1, v2}, Lcom/creativemobi/engine/ab;->b(II)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/creativemobi/engine/k;->d:I

    if-nez p1, :cond_0

    const-string v0, "No online opponent found. Please try again later."

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ab;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-virtual {v0, p1, v1}, Lcom/creativemobi/engine/k;->a([BLcom/creativemobi/engine/bl;)I

    move-result v1

    sget v2, Lcom/creativemobi/engine/k;->q:I

    if-ne v1, v2, :cond_1

    const-string v0, "Your opponent has a newer version of the game. Please update."

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v2, Lcom/creativemobi/engine/k;->r:I

    if-ne v1, v2, :cond_2

    const-string v0, "No online opponent found. Please try again later."

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/creativemobi/engine/ab;->d:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/k;->b(I)V

    :goto_1
    iget v1, p0, Lcom/creativemobi/engine/ab;->i:I

    if-ne v1, v3, :cond_6

    invoke-virtual {v0}, Lcom/creativemobi/engine/k;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/k;->c(I)V

    :goto_2
    iget v1, p0, Lcom/creativemobi/engine/ab;->i:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/creativemobi/engine/ab;->a:I

    invoke-static {v4, v1}, Lcom/creativemobi/engine/ab;->b(II)F

    move-result v1

    sget-object v2, Lcom/creativemobi/engine/ab;->e:[F

    iget v3, p0, Lcom/creativemobi/engine/ab;->j:I

    aget v2, v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v2, v1}, Lcom/creativemobi/engine/bl;->e(I)V

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/creativemobi/engine/k;->d:I

    :cond_3
    iget v1, p0, Lcom/creativemobi/engine/ab;->i:I

    if-ne v1, v5, :cond_4

    iput-boolean v5, v0, Lcom/creativemobi/engine/k;->l:Z

    :cond_4
    iget-object v1, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v1, v0, v4}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    invoke-static {v4}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/k;->b(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/creativemobi/engine/k;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/k;->c(I)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/o;

    invoke-direct {v1, p0, p1}, Lcom/creativemobi/engine/o;-><init>(Lcom/creativemobi/engine/ab;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    return-void
.end method

.method public static b(II)F
    .locals 1

    .prologue
    .line 393
    packed-switch p0, :pswitch_data_0

    .line 399
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 395
    :pswitch_0
    sget-object v0, Lcom/creativemobi/engine/ab;->m:[F

    aget v0, v0, p1

    goto :goto_0

    .line 397
    :pswitch_1
    sget-object v0, Lcom/creativemobi/engine/ab;->n:[F

    aget v0, v0, p1

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lcom/creativemobi/engine/w;)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "distance400Selected"

    invoke-static {v0, v1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/creativemobi/engine/ab;->d:Z

    .line 246
    iget-boolean v0, p0, Lcom/creativemobi/engine/ab;->d:Z

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "distance_switch_on"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_on"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 248
    const-string v0, "distance_switch_off"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_off"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 256
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v0, "distance_switch_on"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_off"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 251
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
    .line 262
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v3, 0x0

    .line 97
    iget-boolean v0, p0, Lcom/creativemobi/engine/ab;->o:Z

    if-eqz v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/creativemobi/engine/ab;->p:Z

    if-nez v0, :cond_0

    .line 99
    iput-boolean v5, p0, Lcom/creativemobi/engine/ab;->p:Z

    .line 102
    const-string v0, "distance_switch_on"

    invoke-virtual {p1, v0, p2, p3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "distance400Selected"

    invoke-static {v0, v1, v5}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 104
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ab;->b(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    .line 107
    :cond_2
    const-string v0, "distance_switch_off"

    invoke-virtual {p1, v0, p2, p3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "distance400Selected"

    invoke-static {v0, v1, v3}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 109
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ab;->b(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    .line 113
    :cond_3
    const-string v0, "createProfile"

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/q;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/q;-><init>(Lcom/creativemobi/engine/ab;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 126
    :cond_4
    const-string v0, "nextButton"

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 128
    iget v0, p0, Lcom/creativemobi/engine/ab;->i:I

    if-ne v0, v6, :cond_5

    .line 129
    iget v0, p0, Lcom/creativemobi/engine/ab;->a:I

    invoke-static {v3, v0}, Lcom/creativemobi/engine/ab;->b(II)F

    move-result v0

    sget-object v1, Lcom/creativemobi/engine/ab;->e:[F

    iget v2, p0, Lcom/creativemobi/engine/ab;->j:I

    aget v1, v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 130
    iget-object v1, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->c()I

    move-result v1

    if-ge v1, v0, :cond_5

    .line 131
    const-string v0, "Not enough respect points for bet."

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_5
    iget-boolean v0, p0, Lcom/creativemobi/engine/ab;->d:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x190

    :goto_1
    iput v0, p0, Lcom/creativemobi/engine/ab;->q:I

    .line 137
    iget v0, p0, Lcom/creativemobi/engine/ab;->i:I

    if-ne v0, v6, :cond_6

    iget v0, p0, Lcom/creativemobi/engine/ab;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/creativemobi/engine/ab;->q:I

    .line 139
    :cond_6
    iput-boolean v5, p0, Lcom/creativemobi/engine/ab;->o:Z

    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/p;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/p;-><init>(Lcom/creativemobi/engine/ab;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 136
    :cond_7
    const/16 v0, 0x320

    goto :goto_1

    :cond_8
    move v0, v3

    .line 152
    :goto_2
    iget-object v1, p0, Lcom/creativemobi/engine/ab;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_9

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listitem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, p3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 154
    iput v0, p0, Lcom/creativemobi/engine/ab;->i:I

    .line 155
    const-string v0, "listitem_hl"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/high16 v1, 0x42340000    # 45.0f

    iget v2, p0, Lcom/creativemobi/engine/ab;->i:I

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v2, v2, 0x96

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 156
    iget-object v0, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "raceOnlineSelectedIdx"

    iget v2, p0, Lcom/creativemobi/engine/ab;->i:I

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 161
    :cond_9
    iget v0, p0, Lcom/creativemobi/engine/ab;->i:I

    if-ne v0, v6, :cond_0

    move v0, v3

    .line 162
    :goto_3
    sget-object v1, Lcom/creativemobi/engine/ab;->e:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distance_switch_off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, p3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;FF)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distance_switch_off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/ab;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    const-string v2, "distance_switch_off"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 165
    iput v0, p0, Lcom/creativemobi/engine/ab;->j:I

    goto/16 :goto_0

    .line 152
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 162
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 10

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    iget-boolean v0, p0, Lcom/creativemobi/engine/ab;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/creativemobi/engine/ab;->r:Z

    iget-boolean v0, p0, Lcom/creativemobi/engine/ab;->r:Z

    if-eqz v0, :cond_0

    const-string v0, "createProfile"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LEVEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/ab;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " RACES"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x37

    const/16 v3, 0x85

    invoke-direct {v1, v0, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v0, 0x1c

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget-boolean v0, p0, Lcom/creativemobi/engine/ab;->o:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/creativemobi/engine/ab;->s:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lcom/creativemobi/engine/ab;->s:I

    iget v0, p0, Lcom/creativemobi/engine/ab;->s:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/creativemobi/engine/ab;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/creativemobi/engine/ab;->t:I

    iget v0, p0, Lcom/creativemobi/engine/ab;->t:I

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/creativemobi/engine/ab;->t:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/ab;->s:I

    :cond_1
    const-string v0, "createProfile"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    const-string v0, "Searching for online opponent."

    const/4 v1, 0x0

    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_0
    iget v2, p0, Lcom/creativemobi/engine/ab;->t:I

    if-ge v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/creativemobi/engine/x;

    const/16 v2, 0x37

    const/16 v3, 0x1c2

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    :cond_3
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "RACE DESCRIPTION"

    const/16 v2, 0x21c

    const/16 v3, 0x85

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

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

    iget-object v4, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/creativemobi/engine/ab;->f:[Ljava/lang/String;

    iget v2, p0, Lcom/creativemobi/engine/ab;->i:I

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v2, 0xdc

    invoke-static {v1, v0, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

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

    iget-object v6, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/creativemobi/engine/ab;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_b

    const/16 v1, 0x3c

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    const/16 v1, 0x6e

    :cond_5
    mul-int/lit8 v2, v0, 0x32

    add-int/lit16 v2, v2, 0xaf

    new-instance v3, Lcom/creativemobi/engine/x;

    iget-object v4, p0, Lcom/creativemobi/engine/ab;->g:[Ljava/lang/String;

    aget-object v4, v4, v0

    add-int/lit8 v5, v2, 0x6

    invoke-direct {v3, v4, v1, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    iget v1, p0, Lcom/creativemobi/engine/ab;->a:I

    invoke-static {v0, v1}, Lcom/creativemobi/engine/ab;->a(II)F

    move-result v1

    float-to-int v1, v1

    int-to-long v3, v1

    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v5, "$%1$d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ea

    const/4 v7, 0x7

    sub-int v7, v2, v7

    invoke-direct {v1, v5, v6, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0x14

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_7

    const/4 v3, -0x1

    :goto_3
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    invoke-virtual {v1, v5, v3, v4, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v3, Lcom/creativemobi/engine/x;

    const-string v4, "+cash: "

    const/16 v5, 0x1ea

    invoke-virtual {v1}, Lcom/creativemobi/engine/x;->a()F

    move-result v1

    float-to-int v1, v1

    sub-int v1, v5, v1

    const/4 v5, 0x7

    sub-int v5, v2, v5

    invoke-direct {v3, v4, v1, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x14

    const v4, -0x112555

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget v1, p0, Lcom/creativemobi/engine/ab;->a:I

    invoke-static {v0, v1}, Lcom/creativemobi/engine/ab;->b(II)F

    move-result v1

    float-to-int v1, v1

    new-instance v3, Lcom/creativemobi/engine/x;

    const-string v4, "%1$d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1ea

    add-int/lit8 v6, v2, 0xb

    invoke-direct {v3, v4, v5, v6}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x14

    if-lez v1, :cond_8

    const v1, -0x2676e5

    :goto_4
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v4, "+respect: "

    const/16 v5, 0x1ea

    invoke-virtual {v3}, Lcom/creativemobi/engine/x;->a()F

    move-result v3

    float-to-int v3, v3

    sub-int v3, v5, v3

    add-int/lit8 v2, v2, 0xb

    invoke-direct {v1, v4, v3, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x14

    const v3, -0x112555

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_7
    const v3, -0x112555

    goto/16 :goto_3

    :cond_8
    const v1, -0x112555

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_5
    sget-object v3, Lcom/creativemobi/engine/ab;->e:[F

    array-length v3, v3

    if-ge v1, v3, :cond_6

    mul-int/lit8 v3, v1, 0x64

    add-int/lit16 v3, v3, 0xff

    const/4 v4, 0x0

    iget v5, p0, Lcom/creativemobi/engine/ab;->a:I

    invoke-static {v4, v5}, Lcom/creativemobi/engine/ab;->b(II)F

    move-result v4

    sget-object v5, Lcom/creativemobi/engine/ab;->e:[F

    aget v5, v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    new-instance v5, Lcom/creativemobi/engine/x;

    const-string v6, "%1$d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v2, 0x3

    invoke-direct {v5, v4, v3, v6}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x16

    iget v4, p0, Lcom/creativemobi/engine/ab;->j:I

    if-ne v4, v1, :cond_a

    iget v4, p0, Lcom/creativemobi/engine/ab;->i:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_a

    const/high16 v4, -0x1000000

    :goto_6
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    invoke-virtual {v5, v3, v4, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v5}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    const v4, -0x2676e5

    goto :goto_6

    :cond_b
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "distance:"

    const/16 v2, 0x15b

    const/16 v3, 0x84

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x16

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

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

    iget-object v4, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

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

    iget-object v4, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 47
    iget v0, p0, Lcom/creativemobi/engine/ab;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "distance_switch_off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/ab;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_on"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 51
    :goto_7
    return-void

    .line 49
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "distance_switch_off"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/ab;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_off"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    goto :goto_7
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 9

    .prologue
    const/16 v8, 0x6c

    const/16 v7, 0x32

    const/16 v6, 0x2d

    const/16 v5, 0x1a9

    const/4 v4, 0x0

    .line 191
    iput-object p3, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    .line 192
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/creativemobi/engine/ab;->r:Z

    .line 193
    iget-boolean v0, p0, Lcom/creativemobi/engine/ab;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/ab;->h:[Ljava/lang/String;

    iput-object v0, p0, Lcom/creativemobi/engine/ab;->g:[Ljava/lang/String;

    .line 195
    :cond_0
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 198
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 199
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    invoke-virtual {p1, v0, v1, v4, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 201
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ab;->k:Landroid/graphics/Typeface;

    .line 203
    const-string v0, "listitem"

    const-string v1, "graphics/menu/listitem.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 204
    const-string v0, "listitem_hl"

    const-string v1, "graphics/menu/listitem_hl.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 206
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "raceOnlineSelectedIdx"

    invoke-static {v0, v1, v4}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/ab;->i:I

    move v0, v4

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/ab;->g:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 209
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

    invoke-virtual {p1, v1, v2, v6, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    const-string v0, "listitem_hl"

    const-string v1, "listitem_hl"

    iget v2, p0, Lcom/creativemobi/engine/ab;->i:I

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v2, v2, 0x96

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 213
    const-string v0, "name"

    const-string v1, "graphics/menu/name.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 214
    const-string v0, "createProfile"

    const-string v1, "graphics/menu/cr.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 215
    const-string v0, "nextButton"

    const-string v1, "graphics/garage/race_button.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 216
    const-string v0, "divider"

    const-string v1, "graphics/divider.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 218
    const-string v0, "nextButton"

    const-string v1, "nextButton"

    const/16 v2, 0x294

    invoke-virtual {p1, v0, v1, v2, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 219
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x1f4

    const/16 v3, 0x69

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 221
    iget-boolean v0, p0, Lcom/creativemobi/engine/ab;->r:Z

    if-nez v0, :cond_3

    const-string v0, "createProfile"

    const-string v1, "createProfile"

    invoke-virtual {p1, v0, v1, v7, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 224
    :goto_1
    const-string v0, "distance_switch_off"

    const-string v1, "graphics/menu/distance_switch_off.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 225
    const-string v0, "distance_switch_on"

    const-string v1, "graphics/menu/distance_switch_on.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 227
    const-string v0, "distance_switch_on"

    const-string v1, "distance_switch_on"

    const/16 v2, 0x160

    invoke-virtual {p1, v0, v1, v2, v8}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 228
    const-string v0, "distance_switch_off"

    const-string v1, "distance_switch_off"

    const/16 v2, 0x1a8

    invoke-virtual {p1, v0, v1, v2, v8}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 231
    const-string v0, "header"

    const-string v1, "graphics/menu/online_header.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 233
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_2

    .line 234
    const-string v0, "header"

    const-string v1, "header"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    const/16 v3, 0xa5

    sub-int/2addr v2, v3

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_2
    move v0, v4

    .line 237
    :goto_2
    sget-object v1, Lcom/creativemobi/engine/ab;->e:[F

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distance_switch_off"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "distance_switch_off"

    mul-int/lit8 v3, v0, 0x64

    add-int/lit16 v3, v3, 0xdc

    const/16 v4, 0xff

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 222
    :cond_3
    const-string v0, "createProfile"

    const-string v1, "name"

    invoke-virtual {p1, v0, v1, v7, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    goto :goto_1

    .line 241
    :cond_4
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ab;->b(Lcom/creativemobi/engine/w;)V

    .line 242
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 404
    iput-boolean v2, p0, Lcom/creativemobi/engine/ab;->c:Z

    .line 405
    iget-object v0, p0, Lcom/creativemobi/engine/ab;->b:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/an;

    invoke-direct {v1}, Lcom/creativemobi/engine/an;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/ab;->p:Z

    .line 176
    return-void
.end method
