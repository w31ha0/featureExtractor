.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$5;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$5;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$5;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$200(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$5;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$700(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 246
    return-void
.end method
