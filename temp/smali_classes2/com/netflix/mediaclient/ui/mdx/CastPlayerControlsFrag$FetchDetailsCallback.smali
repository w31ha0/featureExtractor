.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$FetchDetailsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "CastPlayerControlsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)V
    .locals 1

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$FetchDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    .line 1290
    const-string/jumbo v0, "CastPlayerHelper"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 1291
    return-void
.end method


# virtual methods
.method public onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1295
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onMovieDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1297
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1304
    :goto_0
    return-void

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$FetchDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getCharacterRoles()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2900(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/util/Set;)V

    .line 1302
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2000()Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->isEpisodeReady:Z

    .line 1303
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$FetchDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2000()Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    goto :goto_0

    .line 1302
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1308
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1310
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$FetchDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCharacterRoles()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2900(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Ljava/util/Set;)V

    .line 1315
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2000()Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->isEpisodeReady:Z

    .line 1316
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$FetchDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$1000(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;->access$2000()Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->setControlsEnabled(Z)V

    goto :goto_0

    .line 1315
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
