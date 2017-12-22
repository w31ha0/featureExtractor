.class public Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetCurrentTime;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerSetCurrentTime.java"


# static fields
.field private static final PROPERTY_time:Ljava/lang/String; = "time"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "PLAYER_SET_CURRENT_TIME"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "xid"

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetCurrentTime;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "time"

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetCurrentTime;->addAppBodyProperty(Ljava/lang/String;I)V

    .line 26
    return-void
.end method
