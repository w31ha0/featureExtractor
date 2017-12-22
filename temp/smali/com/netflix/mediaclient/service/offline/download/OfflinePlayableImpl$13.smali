.class synthetic Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"


# static fields
.field static final synthetic $SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$volley$ClientActionFromLase:[I

.field static final synthetic $SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1390
    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$volley$ClientActionFromLase:[I

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$volley$ClientActionFromLase:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->NO_ACTION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$volley$ClientActionFromLase:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ACQUIRE_NEW_LICENSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$volley$ClientActionFromLase:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->DELETE_LICENSES:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$volley$ClientActionFromLase:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->MARK_PLAYABLE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$volley$ClientActionFromLase:[I

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->DELETE_CONTENT_ON_REVOCATION:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    .line 1205
    :goto_4
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I

    :try_start_5
    sget-object v0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$13;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$offline$DownloadState:[I

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->InProgress:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    .line 1390
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
