.class public abstract Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;
.super Ljava/lang/Object;
.source "AbsMediaSessionController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Initializing MediaSessionController"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "MediaSession was not destroyed correctly! Destroying it now."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->destroy()V

    .line 35
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "Netflix media session"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 45
    return-void
.end method

.method protected setActive(Z)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 49
    return-void
.end method

.method protected setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlayerState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;->mMediaSession:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 66
    :cond_0
    return-void
.end method

.method protected abstract startMediaSession()V
.end method

.method protected abstract stopMediaSession()V
.end method
