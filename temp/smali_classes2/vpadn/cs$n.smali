.class Lvpadn/cs$n;
.super Ljava/util/TimerTask;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;

.field private b:I


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 1

    .prologue
    .line 2847
    iput-object p1, p0, Lvpadn/cs$n;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2848
    const/4 v0, -0x1

    iput v0, p0, Lvpadn/cs$n;->b:I

    return-void
.end method

.method private a(I)I
    .locals 4

    .prologue
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 2869
    rem-int/lit16 v0, p1, 0x3e8

    .line 2870
    const/16 v1, 0x320

    if-lt v0, v1, :cond_0

    .line 2871
    int-to-double v0, p1

    div-double/2addr v0, v2

    .line 2872
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 2875
    :goto_0
    return v0

    .line 2874
    :cond_0
    int-to-double v0, p1

    div-double/2addr v0, v2

    .line 2875
    double-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2852
    :try_start_0
    iget-object v0, p0, Lvpadn/cs$n;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs$n;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2853
    iget-object v0, p0, Lvpadn/cs$n;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->t()I

    move-result v0

    .line 2856
    invoke-direct {p0, v0}, Lvpadn/cs$n;->a(I)I

    move-result v0

    .line 2858
    iget v1, p0, Lvpadn/cs$n;->b:I

    if-eq v1, v0, :cond_0

    .line 2859
    iput v0, p0, Lvpadn/cs$n;->b:I

    .line 2860
    iget-object v1, p0, Lvpadn/cs$n;->a:Lvpadn/cs;

    invoke-static {v1}, Lvpadn/cs;->T(Lvpadn/cs;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "current_time"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2861
    iget-object v0, p0, Lvpadn/cs$n;->a:Lvpadn/cs;

    const-string v1, "video_timeupdate"

    iget-object v2, p0, Lvpadn/cs$n;->a:Lvpadn/cs;

    invoke-static {v2}, Lvpadn/cs;->T(Lvpadn/cs;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2865
    :cond_0
    :goto_0
    return-void

    .line 2864
    :catch_0
    move-exception v0

    goto :goto_0
.end method
