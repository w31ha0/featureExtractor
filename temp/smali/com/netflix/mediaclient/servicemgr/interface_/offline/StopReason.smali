.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
.super Ljava/lang/Enum;
.source "StopReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum AccountInActive:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum DownloadLimitRequiresManualResume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum EncodesAreNotAvailableAnyMore:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum EncodesRevoked:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum GeoCheckError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum ManifestError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum NetworkError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum NoNetworkConnectivity:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum NotAllowedOnCurrentNetwork:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum PlayerStreaming:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum StoppedFromAgentAPI:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum StorageError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum Unknown:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

.field public static final enum WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;


# instance fields
.field private final mShowBangIconErrorInUi:Z

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->Unknown:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "WaitingToBeStarted"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "NetworkError"

    invoke-direct {v0, v1, v6, v6, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NetworkError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "StorageError"

    invoke-direct {v0, v1, v7, v7, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StorageError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "NotEnoughSpace"

    invoke-direct {v0, v1, v8, v8, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "StoppedFromAgentAPI"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StoppedFromAgentAPI:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "NotAllowedOnCurrentNetwork"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotAllowedOnCurrentNetwork:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "NoNetworkConnectivity"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NoNetworkConnectivity:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "PlayerStreaming"

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->PlayerStreaming:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "AccountInActive"

    const/16 v2, 0x9

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->AccountInActive:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "EncodesAreNotAvailableAnyMore"

    const/16 v2, 0xa

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesAreNotAvailableAnyMore:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "ManifestError"

    const/16 v2, 0xb

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ManifestError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "GeoCheckError"

    const/16 v2, 0xc

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->GeoCheckError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "DownloadLimitRequiresManualResume"

    const/16 v2, 0xd

    const/16 v3, 0x68

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->DownloadLimitRequiresManualResume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    const-string/jumbo v1, "EncodesRevoked"

    const/16 v2, 0xe

    const/16 v3, 0x69

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesRevoked:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    .line 9
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->Unknown:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NetworkError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StorageError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotEnoughSpace:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->StoppedFromAgentAPI:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NotAllowedOnCurrentNetwork:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->NoNetworkConnectivity:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->PlayerStreaming:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->AccountInActive:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesAreNotAvailableAnyMore:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->ManifestError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->GeoCheckError:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->DownloadLimitRequiresManualResume:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->EncodesRevoked:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->mValue:I

    .line 53
    iput-boolean p4, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->mShowBangIconErrorInUi:Z

    .line 54
    return-void
.end method

.method public static getStopReasonByValue(I)Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 5

    .prologue
    .line 62
    invoke-static {}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 63
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 67
    :goto_1
    return-object v0

    .line 62
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 67
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->Unknown:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    return-object v0
.end method


# virtual methods
.method public canResumeWithoutUserAction()Z
    .locals 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->getIntValue()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->mValue:I

    return v0
.end method

.method public showBangIconErrorInUi()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->mShowBangIconErrorInUi:Z

    return v0
.end method
