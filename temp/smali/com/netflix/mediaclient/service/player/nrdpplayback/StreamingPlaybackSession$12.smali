.class Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$12;
.super Ljava/lang/Object;
.source "StreamingPlaybackSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$12;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession$12;->this$0:Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackSession;->mNrdpPlayer:Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;

    const-string/jumbo v1, "DummyLicense"

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;->provideLicense(Ljava/lang/String;)V

    .line 607
    return-void
.end method
