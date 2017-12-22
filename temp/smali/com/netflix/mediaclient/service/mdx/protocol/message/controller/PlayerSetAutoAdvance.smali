.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetAutoAdvance;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerSetAutoAdvance.java"


# static fields
.field private static final PROPERTY_autoAdvanceMaxIncrement:Ljava/lang/String; = "autoAdvanceMaxIncrement"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "PLAYER_SET_AUTO_ADVANCE"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "xid"

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetAutoAdvance;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "autoAdvanceMaxIncrement"

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetAutoAdvance;->addAppBodyProperty(Ljava/lang/String;I)V

    .line 27
    return-void
.end method
