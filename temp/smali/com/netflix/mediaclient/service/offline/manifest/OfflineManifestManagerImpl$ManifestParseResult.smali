.class Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;
.super Ljava/lang/Object;
.source "OfflineManifestManagerImpl.java"


# instance fields
.field public mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

.field public mStatus:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;)V
    .locals 1

    .prologue
    .line 338
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->this$0:Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mStatus:Lcom/netflix/mediaclient/android/app/Status;

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestManagerImpl$ManifestParseResult;->mNfManifest:Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    return-void
.end method
