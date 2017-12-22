.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;
.super Ljava/lang/Object;
.source "NfManifestCache.java"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 130
    return-void
.end method


# virtual methods
.method addCallback(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mCallbacks:Ljava/util/List;

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_1
    return-void
.end method

.method getCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifestCachePlaybackInterface$ManifestCacheCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method getPrefetchSource()Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-object v0
.end method

.method updatePrefetchSource(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$PendingMovie;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 134
    return-void
.end method
