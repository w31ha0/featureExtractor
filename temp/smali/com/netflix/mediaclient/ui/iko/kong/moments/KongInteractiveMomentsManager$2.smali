.class Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$2;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "KongInteractiveMomentsManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    .prologue
    .line 250
    invoke-super/range {p0 .. p7}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->access$008(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)I

    .line 252
    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    const-string/jumbo v0, "KongInteractiveMomentsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to retrieve resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p7}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->access$108(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)I

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->access$000(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->access$300(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->access$400(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)V

    .line 265
    :cond_0
    return-void

    .line 259
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;

    move-object v1, p2

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;-><init>(Ljava/lang/String;JJ)V

    .line 260
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager$2;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;->access$200(Lcom/netflix/mediaclient/ui/iko/kong/moments/KongInteractiveMomentsManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
