.class Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "SearchQueryDetailsActivity.java"


# instance fields
.field private final requestId:J

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;J)V
    .locals 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    .line 276
    const-string/jumbo v0, "SearchQueryDetailsActivity"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 277
    iput-wide p2, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;->requestId:J

    .line 278
    return-void
.end method


# virtual methods
.method public onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 282
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onSimilarVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 284
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;->requestId:J

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$400(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    .line 285
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    const-string/jumbo v0, "SearchQueryDetailsActivity"

    const-string/jumbo v1, "Ignoring stale callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$502(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;Z)Z

    .line 291
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    const-string/jumbo v0, "SearchQueryDetailsActivity"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$600(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;->getVideosList()Ljava/util/List;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4

    .line 299
    :cond_3
    const-string/jumbo v0, "SearchQueryDetailsActivity"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$600(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V

    goto :goto_0

    .line 304
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchVideoListProvider;->getVideosListTrackable()Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/trackable/SearchTrackable;->getReferenceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$702(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$800(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/common/SearchSimilarItemsGridViewAdapter;->setData(Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity$OnSimsFetchedCallback;->this$0:Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;->access$900(Lcom/netflix/mediaclient/ui/search/SearchQueryDetailsActivity;)V

    goto :goto_0
.end method
