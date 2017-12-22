.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCurrentState;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerGetCurrentState.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "PLAYER_GET_CURRENT_STATE"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method
