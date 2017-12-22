.class Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$6;
.super Ljava/lang/Object;
.source "ResourceFetcher.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

.field final synthetic val$realCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

.field final synthetic val$resourceUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$6;->this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$6;->val$realCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$6;->val$resourceUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 399
    const-string/jumbo v0, "nf_service_resourcefetcher"

    const-string/jumbo v1, "PrefetchRequest failed: "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 400
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$6;->val$realCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$6;->val$realCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$6;->val$resourceUrl:Ljava/lang/String;

    new-instance v2, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;->onResourcePrefetched(Ljava/lang/String;ILcom/netflix/mediaclient/android/app/Status;)V

    .line 403
    :cond_0
    return-void
.end method
