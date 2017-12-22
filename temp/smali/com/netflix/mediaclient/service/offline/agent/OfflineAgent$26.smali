.class Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;
.super Ljava/lang/Object;
.source "OfflineAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

.field final synthetic val$movieId:J

.field final synthetic val$offlineManifest:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;

.field final synthetic val$oxid:Ljava/lang/String;

.field final synthetic val$status:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;->this$0:Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;->val$callback:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

    iput-wide p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;->val$movieId:J

    iput-object p5, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;->val$offlineManifest:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;

    iput-object p6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;->val$oxid:Ljava/lang/String;

    iput-object p7, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1718
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;->val$callback:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;->val$movieId:J

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;->val$offlineManifest:Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;->val$oxid:Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgent$26;->val$status:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;->onManifestResponse(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1719
    return-void
.end method
