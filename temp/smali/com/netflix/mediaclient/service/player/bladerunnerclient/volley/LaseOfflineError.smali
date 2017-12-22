.class public final enum Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;
.super Ljava/lang/Enum;
.source "LaseOfflineError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum AggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum BlacklistedDevice:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum ClientUsageError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum DataMissError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum DataWriteError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum DependencyCommandError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum DeviceAggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum DeviceNotActiveError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum EventStoreError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum IOError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum LicenseAggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum LicenseIdMismatch:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum LicenseNotActive:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum LicenseNotMarkedPlayable:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum LicenseReleasedError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum LicenseTooOld:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum MembershipError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum NOT_KNOWN_TO_CLIENT:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum OfflineDeviceLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum PackageRevokedError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum PlayableAggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum RequestTypeError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum ServerError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum StudioOfflineTitleLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum TitleNotAvailableForOffline:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum TotalLicensesPerAccountReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum TotalLicensesPerDeviceReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum Undefined:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum ViewableNotAvailableInRegion:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum YearlyStudioDownloadLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum YearlyStudioLicenseLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

.field public static final enum viewingWindowExpired:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "BlacklistedDevice"

    const/16 v2, 0x8ff

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->BlacklistedDevice:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "Undefined"

    const/16 v2, 0x5208

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->Undefined:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "AggregateError"

    const/16 v2, 0x5209

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->AggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "EventStoreError"

    const/16 v2, 0x520a

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->EventStoreError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "RequestTypeError"

    const/16 v2, 0x520b

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->RequestTypeError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "MembershipError"

    const/4 v2, 0x5

    const/16 v3, 0x55f0

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->MembershipError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "LicenseAggregateError"

    const/4 v2, 0x6

    const/16 v3, 0x55f1

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseAggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "TotalLicensesPerDeviceReached"

    const/4 v2, 0x7

    const/16 v3, 0x55f2

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->TotalLicensesPerDeviceReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "TotalLicensesPerAccountReached"

    const/16 v2, 0x8

    const/16 v3, 0x55f3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->TotalLicensesPerAccountReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 20
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "TitleNotAvailableForOffline"

    const/16 v2, 0x9

    const/16 v3, 0x55f4

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->TitleNotAvailableForOffline:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "StudioOfflineTitleLimitReached"

    const/16 v2, 0xa

    const/16 v3, 0x55f5

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->StudioOfflineTitleLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "YearlyStudioDownloadLimitReached"

    const/16 v2, 0xb

    const/16 v3, 0x55f6

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->YearlyStudioDownloadLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "YearlyStudioLicenseLimitReached"

    const/16 v2, 0xc

    const/16 v3, 0x55f7

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->YearlyStudioLicenseLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 24
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "viewingWindowExpired"

    const/16 v2, 0xd

    const/16 v3, 0x55f8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->viewingWindowExpired:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "LicenseNotMarkedPlayable"

    const/16 v2, 0xe

    const/16 v3, 0x5dc0

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseNotMarkedPlayable:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "LicenseIdMismatch"

    const/16 v2, 0xf

    const/16 v3, 0x5dc1

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseIdMismatch:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 27
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "LicenseReleasedError"

    const/16 v2, 0x10

    const/16 v3, 0x5dc2

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseReleasedError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "LicenseTooOld"

    const/16 v2, 0x11

    const/16 v3, 0x5dc3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseTooOld:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 29
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "DataMissError"

    const/16 v2, 0x12

    const/16 v3, 0x5dc4

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->DataMissError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "DataWriteError"

    const/16 v2, 0x13

    const/16 v3, 0x5dc5

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->DataWriteError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "DeviceNotActiveError"

    const/16 v2, 0x14

    const/16 v3, 0x5dc6

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->DeviceNotActiveError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 32
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "ViewableNotAvailableInRegion"

    const/16 v2, 0x15

    const/16 v3, 0x5dc7

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->ViewableNotAvailableInRegion:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 33
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "PackageRevokedError"

    const/16 v2, 0x16

    const/16 v3, 0x5dc8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->PackageRevokedError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "OfflineDeviceLimitReached"

    const/16 v2, 0x17

    const/16 v3, 0x59d8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->OfflineDeviceLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 35
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "DeviceAggregateError"

    const/16 v2, 0x18

    const/16 v3, 0x59d9

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->DeviceAggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "ServerError"

    const/16 v2, 0x19

    const/16 v3, 0x61a8

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->ServerError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "IOError"

    const/16 v2, 0x1a

    const/16 v3, 0x61a9

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->IOError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "DependencyCommandError"

    const/16 v2, 0x1b

    const/16 v3, 0x61aa

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->DependencyCommandError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "ClientUsageError"

    const/16 v2, 0x1c

    const/16 v3, 0x61ab

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->ClientUsageError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "PlayableAggregateError"

    const/16 v2, 0x1d

    const/16 v3, 0x6591

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->PlayableAggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "LicenseNotActive"

    const/16 v2, 0x1e

    const/16 v3, 0x6598

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseNotActive:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    const-string/jumbo v1, "NOT_KNOWN_TO_CLIENT"

    const/16 v2, 0x1f

    const/16 v3, -0x1e61

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->NOT_KNOWN_TO_CLIENT:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    .line 9
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->BlacklistedDevice:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->Undefined:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->AggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->EventStoreError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->RequestTypeError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->MembershipError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseAggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->TotalLicensesPerDeviceReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->TotalLicensesPerAccountReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->TitleNotAvailableForOffline:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->StudioOfflineTitleLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->YearlyStudioDownloadLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->YearlyStudioLicenseLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->viewingWindowExpired:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseNotMarkedPlayable:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseIdMismatch:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseReleasedError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseTooOld:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->DataMissError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->DataWriteError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->DeviceNotActiveError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->ViewableNotAvailableInRegion:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->PackageRevokedError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->OfflineDeviceLimitReached:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->DeviceAggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->ServerError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->IOError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->DependencyCommandError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->ClientUsageError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->PlayableAggregateError:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->LicenseNotActive:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->NOT_KNOWN_TO_CLIENT:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->mValue:I

    .line 49
    return-void
.end method

.method public static getByValue(I)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;
    .locals 5

    .prologue
    .line 57
    invoke-static {}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 58
    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->getIntValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 62
    :goto_1
    return-object v0

    .line 57
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->NOT_KNOWN_TO_CLIENT:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    goto :goto_1
.end method

.method private getIntValue()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->mValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->$VALUES:[Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/LaseOfflineError;

    return-object v0
.end method
