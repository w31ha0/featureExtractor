.class public Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;
.super Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;
.source "PlayerMediaSessionController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/AbsMediaSessionController;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 20
    return-void
.end method


# virtual methods
.method public setMediaSessionState(I)V
    .locals 4

    .prologue
    .line 37
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaSessionState, state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 39
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 40
    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 44
    :goto_0
    const-wide/16 v2, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1, v2, v3, v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    .line 45
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 46
    return-void

    .line 42
    :cond_0
    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    goto :goto_0
.end method

.method protected startMediaSession()V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startMediaSession"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->setActive(Z)V

    .line 26
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->setMediaSessionState(I)V

    .line 27
    return-void
.end method

.method protected stopMediaSession()V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopMediaSession"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->setMediaSessionState(I)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerMediaSessionController;->setActive(Z)V

    .line 34
    return-void
.end method
