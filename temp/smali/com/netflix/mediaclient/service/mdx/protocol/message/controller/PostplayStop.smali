.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PostplayStop;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PostplayStop.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "POSTPLAY_STOP"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "xid"

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PostplayStop;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
