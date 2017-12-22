.class Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "BaseInteractiveMomentsManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    .line 80
    invoke-super/range {p0 .. p7}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->access$008(Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;)I

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->assetsResponseSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->access$108(Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;)I

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->assetsResponseSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->assetsRequestSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->cachingResourcesComplete()V

    .line 103
    :cond_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;-><init>(Ljava/lang/String;JJ)V

    .line 98
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager$1;->this$0:Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iko/BaseInteractiveMomentsManager;->resourceToLocalCacheFileMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
