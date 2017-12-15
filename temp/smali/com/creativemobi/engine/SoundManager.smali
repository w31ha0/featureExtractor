.class public Lcom/creativemobi/engine/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:F

.field private static c:F

.field private static d:I

.field private static e:Z

.field private static f:Z

.field private static g:J

.field private static h:Landroid/content/Context;

.field private static i:Landroid/media/SoundPool;

.field private static j:Ljava/util/HashMap;

.field private static k:[I

.field private static l:J

.field private static m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-class v0, Lcom/creativemobi/engine/SoundManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/creativemobi/engine/SoundManager;->a:Ljava/lang/String;

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/creativemobi/engine/SoundManager;->b:F

    .line 21
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/creativemobi/engine/SoundManager;->c:F

    .line 36
    const/4 v0, -0x1

    sput v0, Lcom/creativemobi/engine/SoundManager;->d:I

    .line 90
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/creativemobi/engine/SoundManager;->l:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/creativemobi/engine/SoundManager;->j:Ljava/util/HashMap;

    return-object p0
.end method

.method public static a()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/creativemobi/engine/SoundManager;->l:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v4

    const-wide/16 v2, 0x14

    add-long/2addr v0, v2

    sput-wide v0, Lcom/creativemobi/engine/SoundManager;->l:J

    .line 99
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/creativemobi/engine/cf;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cf;-><init>(IZ)V

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public static a(F)V
    .locals 3

    .prologue
    .line 231
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    sget-object v1, Lcom/creativemobi/engine/SoundManager;->k:[I

    const/4 v2, 0x6

    aget v1, v1, v2

    invoke-virtual {v0, v1, p0, p0}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 232
    :cond_0
    return-void
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/creativemobi/engine/SoundManager;->a(IZ)V

    .line 155
    return-void
.end method

.method public static a(IF)V
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    sget-object v1, Lcom/creativemobi/engine/SoundManager;->k:[I

    aget v1, v1, p0

    invoke-virtual {v0, v1, p1}, Landroid/media/SoundPool;->setRate(IF)V

    .line 216
    :cond_0
    return-void
.end method

.method public static a(IZ)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 120
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/creativemobi/engine/ac;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/creativemobi/engine/SoundManager;->m:J

    .line 124
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/creativemobi/engine/SoundManager;->k:[I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/creativemobi/engine/SoundManager;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/creativemobi/engine/SoundManager;->e:Z

    if-nez v0, :cond_3

    .line 125
    :cond_2
    sget-boolean v0, Lcom/creativemobi/engine/SoundManager;->e:Z

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/ag;

    invoke-direct {v1, p0, p1}, Lcom/creativemobi/engine/ag;-><init>(IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 138
    :cond_3
    sput p0, Lcom/creativemobi/engine/SoundManager;->d:I

    .line 139
    sput-boolean p1, Lcom/creativemobi/engine/SoundManager;->f:Z

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/creativemobi/engine/SoundManager;->g:J

    .line 144
    :try_start_0
    sget-object v7, Lcom/creativemobi/engine/SoundManager;->k:[I

    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    sget-object v1, Lcom/creativemobi/engine/SoundManager;->j:Ljava/util/HashMap;

    sget v2, Lcom/creativemobi/engine/SoundManager;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/creativemobi/engine/SoundManager;->b:F

    sget v3, Lcom/creativemobi/engine/SoundManager;->b:F

    const/4 v4, 0x1

    sget-boolean v5, Lcom/creativemobi/engine/SoundManager;->f:Z

    if-eqz v5, :cond_4

    move v5, v8

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    aput v0, v7, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_2
    sput v8, Lcom/creativemobi/engine/SoundManager;->d:I

    goto :goto_0

    .line 144
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 50
    sget-boolean v0, Lcom/creativemobi/engine/SoundManager;->e:Z

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 52
    :cond_0
    sput-object p0, Lcom/creativemobi/engine/SoundManager;->h:Landroid/content/Context;

    .line 54
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/af;

    invoke-direct {v1}, Lcom/creativemobi/engine/af;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a([I)[I
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/creativemobi/engine/SoundManager;->k:[I

    return-object p0
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Lcom/creativemobi/engine/ah;->a()V

    .line 113
    return-void
.end method

.method public static b(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    sget-boolean v0, Lcom/creativemobi/engine/SoundManager;->e:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/creativemobi/engine/SoundManager;->k:[I

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 227
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->k:[I

    aget v0, v0, p0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static c()V
    .locals 0

    .prologue
    .line 116
    invoke-static {}, Lcom/creativemobi/engine/ah;->b()V

    .line 117
    return-void
.end method

.method public static d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    :cond_0
    move v0, v3

    .line 162
    :goto_1
    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    .line 163
    sget-object v1, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    sget-object v2, Lcom/creativemobi/engine/SoundManager;->k:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_1
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 165
    const/4 v0, 0x0

    sput-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    .line 167
    const/4 v0, -0x1

    sput v0, Lcom/creativemobi/engine/SoundManager;->d:I

    .line 168
    sput-boolean v3, Lcom/creativemobi/engine/SoundManager;->e:Z

    .line 170
    invoke-static {}, Lcom/creativemobi/engine/ah;->c()V

    goto :goto_0
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    invoke-static {v0}, Lcom/creativemobi/engine/CompatibilityWrapper;->autoPause(Landroid/media/SoundPool;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-static {}, Lcom/creativemobi/engine/SoundManager;->d()V

    goto :goto_0
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 181
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    invoke-static {v0}, Lcom/creativemobi/engine/CompatibilityWrapper;->autoResume(Landroid/media/SoundPool;)V

    goto :goto_0
.end method

.method public static g()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 219
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    sget-object v1, Lcom/creativemobi/engine/SoundManager;->k:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 221
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->k:[I

    const/4 v1, 0x0

    aput v1, v0, v2

    .line 223
    :cond_0
    return-void
.end method

.method static synthetic h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i()Landroid/media/SoundPool;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->i:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic j()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/creativemobi/engine/SoundManager;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic k()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/creativemobi/engine/SoundManager;->e:Z

    return v0
.end method

.method static synthetic l()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/creativemobi/engine/SoundManager;->e:Z

    return v0
.end method
