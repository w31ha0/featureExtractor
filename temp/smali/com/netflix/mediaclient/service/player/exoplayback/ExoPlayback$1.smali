.class Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;
.super Ljava/lang/Object;
.source "ExoPlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

.field final synthetic val$arguments:[Ljava/lang/Object;

.field final synthetic val$handler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;

.field final synthetic val$listener:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;->val$handler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;->val$listener:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;

    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;->val$arguments:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;->val$handler:Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;->val$listener:Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoPlayback$1;->val$arguments:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/player/PlayerListenerManager$PlayerListenerHandler;->handle(Lcom/netflix/mediaclient/servicemgr/IPlayer$PlayerListener;[Ljava/lang/Object;)V

    .line 311
    return-void
.end method
