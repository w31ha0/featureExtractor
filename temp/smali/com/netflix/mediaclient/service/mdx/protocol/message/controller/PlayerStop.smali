.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerStop;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerStop.java"


# static fields
.field private static final PROPERTY_disablePostPlay:Ljava/lang/String; = "disablePostPlay"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "PLAYER_STOP"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "xid"

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerStop;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "disablePostPlay"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerStop;->addAppBodyProperty(Ljava/lang/String;Z)V

    .line 29
    return-void
.end method
