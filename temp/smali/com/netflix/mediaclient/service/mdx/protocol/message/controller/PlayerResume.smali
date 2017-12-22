.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerResume;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerResume.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "PLAYER_RESUME"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 17
    const-string/jumbo v0, "xid"

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerResume;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
