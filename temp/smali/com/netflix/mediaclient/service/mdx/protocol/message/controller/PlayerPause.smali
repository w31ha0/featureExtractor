.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPause;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerPause.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "PLAYER_PAUSE"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "xid"

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPause;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
