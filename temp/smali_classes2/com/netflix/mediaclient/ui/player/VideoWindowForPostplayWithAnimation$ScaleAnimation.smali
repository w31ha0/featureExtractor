.class Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;
.super Ljava/lang/Object;
.source "VideoWindowForPostplayWithAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final REFRESH_RATE:I

.field private mExecuteOnEndOfAnimation:Ljava/lang/Runnable;

.field private mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

.field private mRunning:Z

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 144
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/16 v0, 0x14

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->REFRESH_RATE:I

    .line 145
    if-nez p2, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameters can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    .line 149
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mExecuteOnEndOfAnimation:Ljava/lang/Runnable;

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;Ljava/lang/Runnable;Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$1;)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;-><init>(Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;Ljava/lang/Runnable;)V

    return-void
.end method

.method private calculateOffset(FFF)F
    .locals 1

    .prologue
    .line 230
    mul-float v0, p1, p2

    mul-float/2addr v0, p3

    .line 234
    return v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 155
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getDurationInMS()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    .line 160
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartTopMargin()I

    move-result v3

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndTopMargin()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v5, v0

    div-float v5, v3, v5

    .line 161
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartLeftMargin()I

    move-result v3

    iget-object v8, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v8}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndLeftMargin()I

    move-result v8

    sub-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v8, v0

    div-float v8, v3, v8

    .line 162
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartScale()F

    move-result v3

    iget-object v9, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v9}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndScale()F

    move-result v9

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v0, v0

    div-float v9, v3, v0

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartTopMargin()I

    move-result v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndTopMargin()I

    move-result v3

    if-le v0, v3, :cond_5

    move v0, v1

    .line 170
    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartLeftMargin()I

    move-result v3

    iget-object v10, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v10}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndLeftMargin()I

    move-result v10

    if-le v3, v10, :cond_4

    move v3, v1

    .line 175
    :goto_1
    iget-object v10, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v10}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartScale()F

    move-result v10

    iget-object v11, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v11}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndScale()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    .line 189
    :goto_2
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mRunning:Z

    move v2, v4

    .line 190
    :goto_3
    iget-boolean v10, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mRunning:Z

    if-eqz v10, :cond_1

    .line 192
    sget-object v10, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "in loop"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    iget-object v12, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v12}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getDurationInMS()I

    move-result v12

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 195
    sget-object v10, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Exit!"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mRunning:Z

    goto :goto_3

    .line 198
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 199
    iget-object v10, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v10}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartLeftMargin()I

    move-result v10

    int-to-float v11, v2

    int-to-float v12, v3

    invoke-direct {p0, v8, v11, v12}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->calculateOffset(FFF)F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    .line 200
    iget-object v11, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v11}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartTopMargin()I

    move-result v11

    int-to-float v12, v2

    int-to-float v13, v0

    invoke-direct {p0, v5, v12, v13}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->calculateOffset(FFF)F

    move-result v12

    float-to-int v12, v12

    add-int/2addr v11, v12

    .line 201
    iget-object v12, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v12}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getStartScale()F

    move-result v12

    int-to-float v13, v2

    mul-float/2addr v13, v9

    int-to-float v14, v1

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    .line 210
    iget-object v13, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;

    invoke-virtual {v13, v10, v11, v12}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->resizeVideo(IIF)V

    .line 213
    :try_start_0
    sget-object v10, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Sleep"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-wide/16 v10, 0x14

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 215
    :catch_0
    move-exception v10

    .line 216
    sget-object v10, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithScaling;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Interupped"

    invoke-static {v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iput-boolean v4, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mRunning:Z

    goto :goto_3

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndLeftMargin()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndTopMargin()I

    move-result v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mParams:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimationParameters;->getEndScale()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->resizeVideo(IIF)V

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mExecuteOnEndOfAnimation:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->this$0:Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;->mContext:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation$ScaleAnimation;->mExecuteOnEndOfAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 226
    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto/16 :goto_2

    :cond_4
    move v3, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_0
.end method
