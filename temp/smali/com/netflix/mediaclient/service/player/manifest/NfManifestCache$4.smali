.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$4;
.super Ljava/lang/Object;
.source "NfManifestCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

.field final synthetic val$prefetchHints:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$4;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$4;->val$prefetchHints:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$4;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$4;->val$prefetchHints:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$600(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;Ljava/util/List;)V

    .line 234
    return-void
.end method
