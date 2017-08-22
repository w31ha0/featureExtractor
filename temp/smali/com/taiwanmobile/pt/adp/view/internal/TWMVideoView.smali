.class public Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;
.super Landroid/widget/FrameLayout;
.source "TWMVideoView.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Landroid/widget/VideoView;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;-><init>(Landroid/content/Context;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->a:Ljava/lang/ref/WeakReference;

    .line 30
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->c:Z

    .line 36
    iput-boolean p2, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->c:Z

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->a:Ljava/lang/ref/WeakReference;

    .line 38
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b()V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 47
    new-instance v1, Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    .line 48
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->c:Z

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    const/16 v1, 0x11

    .line 49
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 52
    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {p0, v1, v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 68
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->c:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setVisibility(I)V

    .line 74
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setBackgroundColor(I)V

    .line 75
    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->a()V

    .line 76
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public isplaying()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public loadContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/internal/BaseMediaListener;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p4}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 103
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p4}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 104
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 105
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 107
    new-instance v1, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView$1;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v1, "TWMVideoView"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 95
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->resume()V

    .line 82
    :cond_0
    return-void
.end method

.method public setTriListener(Lcom/taiwanmobile/pt/adp/view/internal/BaseMediaListener;)V
    .locals 2

    .prologue
    .line 85
    const-string v0, "TWMVideoView"

    const-string v1, "setTriListener invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 87
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 88
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 89
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 25
    const-string v0, "TWMVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVideoURI("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 27
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 64
    :cond_0
    return-void
.end method
