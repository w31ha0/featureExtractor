.class public final Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFactory;
.super Ljava/lang/Object;
.source "VideoWindowForPostplayFactory.java"


# static fields
.field protected static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "nf_postplay"

    sput-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method static createVideoWindow(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplay;
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 31
    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Use simple scaling"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFullScreen;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 35
    :goto_0
    return-object v0

    .line 34
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayFactory;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Use animation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/VideoWindowForPostplayWithAnimation;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    goto :goto_0
.end method
