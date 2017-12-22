.class Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchNextSeriesEpisodeVideoDetailsForMdxCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "MdxReceiver.java"


# instance fields
.field private final mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private processed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchNextSeriesEpisodeVideoDetailsForMdxCallback;->processed:Z

    .line 224
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchNextSeriesEpisodeVideoDetailsForMdxCallback;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 225
    return-void
.end method


# virtual methods
.method public onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onPostPlayVideosFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 231
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchNextSeriesEpisodeVideoDetailsForMdxCallback;->processed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchNextSeriesEpisodeVideoDetailsForMdxCallback;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideosProvider;->getPostPlayVideos()Ljava/util/List;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 235
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/PostPlayVideo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchNextSeriesEpisodeVideoDetailsForMdxCallback;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;

    const-string/jumbo v4, "nf_mdx"

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchNextSeriesEpisodeVideoDetailsForMdxCallback;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v3, v4, v5}, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchPostPlayForPlaybackCallback;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/mdx/MdxReceiver$FetchNextSeriesEpisodeVideoDetailsForMdxCallback;->processed:Z

    .line 244
    :cond_0
    return-void
.end method
