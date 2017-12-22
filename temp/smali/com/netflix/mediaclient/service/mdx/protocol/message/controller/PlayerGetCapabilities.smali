.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerGetCapabilities;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerGetCapabilities.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "PLAYER_GET_CAPABILITIES"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method
