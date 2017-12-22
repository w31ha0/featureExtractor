.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$3;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$3;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineManifestResponse(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 392
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/service/offline/utils/OfflineUtils;->hasManifestExpired(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$3;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    .line 393
    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$300(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$3;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$400(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$3;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$500(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V

    goto :goto_0
.end method
