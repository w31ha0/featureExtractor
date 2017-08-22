.class Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;
.super Lcom/taiwanmobile/pt/adp/view/internal/BaseMediaListener;
.source "TWMAdActivity.java"

# interfaces
.implements Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

.field private b:I

.field private c:I

.field private d:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

.field private e:Ljava/lang/String;

.field private f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

.field private g:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/internal/BaseMediaListener;-><init>()V

    .line 128
    invoke-static {p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)I

    move-result v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->b:I

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->c:I

    .line 177
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    .line 179
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    .line 197
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->g:Landroid/media/MediaPlayer;

    .line 182
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->e:Ljava/lang/String;

    .line 183
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    .line 184
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    .line 185
    const-string v1, "videoListener"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    .line 184
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->b:I

    return v0
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->b:I

    return-void
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;I)V
    .locals 0

    .prologue
    .line 130
    iput p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->c:I

    return-void
.end method

.method static synthetic c(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->c:I

    return v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 133
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->start()V

    .line 134
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    instance-of v0, v0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    invoke-interface {v0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;->onPlayingVideo()V

    .line 139
    :cond_0
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "adsing"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 143
    const-string v1, "http://agent.tamedia.com.tw/rmadp/g/adv"

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->e:Ljava/lang/String;

    const-string v3, "I"

    const-string v4, "0"

    .line 142
    invoke-static/range {v0 .. v5}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->reportVideoProgress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    const-string v1, "rduration"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 146
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->d:Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;

    const-string v2, "_max_report_times"

    invoke-virtual {v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$Video;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    .line 147
    const-string v1, "TWMAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "maxReportTimes : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    .line 149
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "rtime : "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/util/Timer;)V

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;JLjava/lang/Integer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "TWMAdActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 301
    const-string v1, "TWMAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onVolumeUp.mediaPlayer is null ? "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->g:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 305
    :cond_0
    return-void

    .line 301
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 309
    const-string v1, "TWMAdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onVolumeDown.mediaPlayer is null ? "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->g:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 313
    :cond_0
    return-void

    .line 309
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 190
    const-string v0, "TWMAdActivity"

    const-string v1, "onCompletion!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    instance-of v0, v0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    invoke-interface {v0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;->onCompletion()V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->e:Ljava/lang/String;

    const-string v2, "I"

    const-string v3, "2"

    invoke-static {v0, v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 290
    const-string v0, "TWMAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnError("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 293
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->finish()V

    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 201
    const-string v0, "TWMAdActivity"

    const-string v1, "onPrepared invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 205
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    instance-of v0, v0, Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->f:Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;

    invoke-interface {v0}, Lcom/taiwanmobile/pt/adp/view/TWMVideoAdListener;->onPrepared()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->isVideoShouldSetAsMute(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->g:Landroid/media/MediaPlayer;

    .line 211
    invoke-virtual {p1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->c()V

    .line 215
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v0

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$2;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$2;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)V

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v0

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$3;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$3;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)V

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 263
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v0

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c$4;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$c;)V

    .line 284
    const-wide/16 v2, 0x1388

    .line 263
    invoke-virtual {v0, v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 286
    return-void
.end method
