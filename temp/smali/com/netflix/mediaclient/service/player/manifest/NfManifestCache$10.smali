.class Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$10;
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
    .line 376
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$10;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache$10;->this$0:Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;->access$400(Lcom/netflix/mediaclient/service/player/manifest/NfManifestCache;)V

    .line 380
    return-void
.end method
