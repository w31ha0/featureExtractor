.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetVolume;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerSetVolume.java"


# static fields
.field private static final PROPERTY_previous:Ljava/lang/String; = "previous"


# instance fields
.field private volume:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "PLAYER_SET_VOLUME"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "xid"

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetVolume;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "volume"

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetVolume;->addAppBodyProperty(Ljava/lang/String;I)V

    .line 38
    iput p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetVolume;->volume:I

    .line 39
    return-void
.end method


# virtual methods
.method public getVolume()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerSetVolume;->volume:I

    return v0
.end method
