.class Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$2;
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
    .line 357
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$2;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineManifestResponse(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl$2;->this$0:Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;->access$200(Lcom/netflix/mediaclient/service/offline/download/OfflinePlayableImpl;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 360
    return-void
.end method
