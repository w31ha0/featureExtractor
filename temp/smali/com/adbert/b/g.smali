.class public Lcom/adbert/b/g;
.super Landroid/widget/VideoView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/b/g$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:I

.field private c:I

.field private d:Landroid/media/MediaPlayer;

.field private e:Landroid/os/Handler;

.field private f:Lcom/adbert/b/g$a;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 18
    iput v1, p0, Lcom/adbert/b/g;->b:I

    .line 19
    iput v1, p0, Lcom/adbert/b/g;->c:I

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adbert/b/g;->e:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/adbert/b/g$4;

    invoke-direct {v0, p0}, Lcom/adbert/b/g$4;-><init>(Lcom/adbert/b/g;)V

    iput-object v0, p0, Lcom/adbert/b/g;->a:Ljava/lang/Runnable;

    .line 118
    iput-boolean v1, p0, Lcom/adbert/b/g;->g:Z

    .line 144
    iput-boolean v1, p0, Lcom/adbert/b/g;->h:Z

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/adbert/b/g;->a(II)V

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/adbert/b/g;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/adbert/b/g;->d:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic a(Lcom/adbert/b/g;)Lcom/adbert/b/g$a;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/adbert/b/g;->f:Lcom/adbert/b/g$a;

    return-object v0
.end method

.method static synthetic b(Lcom/adbert/b/g;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/adbert/b/g;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/adbert/b/g;->pause()V

    .line 138
    invoke-virtual {p0}, Lcom/adbert/b/g;->stopPlayback()V

    .line 139
    iget-object v0, p0, Lcom/adbert/b/g;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/adbert/b/g;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 142
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .prologue
    .line 35
    iput p2, p0, Lcom/adbert/b/g;->b:I

    .line 36
    iput p1, p0, Lcom/adbert/b/g;->c:I

    .line 37
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/b/g;->h:Z

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/adbert/b/g;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/adbert/b/g;->d:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adbert/b/g;->h:Z

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/adbert/b/g;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/adbert/b/g;->d:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/adbert/b/g;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adbert/b/g;->b:I

    if-nez v0, :cond_1

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_1
    iget v0, p0, Lcom/adbert/b/g;->c:I

    iget v1, p0, Lcom/adbert/b/g;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/adbert/b/g;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V

    .line 50
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/adbert/b/g;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/adbert/b/g;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adbert/b/g;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public setListener(Lcom/adbert/b/g$a;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/adbert/b/g;->f:Lcom/adbert/b/g$a;

    .line 106
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adbert/b/g;->setVideoURI(Landroid/net/Uri;)V

    .line 57
    invoke-virtual {p0}, Lcom/adbert/b/g;->requestFocus()Z

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adbert/b/g;->setMediaController(Landroid/widget/MediaController;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adbert/b/g;->setDrawingCacheEnabled(Z)V

    .line 60
    new-instance v0, Lcom/adbert/b/g$1;

    invoke-direct {v0, p0}, Lcom/adbert/b/g$1;-><init>(Lcom/adbert/b/g;)V

    invoke-virtual {p0, v0}, Lcom/adbert/b/g;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 70
    new-instance v0, Lcom/adbert/b/g$2;

    invoke-direct {v0, p0}, Lcom/adbert/b/g$2;-><init>(Lcom/adbert/b/g;)V

    invoke-virtual {p0, v0}, Lcom/adbert/b/g;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 79
    new-instance v0, Lcom/adbert/b/g$3;

    invoke-direct {v0, p0}, Lcom/adbert/b/g$3;-><init>(Lcom/adbert/b/g;)V

    invoke-virtual {p0, v0}, Lcom/adbert/b/g;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 89
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adbert/b/g;->g:Z

    .line 124
    iget-object v0, p0, Lcom/adbert/b/g;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adbert/b/g;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 125
    iget-object v0, p0, Lcom/adbert/b/g;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adbert/b/g;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    return-void
.end method
