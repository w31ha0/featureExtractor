.class Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$5;
.super Ljava/lang/Object;
.source "ResourceFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

.field final synthetic val$resourceUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$5;->this$0:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$5;->val$callback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$5;->val$resourceUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$5;->val$callback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher$5;->val$resourceUrl:Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/android/app/CommonStatus;->INT_ERR_RESOURCE_URL_NULL:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;->onResourcePrefetched(Ljava/lang/String;ILcom/netflix/mediaclient/android/app/Status;)V

    .line 384
    return-void
.end method
