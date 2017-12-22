.class Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;
.super Ljava/lang/Object;
.source "MetaRegistry.java"


# instance fields
.field private final mCheckSumMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "checksumMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field transient mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

.field public mDownloadsPausedByUser:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isPaused"
    .end annotation
.end field

.field public mGeoCountryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geoCountryCode"
    .end annotation
.end field

.field public mMetaRegistryWriteCounter:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "writeCounter"
    .end annotation
.end field

.field public mPrimaryProfileGuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primaryProfileGuid"
    .end annotation
.end field

.field public mUserSelectedRegId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activeRegId"
    .end annotation
.end field

.field private final mVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCheckSumMap:Ljava/util/Map;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mDownloadsPausedByUser:Z

    .line 41
    iput p1, p0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mVersion:I

    .line 42
    return-void
.end method


# virtual methods
.method public getCheckSumFor(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCheckSumMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method isCurrentlySelected(Lcom/netflix/mediaclient/service/offline/registry/RegistryData;)Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCurrentRegistryData:Lcom/netflix/mediaclient/service/offline/registry/RegistryData;

    iget v1, v1, Lcom/netflix/mediaclient/service/offline/registry/RegistryData;->mRegId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateCheckSum(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/registry/MetaRegistry;->mCheckSumMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
