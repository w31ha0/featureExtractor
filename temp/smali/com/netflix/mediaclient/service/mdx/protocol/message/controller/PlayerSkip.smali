.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSkip;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerSkip.java"


# static fields
.field private static final PROPERTY_seconds:Ljava/lang/String; = "seconds"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "PLAYER_SKIP"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "seconds"

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSkip;->addAppBodyProperty(Ljava/lang/String;I)V

    .line 25
    const-string/jumbo v0, "xid"

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSkip;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
