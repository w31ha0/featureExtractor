.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$4;
.super Ljava/lang/Object;
.source "OfflinePlayableImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/offline/manifest/OfflineManifestCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

.field final synthetic val$callBack:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$4;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$4;->val$callBack:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineManifestResponse(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$4;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$4;->val$callBack:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;

    invoke-static {v0, p1, p2, v1}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$600(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/offline/download/OfflinePlayable$PlayableManifestCallBack;)V

    .line 427
    return-void
.end method
