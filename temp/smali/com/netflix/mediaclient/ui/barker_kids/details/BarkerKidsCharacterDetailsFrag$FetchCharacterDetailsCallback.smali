.class Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "BarkerKidsCharacterDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 1

    .prologue
    .line 285
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    .line 286
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method private fetchMovieDetails()V
    .locals 6

    .prologue
    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 353
    if-nez v0, :cond_0

    .line 354
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "Manager is null - can\'t get movie details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$2300(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 359
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "Activity is null - can\'t get movie details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getShowId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 364
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "show ID is null - can\'t get movie details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$2402(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Z)Z

    .line 369
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$2502(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;J)J

    .line 374
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    .line 375
    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$2600(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$2700(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)J

    move-result-wide v4

    invoke-direct {v3, p0, v4, v5}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback$FetchMovieDataCallback;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;J)V

    .line 374
    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method


# virtual methods
.method getRecommendedMovie(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/interface_/Video;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;"
        }
    .end annotation

    .prologue
    .line 438
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 439
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_0

    .line 444
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRecommendedShow(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/interface_/Video;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;"
        }
    .end annotation

    .prologue
    .line 427
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 428
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_0

    .line 433
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRecommendedVideo(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/interface_/Video;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;)",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->getRecommendedShow(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-result-object v0

    .line 417
    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->getRecommendedMovie(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-result-object v0

    .line 420
    :cond_0
    return-object v0
.end method

.method public onKidsCharacterDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onKidsCharacterDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;Ljava/lang/Boolean;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 295
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$1002(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Z)Z

    .line 297
    invoke-interface {p3}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "Invalid status code"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$1100(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V

    .line 349
    :goto_0
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$1202(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;

    .line 305
    if-nez p1, :cond_1

    .line 306
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$1300(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V

    goto :goto_0

    .line 311
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;->getGallery()Ljava/util/List;

    move-result-object v0

    .line 313
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 314
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "No details in response"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$1400(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V

    goto :goto_0

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$1500(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V

    .line 321
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 322
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->getRecommendedVideo(Ljava/util/List;)Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_3

    .line 325
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$1602(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    iput-boolean v3, v1, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    .line 328
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_4

    .line 329
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$1700(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V

    .line 348
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$2200(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    goto :goto_0

    .line 330
    :cond_4
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_3

    .line 331
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->fetchMovieDetails()V

    goto :goto_1

    .line 336
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 337
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_6

    .line 338
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$1802(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    iput-boolean v4, v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    .line 340
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$1900(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V

    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$2000(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V

    goto :goto_1

    .line 343
    :cond_6
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_3

    .line 344
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->access$2100(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    const-string/jumbo v3, "CharactorClickListener"

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    goto :goto_1
.end method
