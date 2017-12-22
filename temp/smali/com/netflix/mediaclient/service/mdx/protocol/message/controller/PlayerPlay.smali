.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerPlay.java"


# static fields
.field private static final ORIGIN_USER:Ljava/lang/String; = "USER"

.field private static final PROPERTY_catalogId:Ljava/lang/String; = "catalogId"

.field private static final PROPERTY_enablePostPlay:Ljava/lang/String; = "enablePostPlay"

.field private static final PROPERTY_episodeId:Ljava/lang/String; = "episodeId"

.field private static final PROPERTY_esn:Ljava/lang/String; = "esn"

.field private static final PROPERTY_isDial:Ljava/lang/String; = "isDial"

.field private static final PROPERTY_isPinVerified:Ljava/lang/String; = "isPinVerified"

.field private static final PROPERTY_isPreviewPinVerified:Ljava/lang/String; = "isPreReleasePinVerified"

.field private static final PROPERTY_isThirdParty:Ljava/lang/String; = "isThirdParty"

.field private static final PROPERTY_originator:Ljava/lang/String; = "originator"

.field private static final PROPERTY_startTime:Ljava/lang/String; = "startTime"

.field private static final PROPERTY_trackId:Ljava/lang/String; = "trackId"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Z)V
    .locals 7

    .prologue
    .line 54
    const-string/jumbo v0, "PLAYER_PLAY"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p9

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addProperties(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 56
    if-eqz p6, :cond_0

    .line 57
    const-string/jumbo v0, "originator"

    invoke-virtual {p0, v0, p6}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_0
    if-eqz p7, :cond_1

    .line 60
    const-string/jumbo v0, "isDial"

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;Z)V

    .line 62
    :cond_1
    if-eqz p8, :cond_2

    .line 63
    const-string/jumbo v0, "isThirdParty"

    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;Z)V

    .line 65
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "PLAYER_PLAY"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addProperties(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 46
    const-string/jumbo v0, "originator"

    const-string/jumbo v1, "USER"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method private addProperties(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 73
    const-string/jumbo v0, "catalogId"

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "trackId"

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;I)V

    .line 75
    const-string/jumbo v0, "esn"

    invoke-virtual {p0, v0, p3}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "enablePostPlay"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;Z)V

    .line 77
    invoke-static {}, Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier;->isPinSessionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "isPinVerified"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;Z)V

    .line 80
    :cond_0
    if-eqz p6, :cond_1

    .line 81
    const-string/jumbo v0, "isPreReleasePinVerified"

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;Z)V

    .line 83
    :cond_1
    if-eqz p4, :cond_2

    .line 84
    const-string/jumbo v0, "episodeId"

    invoke-virtual {p0, v0, p4}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    .line 87
    const-string/jumbo v0, "startTime"

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerPlay;->addAppBodyProperty(Ljava/lang/String;I)V

    .line 89
    :cond_3
    return-void
.end method
