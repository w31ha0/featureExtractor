.class public Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;
.super Lcom/netflix/mediaclient/service/pservice/PServiceAgent;
.source "PServiceWidgetAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceWidgetAgentInterface;


# static fields
.field private static final ASPECT_RATIO_16_9:F = 1.78f

.field private static final ASPECT_RATIO_LIMIT_FOR_CROPPING:F = 4.8f

.field public static final EXTRA_SOURCE:Ljava/lang/String; = "FROM_PREAPP_WIDGET"

.field public static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final LOGO_HEADER_HEIGHT_DP:I = 0x28

.field private static final MAX_IMAGES_IN_VIEW:I = 0x3

.field public static final NFLX_WIDGET:Ljava/lang/String; = "NetflixWidget"

.field private static final PREAPP_NFLX_BASE:Ljava/lang/String; = "nflx://www.netflix.com/Browse?q=source%3DNetflixWidget%26trkid%3D14836231%26action%3D"

.field private static final PREAPP_NFLX_EPISODE_URL:Ljava/lang/String; = "%26episodeid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fprograms%2F"

.field private static final PREAPP_NFLX_MOVIE_URL:Ljava/lang/String; = "%26movieid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fmovies%2F"

.field private static final PREAPP_NFLX_SHOW_URL:Ljava/lang/String; = "%26movieid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fseries%2F"

.field private static final PREAPP_TRACKID:Ljava/lang/String; = "14836231"

.field private static final PREAP_TRACKID_PARAM:Ljava/lang/String; = "%26trkid%3D14836231"

.field private static final TAG:Ljava/lang/String; = "nf_preapp_widgetagent"

.field private static final TV_CARD_SCALE_UP:I = 0x3

.field private static mIsNflxServicePlayerInPauseState:Z

.field private static mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

.field private static mNflxServicePlayableId:Ljava/lang/String;

.field private static mVideoIdOnWidget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getBitmapFromDisk(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;I)I
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageResourceId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    return-void
.end method

.method private adjustLogoAndRefreshIcon(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;IILjava/lang/String;Ljava/util/List;)Landroid/widget/RemoteViews;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/RemoteViews;",
            "I",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f1002f6

    .line 432
    const v0, 0x7f1002f7

    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHomeIntent(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 433
    const v0, 0x7f0300db

    if-ne v0, p7, :cond_1

    .line 434
    const v0, 0x7f1002f8

    invoke-direct {p0, p4, p5, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetRefreshIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 435
    const/16 v0, 0x8

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 436
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getGradientResourceId(I)I

    move-result v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 451
    :cond_0
    :goto_0
    return-object p2

    .line 438
    :cond_1
    invoke-direct {p0, p4, p5, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetRefreshIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 440
    invoke-direct {p0, p1, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->canFitListName(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    invoke-interface {p9, p4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    div-int/2addr v0, p3

    .line 443
    if-lez v0, :cond_2

    .line 444
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getPreAppAdString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 443
    goto :goto_1

    .line 446
    :cond_3
    invoke-virtual {p2, v3, p8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private adjustViews(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 7

    .prologue
    const v6, 0x7f1002fa

    const/4 v1, 0x1

    const v5, 0x7f1002fb

    const/4 v0, 0x0

    const/16 v4, 0x8

    .line 270
    const v2, 0x7f1002f3

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 271
    const v2, 0x7f1002fd

    invoke-virtual {p2, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 273
    const v2, 0x7f1002f7

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 274
    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 275
    invoke-virtual {p2, v5, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 277
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHeight(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v2

    .line 278
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v3

    .line 279
    if-gt v3, v2, :cond_0

    move v0, v1

    .line 281
    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    if-gt v3, v0, :cond_1

    .line 282
    invoke-virtual {p2, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 284
    :cond_1
    if-gt v2, v1, :cond_2

    .line 285
    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 286
    invoke-virtual {p2, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 289
    :cond_2
    return-void
.end method

.method private buildNflxUri(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PVideo;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 597
    const-string/jumbo v0, "home"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNflxBaseReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    .line 601
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNflxBaseReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 602
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 603
    const-string/jumbo v1, "%26movieid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fseries%2F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iget-object v1, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    const-string/jumbo v1, "%26episodeid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fprograms%2F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 607
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    const-string/jumbo v1, "%26movieid%3Dhttp%3A%2F%2Fapi-global.netflix.com%2Fcatalog%2Ftitles%2Fmovies%2F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private buildRemoteViews(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;IILcom/netflix/mediaclient/service/pservice/PDiskData;)Landroid/widget/RemoteViews;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;",
            ">;II",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, p7

    invoke-direct {v6, v4, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 382
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->setViewsToDefault(Landroid/widget/RemoteViews;)V

    .line 384
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v19

    .line 385
    move-object/from16 v0, p8

    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;->lomoMap:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p7

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNumberOfImages(Landroid/content/Context;II)I

    move-result v13

    .line 388
    const/4 v4, 0x3

    if-ge v13, v4, :cond_0

    .line 389
    add-int/lit8 v4, v13, 0x1

    :goto_0
    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    .line 390
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v7, "setting %d to gone"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageGroupResourceId(I)I

    move-result v5

    const/16 v7, 0x8

    invoke-virtual {v6, v5, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 389
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    :cond_0
    const/4 v10, 0x1

    move-object/from16 v9, p3

    move-object/from16 v7, p2

    :goto_1
    if-gt v10, v13, :cond_4

    .line 396
    const-string/jumbo v4, "nf_preapp_widgetagent"

    const-string/jumbo v5, "for widgetId:%d, image:%d, (%s), %s:%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v11, 0x2

    aput-object v9, v8, v11

    const/4 v11, 0x3

    iget-object v12, v7, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v12, v8, v11

    const/4 v11, 0x4

    iget-object v12, v7, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v12, v8, v11

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageGroupResourceId(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p6

    move/from16 v11, p7

    .line 399
    invoke-direct/range {v4 .. v11}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->fillInRemoteView(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/netflix/mediaclient/service/pservice/PVideo;ILcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 401
    if-ne v10, v13, :cond_1

    :goto_2
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v14, v7

    move-object v15, v9

    move/from16 v16, p6

    move/from16 v17, p7

    .line 424
    invoke-direct/range {v10 .. v19}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->adjustLogoAndRefreshIcon(Landroid/content/Context;Landroid/widget/RemoteViews;ILcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;IILjava/lang/String;Ljava/util/List;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 426
    return-object v4

    .line 405
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p8

    invoke-direct {v0, v9, v1, v7, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->listHasNextVideo(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p8

    invoke-direct {v0, v1, v7, v9, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextVideoInList(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v4

    .line 414
    :goto_3
    add-int/lit8 v5, v10, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v4, v9, v1, v5}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageType(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v5

    .line 415
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v1, v4, v5}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrlOnDisk(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v6

    .line 416
    invoke-static {v6}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 417
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    move-object/from16 v0, p5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object v6, v12

    move-object v7, v4

    goto/16 :goto_1

    .line 408
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v9, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextList(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v9

    .line 409
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v9, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v19

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v4

    .line 411
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v6, "(%d)list at end, next video (%s) %s:%s "

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x1

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v11, v4, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v11, v7, v8

    const/4 v8, 0x3

    iget-object v11, v4, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v11, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 420
    :cond_3
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v6, "(%d) url null for video:%s in list %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v8

    const/4 v8, 0x1

    iget-object v11, v4, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v11, v7, v8

    const/4 v8, 0x2

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    move-object v12, v6

    goto/16 :goto_2
.end method

.method private buildWidgetStaticImageRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f1002fa

    const v5, 0x7f1002f2

    const/4 v4, 0x0

    .line 352
    const v0, 0x7f0300dc

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->toAlignByHeight(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->isWidgetOneCellHigh(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    :cond_0
    const v0, 0x7f0300db

    .line 358
    :cond_1
    const-string/jumbo v1, "nf_preapp_widgetagent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "buildWidgetStaticImageRemoteView layoutId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 361
    invoke-direct {p0, p1, v1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->adjustViews(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 363
    const v0, 0x7f02023c

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 365
    invoke-virtual {v1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 366
    const v0, 0x7f1002fb

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 368
    const v0, 0x7f090239

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 370
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHomeIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 371
    const v0, 0x7f1002f6

    invoke-direct {p0, v7, v7, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetRefreshIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 372
    const v0, 0x7f1002f7

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHomeIntent(I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 374
    return-object v1
.end method

.method private canFitListName(Landroid/content/Context;I)Z
    .locals 2

    .prologue
    .line 1313
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    .line 1314
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->isWidgetOneCellHigh(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cellFromDp(I)I
    .locals 1

    .prologue
    .line 1153
    add-int/lit8 v0, p0, 0x1e

    div-int/lit8 v0, v0, 0x46

    return v0
.end method

.method private createWidgetButtonIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/service/pservice/PService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.CATEGORY_FROM_PREAPP_WIDGET"

    .line 534
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "widgetId"

    .line 535
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const-string/jumbo v0, "videoId"

    iget-object v1, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 542
    const-string/jumbo v0, "listType"

    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private decodeBitmapsAndUpdate(ILandroid/widget/RemoteViews;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/RemoteViews;",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1060
    new-instance v8, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v8}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move-object v4, p6

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$1;-><init>(Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;Ljava/util/List;ILjava/util/List;Landroid/widget/RemoteViews;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    invoke-virtual {v8, v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 1074
    return-void
.end method

.method private doesListHaveEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1107
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v3

    .line 1108
    if-eqz v3, :cond_0

    invoke-direct {p0, v3, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListUpperBound(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v0

    add-int v4, p3, p4

    if-lt v0, v4, :cond_0

    move v0, v1

    .line 1109
    :goto_0
    const-string/jumbo v4, "nf_preapp_widgetagent"

    const-string/jumbo v5, "list:%s, size:%d, upperBound:%d, position:%d, need:%d, hasEnough:%b"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    .line 1110
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListUpperBound(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    .line 1109
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    return v0

    :cond_0
    move v0, v2

    .line 1108
    goto :goto_0
.end method

.method private fillInRemoteView(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/netflix/mediaclient/service/pservice/PVideo;ILcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 456
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageResourceId(I)I

    move-result v2

    .line 457
    invoke-direct {p0, p3, p5, p4, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetDetailsIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 459
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p5}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget v0, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableRuntime:I

    if-lez v0, :cond_2

    iget v0, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->plyableBookmarkPos:I

    mul-int/lit8 v0, v0, 0x64

    iget v3, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableRuntime:I

    div-int/2addr v0, v3

    .line 464
    :goto_0
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getProgressResourceId(I)I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4, v0, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 465
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-direct {p0, p3, p5, p7, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageType(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoTitleResourceId(I)I

    move-result v0

    invoke-direct {p0, p1, p5, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoTitle(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PVideo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 469
    :cond_0
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getGradientResourceId(I)I

    move-result v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 470
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getPlayResourceId(I)I

    move-result v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 471
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getProgressGroupResourceId(I)I

    move-result v0

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 473
    invoke-direct {p0, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getPlayResourceId(I)I

    move-result v0

    invoke-direct {p0, p3, p5, p4, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetPlayIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 474
    invoke-direct {p0, p3, p5, p4, p6}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetPlayIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 476
    :cond_1
    return-object p2

    :cond_2
    move v0, v1

    .line 461
    goto :goto_0
.end method

.method private getAppWidgetIds(Landroid/content/Context;)[I
    .locals 4

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1010
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1011
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 814
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    :goto_0
    return-object v0

    .line 818
    :cond_0
    const-string/jumbo v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    const-string/jumbo v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 822
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 824
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "%s does not exist"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 828
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getBitmapFromDisk(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 147
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 148
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
    if-nez v0, :cond_1

    .line 150
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "bitmap does not exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x0

    .line 171
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/TimeUtils;->computeTimeInMsSinceStart(J)J

    move-result-wide v2

    .line 154
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v4, "bitmap decode took (%s) %d ms"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 158
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getResizedBitmapForTrickplay(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/TimeUtils;->computeTimeInMsSinceStart(J)J

    move-result-wide v2

    .line 161
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v4, "bitmap resize (CW) took %d ms"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TITLE_CARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 166
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getResizedBitmapForTvCard(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/TimeUtils;->computeTimeInMsSinceStart(J)J

    move-result-wide v2

    .line 169
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v4, "bitmap resize (tvCard) took %d ms"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;)",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;"
        }
    .end annotation

    .prologue
    .line 749
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 750
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    .line 752
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGradientResourceId(I)I
    .locals 1

    .prologue
    .line 1206
    packed-switch p1, :pswitch_data_0

    .line 1214
    const v0, 0x7f1002f5

    .line 1217
    :goto_0
    return v0

    .line 1208
    :pswitch_0
    const v0, 0x7f100301

    .line 1209
    goto :goto_0

    .line 1211
    :pswitch_1
    const v0, 0x7f100308

    .line 1212
    goto :goto_0

    .line 1206
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getImageGroupResourceId(I)I
    .locals 1

    .prologue
    .line 1158
    packed-switch p1, :pswitch_data_0

    .line 1166
    const v0, 0x7f10030c

    .line 1169
    :goto_0
    return v0

    .line 1160
    :pswitch_0
    const v0, 0x7f1002fe

    .line 1161
    goto :goto_0

    .line 1163
    :pswitch_1
    const v0, 0x7f100305

    .line 1164
    goto :goto_0

    .line 1158
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getImageResourceId(I)I
    .locals 1

    .prologue
    .line 1174
    packed-switch p1, :pswitch_data_0

    .line 1182
    const v0, 0x7f1002f2

    .line 1185
    :goto_0
    return v0

    .line 1176
    :pswitch_0
    const v0, 0x7f1002ff

    .line 1177
    goto :goto_0

    .line 1179
    :pswitch_1
    const v0, 0x7f100306

    .line 1180
    goto :goto_0

    .line 1174
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getImageType(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 257
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "getImageType - getResizedBitmapForTrickplay%d, listType:%s, videoPos:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object p2, v2, v5

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const v0, 0x7f0300dd

    if-ne v0, p3, :cond_0

    if-le p4, v5, :cond_0

    .line 259
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->HORIZONTAL_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    .line 264
    :goto_0
    return-object v0

    .line 261
    :cond_0
    const v0, 0x7f0300db

    if-ne v0, p3, :cond_1

    .line 262
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TITLE_CARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    goto :goto_0

    .line 264
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/netflix/mediaclient/service/pservice/PVideo;->isPlayable:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->TRICKPLAY:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->HORIZONTAL_ART:Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    goto :goto_0
.end method

.method public static getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 230
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$2;->$SwitchMap$com$netflix$mediaclient$service$pservice$PDiskData$ImageType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 242
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->horzDispUrl:Ljava/lang/String;

    .line 245
    :goto_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "url empty for imageType: %s, try horzDispUrl: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    iget-object v3, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->horzDispUrl:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->horzDispUrl:Ljava/lang/String;

    .line 248
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->boxartUrl:Ljava/lang/String;

    .line 250
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "even fallback url empty try boaxartUrl: %s"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->boxartUrl:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 253
    :cond_0
    return-object v0

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->tvCardUrl:Ljava/lang/String;

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PVideo;->trickplayUrl:Ljava/lang/String;

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getImageUrlOnDisk(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 132
    if-eqz p2, :cond_0

    invoke-static {p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    :cond_0
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "pVideo is not valid, ignore newRemoteView"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 142
    :cond_1
    :goto_0
    return-object v0

    .line 137
    :cond_2
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->urlMap:Ljava/util/Map;

    invoke-static {p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrl(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "resource not on disk, ignore widget update"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 140
    goto :goto_0
.end method

.method private getLayoutId(Landroid/content/Context;I)I
    .locals 10

    .prologue
    const v0, 0x7f0300dd

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v1, 0x7f0300db

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->isWidgetOneCellHigh(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "using preapp_widget_align_height %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_0
    return v1

    .line 319
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->toAlignByWidth(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "using preapp_widget_vertical %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 321
    goto :goto_0

    .line 324
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v2

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->toAlignByHeight(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 327
    :goto_1
    const-string/jumbo v3, "nf_preapp_widgetagent"

    const-string/jumbo v4, "using %d, preapp_widget_align_height=%d, preapp_width:%d, (widthInCell:%d) preapp_width_2cell:%d"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v8

    const v1, 0x7f0300de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    const/4 v1, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x4

    const v2, 0x7f0300df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 328
    goto :goto_0

    .line 325
    :cond_2
    if-le v2, v9, :cond_3

    const v0, 0x7f0300de

    goto :goto_1

    :cond_3
    const v0, 0x7f0300df

    goto :goto_1
.end method

.method private getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 725
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 726
    :cond_0
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "diskData is null - ignoring request"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :goto_0
    return-object v0

    .line 730
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$2;->$SwitchMap$com$netflix$mediaclient$service$pservice$PDiskData$ListType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 732
    :pswitch_0
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    goto :goto_0

    .line 734
    :pswitch_1
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    goto :goto_0

    .line 736
    :pswitch_2
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    goto :goto_0

    .line 738
    :pswitch_3
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    goto :goto_0

    .line 740
    :pswitch_4
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    goto :goto_0

    .line 742
    :pswitch_5
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    goto :goto_0

    .line 730
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getListTypeToUse(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 2

    .prologue
    .line 619
    if-nez p2, :cond_0

    .line 620
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 640
    :goto_0
    return-object v0

    .line 623
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 624
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 625
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 626
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 627
    :cond_1
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 628
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 629
    :cond_2
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 630
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 631
    :cond_3
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 632
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 634
    :cond_4
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.CW_UPDATED_FROM_PREAPP_AGENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 635
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 636
    :cond_5
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.IQ_UPDATED_FROM_PREAPP_AGENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 637
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 640
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0
.end method

.method private getListUpperBound(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")I"
        }
    .end annotation

    .prologue
    .line 785
    if-nez p1, :cond_0

    .line 786
    const/4 v0, 0x0

    .line 788
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest;->getVideoCountOfListForWidgetExp(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getMaxNumOfImagesForAllWidgets(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1115
    .line 1116
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getAppWidgetIds(Landroid/content/Context;)[I

    move-result-object v4

    .line 1118
    array-length v5, v4

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget v0, v4, v2

    .line 1119
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getLayoutId(Landroid/content/Context;I)I

    move-result v6

    .line 1120
    invoke-direct {p0, p1, v6, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNumberOfImages(Landroid/content/Context;II)I

    move-result v0

    .line 1121
    if-le v0, v1, :cond_0

    .line 1118
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1121
    goto :goto_1

    .line 1123
    :cond_1
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "maxNumOfImages among all widgets %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    return v1
.end method

.method private getNameOfListShownInWidget(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 2

    .prologue
    .line 920
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 923
    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 926
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0
.end method

.method private getNextList(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 2

    .prologue
    .line 644
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent$2;->$SwitchMap$com$netflix$mediaclient$service$pservice$PDiskData$ListType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 721
    :cond_0
    :goto_0
    return-object p1

    .line 646
    :pswitch_0
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 647
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 649
    :cond_1
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 650
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 652
    :cond_2
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 653
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 655
    :cond_3
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 656
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 660
    :pswitch_1
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 661
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 663
    :cond_4
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 664
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 666
    :cond_5
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 667
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 669
    :cond_6
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 670
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto :goto_0

    .line 674
    :pswitch_2
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 675
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 677
    :cond_7
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 678
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 680
    :cond_8
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 681
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 683
    :cond_9
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 684
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 688
    :pswitch_3
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardSecondList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 689
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_SECOND:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 691
    :cond_a
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 692
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 694
    :cond_b
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 695
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 697
    :cond_c
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 698
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 702
    :pswitch_4
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->billboardList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 703
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->BILLBOARD:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 705
    :cond_d
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->cwList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 706
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 708
    :cond_e
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->iqList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 709
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 711
    :cond_f
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PDiskData;->standardFirstList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 712
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->STANDARD_FIRST:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 716
    :pswitch_5
    sget-object p1, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    goto/16 :goto_0

    .line 644
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getNextListTypeToUse(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1077
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getMaxNumOfImagesForAllWidgets(Landroid/content/Context;)I

    move-result v1

    .line 1078
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextList(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 1080
    :cond_0
    invoke-direct {p0, v0, p2, v6, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1086
    :goto_0
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "using nextList:%s, currentList:%s, need:%s"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object p1, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    return-object v0

    .line 1083
    :cond_1
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "skip list:%s, currentList:%s, need:%d"

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object p1, v4, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextList(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 1085
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method private getNextVideo(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 756
    if-nez p3, :cond_0

    .line 757
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "diskData is null - ignoring request"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :goto_0
    return-object v0

    .line 761
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v1

    .line 762
    if-eqz v1, :cond_1

    if-nez p2, :cond_3

    .line 763
    :cond_1
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "(getNextVideo) listType: %s or currentVideo %s is null getting first video"

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v8

    aput-object p2, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListTypeToUse(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 765
    invoke-direct {p0, v0, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 766
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "list:%s, not enough - going to next"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-direct {p0, v0, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextListTypeToUse(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 769
    :cond_2
    invoke-direct {p0, v0, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    goto :goto_0

    .line 773
    :cond_3
    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 774
    invoke-direct {p0, v1, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListUpperBound(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v3

    .line 775
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_4

    .line 776
    add-int/lit8 v0, v2, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    goto :goto_0

    .line 778
    :cond_4
    const-string/jumbo v4, "nf_preapp_widgetagent"

    const-string/jumbo v5, "next null - videoId: %s, is last in listType: %s, index: %d, size: %d, upperBound:%d"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v10

    const/4 v2, 0x3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getNextVideoInList(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;"
        }
    .end annotation

    .prologue
    .line 792
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 793
    add-int/lit8 v0, v0, 0x1

    .line 794
    if-lez v0, :cond_0

    invoke-direct {p0, p1, p3, p4}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListUpperBound(Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 795
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    .line 799
    :goto_0
    return-object v0

    .line 797
    :cond_0
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "getNextVideoInList is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNflxBaseReq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "nflx://www.netflix.com/Browse?q=source%3DNetflixWidget%26trkid%3D14836231%26action%3D"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNumberOfImages(Landroid/content/Context;II)I
    .locals 10

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 1269
    const v3, 0x7f0300db

    if-eq v3, p2, :cond_0

    const v3, 0x7f0300df

    if-ne v3, p2, :cond_2

    :cond_0
    move v0, v1

    .line 1296
    :cond_1
    :goto_0
    return v0

    .line 1273
    :cond_2
    const v3, 0x7f0300dd

    if-eq v3, p2, :cond_1

    .line 1277
    const v3, 0x7f0300de

    if-ne v3, p2, :cond_5

    .line 1278
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHeight(Landroid/content/Context;I)I

    move-result v3

    .line 1279
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    .line 1280
    int-to-float v5, v3

    div-float v5, v4, v5

    .line 1281
    const-string/jumbo v6, "nf_preapp_widgetagent"

    const-string/jumbo v7, "w-h(%f-%d) %f "

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    float-to-double v6, v5

    const-wide v8, 0x3ffccccccccccccdL    # 1.8

    cmpg-double v3, v6, v8

    if-gez v3, :cond_3

    .line 1284
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "1 image only"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1285
    goto :goto_0

    .line 1287
    :cond_3
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_4

    .line 1288
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "2 image only"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1289
    goto :goto_0

    .line 1292
    :cond_4
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "3 images"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1296
    goto :goto_0
.end method

.method private getPlayResourceId(I)I
    .locals 1

    .prologue
    .line 1190
    packed-switch p1, :pswitch_data_0

    .line 1198
    const v0, 0x7f1002f3

    .line 1201
    :goto_0
    return v0

    .line 1192
    :pswitch_0
    const v0, 0x7f100300

    .line 1193
    goto :goto_0

    .line 1195
    :pswitch_1
    const v0, 0x7f100307

    .line 1196
    goto :goto_0

    .line 1190
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPreAppAdString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 333
    rem-int/lit8 v0, p2, 0x3

    packed-switch v0, :pswitch_data_0

    .line 342
    const v0, 0x7f090239

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v2, "ad (%d) %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-object v0

    .line 335
    :pswitch_0
    const v0, 0x7f090237

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :pswitch_1
    const v0, 0x7f090238

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getProgressGroupResourceId(I)I
    .locals 1

    .prologue
    .line 1254
    packed-switch p1, :pswitch_data_0

    .line 1262
    const v0, 0x7f1002fc

    .line 1265
    :goto_0
    return v0

    .line 1256
    :pswitch_0
    const v0, 0x7f100302

    .line 1257
    goto :goto_0

    .line 1259
    :pswitch_1
    const v0, 0x7f100309

    .line 1260
    goto :goto_0

    .line 1254
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getProgressResourceId(I)I
    .locals 1

    .prologue
    .line 1238
    packed-switch p1, :pswitch_data_0

    .line 1246
    const v0, 0x7f1002fd

    .line 1249
    :goto_0
    return v0

    .line 1240
    :pswitch_0
    const v0, 0x7f100304

    .line 1241
    goto :goto_0

    .line 1243
    :pswitch_1
    const v0, 0x7f10030b

    .line 1244
    goto :goto_0

    .line 1238
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getResizedBitmapForTrickplay(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const v10, 0x3fe3d70a    # 1.78f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 179
    div-int v0, v3, v4

    int-to-float v5, v0

    .line 180
    cmpl-float v0, v5, v10

    if-lez v0, :cond_1

    move v0, v1

    .line 182
    :goto_0
    const-string/jumbo v6, "nf_preapp_widgetagent"

    const-string/jumbo v7, "getResizedBitmapForTrickplay -  w-h: %d-%d, aspectRatio:%f(%f), cropWidth:%b"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v8, v12

    const/4 v5, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz v0, :cond_3

    .line 185
    int-to-float v0, v4

    mul-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 186
    sub-int v5, v3, v0

    div-int/lit8 v5, v5, 0x2

    .line 188
    const-string/jumbo v6, "nf_preapp_widgetagent"

    const-string/jumbo v7, "getResizedBitmapForTrickplay - w-h: %d-%d, aspectWidth:%d, x:%d, shouldCropWidth:%b"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x4

    add-int v10, v5, v0

    if-ge v10, v3, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    add-int v1, v5, v0

    if-ge v1, v3, :cond_0

    .line 192
    invoke-static {p1, v5, v2, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    .line 210
    :cond_0
    :goto_2
    return-object p1

    :cond_1
    move v0, v2

    .line 180
    goto :goto_0

    :cond_2
    move v1, v2

    .line 188
    goto :goto_1

    .line 199
    :cond_3
    int-to-float v0, v3

    div-float/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 200
    sub-int v5, v4, v0

    div-int/lit8 v5, v5, 0x2

    .line 202
    const-string/jumbo v6, "nf_preapp_widgetagent"

    const-string/jumbo v7, "getResizedBitmapForTrickplay - w-h: %d-%d, aspectHeight:%d, y:%d, shouldCropHeight:%b"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    const/4 v9, 0x4

    add-int v10, v5, v0

    if-ge v10, v4, :cond_4

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    add-int v1, v5, v0

    if-ge v1, v4, :cond_0

    .line 206
    invoke-static {p1, v2, v5, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    .line 208
    goto :goto_2

    :cond_4
    move v1, v2

    .line 202
    goto :goto_3
.end method

.method private getResizedBitmapForTvCard(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/high16 v0, 0x40400000    # 3.0f

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 220
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 221
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p1

    move v2, v1

    move v6, v1

    .line 222
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 224
    return-object v0
.end method

.method private getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 938
    if-eqz p1, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 939
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 940
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 941
    :cond_0
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v2, "getVideoShownInWidget - listType / videoId  null"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 959
    :goto_0
    return-object v0

    .line 945
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "videoId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 946
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "extra_video_id is null; using stored %s-%s"

    new-array v2, v4, [Ljava/lang/Object;

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mVideoIdOnWidget:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mVideoIdOnWidget:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    goto :goto_0

    .line 950
    :cond_2
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v3, "getVideoShownInWidget %s-%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    .line 952
    if-eqz v0, :cond_4

    .line 953
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    .line 954
    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 959
    goto :goto_0
.end method

.method private getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;
    .locals 3

    .prologue
    .line 963
    invoke-direct {p0, p1, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    .line 964
    if-eqz v0, :cond_1

    .line 965
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/pservice/PVideo;

    .line 966
    iget-object v2, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 971
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVideoTitle(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PVideo;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 480
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v1, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const v0, 0x7f090174

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableSeasonNumAbbrLabel:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableEpisodeNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 483
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p3, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method private getVideoTitleResourceId(I)I
    .locals 1

    .prologue
    .line 1222
    packed-switch p1, :pswitch_data_0

    .line 1230
    const v0, 0x7f1002fa

    .line 1233
    :goto_0
    return v0

    .line 1224
    :pswitch_0
    const v0, 0x7f100303

    .line 1225
    goto :goto_0

    .line 1227
    :pswitch_1
    const v0, 0x7f10030a

    .line 1228
    goto :goto_0

    .line 1222
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getWidgetDetailsIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 498
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.DETAILS_1_FROM_PREAPP_WIDGET"

    .line 499
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 500
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.DETAILS_2_FROM_PREAPP_WIDGET"

    .line 502
    :cond_0
    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    .line 503
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.DETAILS_3_FROM_PREAPP_WIDGET"

    .line 506
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->createWidgetButtonIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetHeight(Landroid/content/Context;I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1135
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1137
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "appWidgetMinHeight"

    .line 1138
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1137
    :goto_0
    return v0

    .line 1138
    :cond_0
    const-string/jumbo v1, "appWidgetMaxHeight"

    .line 1139
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getWidgetHomeIntent(I)Landroid/app/PendingIntent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.HOME_FROM_PREAPP_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-direct {p0, v0, v2, v2, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->createWidgetButtonIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetId(Landroid/content/Intent;)I
    .locals 3

    .prologue
    .line 930
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PService;->INVALID_WIDGET_ID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 931
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 932
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "widgetId"

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PService;->INVALID_WIDGET_ID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 934
    :cond_0
    return v0
.end method

.method private getWidgetPlayIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 511
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PLAY_1_FROM_PREAPP_WIDGET"

    .line 512
    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 513
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PLAY_2_FROM_PREAPP_WIDGET"

    .line 515
    :cond_0
    const/4 v1, 0x3

    if-ne p4, v1, :cond_1

    .line 516
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PLAY_3_FROM_PREAPP_WIDGET"

    .line 518
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->createWidgetButtonIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetRefreshIntent(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 523
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.REFRESH_FROM_PREAPP_WIDGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->createWidgetButtonIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetWidth(Landroid/content/Context;I)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1145
    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1147
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "appWidgetMaxWidth"

    .line 1148
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1147
    :goto_0
    return v0

    .line 1148
    :cond_0
    const-string/jumbo v1, "appWidgetMinWidth"

    .line 1149
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private hasAtleastOneToShow(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;I)Z
    .locals 1

    .prologue
    .line 1103
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->doesListHaveEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v0

    return v0
.end method

.method private hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z
    .locals 2

    .prologue
    .line 1091
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getMaxNumOfImagesForAllWidgets(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v0

    return v0
.end method

.method private hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z
    .locals 1

    .prologue
    .line 1095
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->CW:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->IQ:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasAtleastOneToShow(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    const/4 v0, 0x1

    .line 1099
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->doesListHaveEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v0

    goto :goto_0
.end method

.method private isWidgetOneCellHigh(Landroid/content/Context;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1128
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHeight(Landroid/content/Context;I)I

    move-result v1

    .line 1129
    invoke-static {v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchNetflixHome(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 549
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "launching Netflix Home"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-string/jumbo v0, "home"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->buildNflxUri(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PVideo;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->HOME:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNflxAction(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    .line 551
    return-void
.end method

.method private launchNetflixPlay(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;I)V
    .locals 2

    .prologue
    .line 563
    invoke-static {}, Lcom/netflix/mediaclient/service/NetflixService;->isInstanceCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mIsNflxServicePlayerInPauseState:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableId:Ljava/lang/String;

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mNflxServicePlayableId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Resuming paused playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->resumeNetflixPlay(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;)V

    .line 572
    :goto_0
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mIsNflxServicePlayerInPauseState:Z

    .line 570
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mNflxServicePlayableId:Ljava/lang/String;

    .line 571
    const-string/jumbo v0, "play"

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->buildNflxUri(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PVideo;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->START_PLAY:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNflxAction(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private launchNetflixVideoDetails(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;I)V
    .locals 2

    .prologue
    .line 554
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "launching Netflix MDP/SDP"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string/jumbo v0, "view_details"

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->buildNflxUri(Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PVideo;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->VIEW_TITLE_DETAILS:Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/pservice/logging/PreAppWidgetLogActionData$PreAppWidgetActionName;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNflxAction(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    .line 556
    return-void
.end method

.method private launchNflxAction(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 588
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 589
    const-string/jumbo v1, "FROM_PREAPP_WIDGET"

    const-string/jumbo v2, "NetflixWidget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string/jumbo v1, "widgetId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string/jumbo v1, "actionName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 593
    return-void
.end method

.method private listHasNextVideo(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            ">;",
            "Lcom/netflix/mediaclient/service/pservice/PVideo;",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 803
    invoke-interface {p2, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 804
    if-gez v1, :cond_1

    .line 809
    :cond_0
    :goto_0
    return v0

    .line 808
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, p4}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest;->getVideoCountOfListForWidgetExp(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 809
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private resumeNetflixPlay(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;)V
    .locals 4

    .prologue
    .line 575
    iget-object v1, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 576
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    .line 577
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v3, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableId:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 579
    iget-object v0, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->playableId:Ljava/lang/String;

    .line 581
    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/ui/common/PlayContext;->DFLT_MDX_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-static {p1, v0, v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;

    move-result-object v0

    .line 582
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 583
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 584
    return-void
.end method

.method private sendVideoToWidget(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 5

    .prologue
    .line 488
    if-nez p2, :cond_0

    .line 489
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "video == null, unable to notify widget"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Sending video to widget. id:%s, type:%s, list:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p2, Lcom/netflix/mediaclient/service/pservice/PVideo;->videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateAllWidgetsWithLatestExperience(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    goto :goto_0
.end method

.method private setViewsToDefault(Landroid/widget/RemoteViews;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1300
    const v0, 0x7f1002f6

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1301
    const v0, 0x7f1002f3

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1302
    const v0, 0x7f100300

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1303
    const v0, 0x7f100307

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1304
    const v0, 0x7f1002f5

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1305
    const v0, 0x7f100301

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1306
    const v0, 0x7f100308

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1307
    const v0, 0x7f1002fc

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1308
    const v0, 0x7f100302

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1309
    const v0, 0x7f100309

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1310
    return-void
.end method

.method private toAlignByHeight(Landroid/content/Context;I)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 301
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHeight(Landroid/content/Context;I)I

    move-result v0

    add-int/lit8 v3, v0, -0x28

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v0

    int-to-float v4, v0

    .line 303
    int-to-float v0, v3

    div-float v5, v4, v0

    .line 304
    invoke-static {v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v6

    .line 306
    if-eq v6, v2, :cond_0

    const v0, 0x4099999a    # 4.8f

    cmpl-float v0, v5, v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v2

    .line 309
    :goto_0
    const-string/jumbo v7, "nf_preapp_widgetagent"

    const-string/jumbo v8, "w-h(%f-%d) %f, heightInCells: %d, alignByHeight: %b"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v9, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v2

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    const/4 v1, 0x4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v0

    :cond_1
    move v0, v1

    .line 306
    goto :goto_0
.end method

.method private toAlignByWidth(Landroid/content/Context;I)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetHeight(Landroid/content/Context;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v3

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetWidth(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->cellFromDp(I)I

    move-result v4

    .line 294
    if-le v3, v1, :cond_0

    if-le v4, v8, :cond_0

    if-gt v4, v3, :cond_0

    move v0, v1

    .line 296
    :goto_0
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v6, "(%d, %d)(w,h), useMultipleTitles:%b"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return v0

    :cond_0
    move v0, v2

    .line 294
    goto :goto_0
.end method

.method private updateAllWidgetsWithLatestExperience(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 19

    .prologue
    .line 1024
    invoke-direct/range {p0 .. p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getAppWidgetIds(Landroid/content/Context;)[I

    move-result-object v17

    .line 1026
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v2, 0x0

    move/from16 v16, v2

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget v8, v17, v16

    .line 1027
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getLayoutId(Landroid/content/Context;I)I

    move-result v9

    .line 1029
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "(%s), widgetId: %d, layoutId:%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v9, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageType(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v3

    .line 1032
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrlOnDisk(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v2

    .line 1033
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1034
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "pVideo.id %s in list %s, not present on disk - going to nm list"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v4, v4, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    sget-object v5, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->NON_MEMBER:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 1036
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/netflix/mediaclient/service/pservice/PDiskData;->nonMemberList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v4

    .line 1037
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v9, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageType(Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;II)Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;

    move-result-object v3

    .line 1038
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v4, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getImageUrlOnDisk(Lcom/netflix/mediaclient/service/pservice/PDiskData;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ImageType;)Ljava/lang/String;

    move-result-object v2

    .line 1040
    :cond_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1041
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "cannot refresh, even nm list is bad"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_1
    return-void

    .line 1046
    :cond_2
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 1047
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1048
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p4

    .line 1051
    invoke-direct/range {v2 .. v10}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->buildRemoteViews(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;IILcom/netflix/mediaclient/service/pservice/PDiskData;)Landroid/widget/RemoteViews;

    move-result-object v11

    .line 1053
    iget-object v12, v4, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    move-object/from16 v9, p0

    move v10, v8

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v9 .. v15}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->decodeBitmapsAndUpdate(ILandroid/widget/RemoteViews;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/util/List;Ljava/util/List;)V

    .line 1026
    add-int/lit8 v2, v16, 0x1

    move/from16 v16, v2

    goto/16 :goto_0
.end method

.method private updateAllWidgetsWithStaticExperience(Landroid/content/Context;)V
    .locals 9

    .prologue
    .line 1015
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getAppWidgetIds(Landroid/content/Context;)[I

    move-result-object v7

    .line 1016
    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_0

    aget v3, v7, v6

    .line 1017
    invoke-direct {p0, p1, v3}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->buildWidgetStaticImageRemoteView(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 1018
    const-string/jumbo v4, ""

    sget-object v5, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V

    .line 1016
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1020
    :cond_0
    return-void
.end method

.method private updateWidget(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 88
    if-nez p2, :cond_0

    .line 89
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "RemoteViews is null, ignore refreshing widget"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    sput-object p4, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mVideoIdOnWidget:Ljava/lang/String;

    .line 94
    sput-object p5, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p3, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    goto :goto_0
.end method


# virtual methods
.method protected doInit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mVideoIdOnWidget:Ljava/lang/String;

    .line 81
    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 82
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 84
    return-void
.end method

.method public handlePlayOrDetailsReq(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 980
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;

    move-result-object v0

    .line 981
    if-nez v0, :cond_1

    .line 982
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Fetch agent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;->getDiskData()Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v0

    .line 987
    if-nez v0, :cond_2

    .line 988
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "pDiskData null. Ignoring refresh request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getService()Lcom/netflix/mediaclient/service/pservice/PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->notifyToFetchData()V

    goto :goto_0

    .line 993
    :cond_2
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNameOfListShownInWidget(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v1

    .line 995
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "handlePlayOrDetailsReq play? %b - %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    invoke-direct {p0, v1, p2, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    .line 998
    if-eqz v0, :cond_0

    .line 999
    const-string/jumbo v2, "nf_preapp_widgetagent"

    const-string/jumbo v3, "handlePlayOrDetailsReq play? %b - %s, %s - %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    iget-object v1, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v1, v4, v8

    const/4 v1, 0x3

    iget-object v5, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    if-eqz p3, :cond_3

    .line 1001
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetId(Landroid/content/Intent;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNetflixPlay(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;I)V

    goto :goto_0

    .line 1003
    :cond_3
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetId(Landroid/content/Intent;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNetflixVideoDetails(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;I)V

    goto :goto_0
.end method

.method public handlePlayerStateChange(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 1318
    const-string/jumbo v0, "isPlayerPaused"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mIsNflxServicePlayerInPauseState:Z

    .line 1319
    const-string/jumbo v0, "videoId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mNflxServicePlayableId:Ljava/lang/String;

    .line 1323
    return-void
.end method

.method public handleWidgetHomeReq(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 975
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetId(Landroid/content/Intent;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->launchNetflixHome(Landroid/content/Context;I)V

    .line 976
    return-void
.end method

.method public handleWidgetRefreshReq(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;

    move-result-object v0

    .line 855
    if-nez v0, :cond_0

    .line 856
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Fetch agent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_0
    return-void

    .line 860
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;->getDiskData()Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v2

    .line 861
    if-eqz v2, :cond_1

    .line 862
    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isNonMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 863
    :cond_1
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "pDiskData null. Ignoring refresh request - going to static experience"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateAllWidgetsWithStaticExperience(Landroid/content/Context;)V

    .line 865
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getService()Lcom/netflix/mediaclient/service/pservice/PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->notifyToFetchData()V

    goto :goto_0

    .line 869
    :cond_2
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNameOfListShownInWidget(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v1

    .line 870
    invoke-direct {p0, v1, p2, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    .line 872
    if-eqz v1, :cond_3

    sget-object v3, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->UNKNOWN:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    .line 873
    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_5

    .line 875
    :cond_3
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "listType or currentVideo is null getting first video"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListTypeToUse(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 877
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 878
    const-string/jumbo v1, "nf_preapp_widgetagent"

    const-string/jumbo v3, "list:%s, not enough - going to next"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextListTypeToUse(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 881
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 898
    :goto_1
    if-nez v0, :cond_7

    .line 899
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextList(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v1

    .line 900
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    .line 901
    if-nez v0, :cond_7

    .line 902
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "getNextList is not valid - ignoring refresh request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 884
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v3

    .line 885
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getMaxNumOfImagesForAllWidgets(Landroid/content/Context;)I

    move-result v4

    .line 886
    if-eqz v3, :cond_6

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v1, v2, v5, v4}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v5

    if-nez v5, :cond_6

    .line 887
    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 888
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v6, "list:%s, not enough videos  pos:%d, need:%d, (%s-%s)"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x3

    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v4, v7, v3

    const/4 v3, 0x4

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v0, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextListTypeToUse(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v1

    .line 890
    invoke-direct {p0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    .line 891
    const-string/jumbo v3, "nf_preapp_widgetagent"

    const-string/jumbo v4, "jumped to list:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 893
    :cond_6
    const-string/jumbo v5, "nf_preapp_widgetagent"

    const-string/jumbo v6, "list:%s, has enough pos:%d, need:%d, (%s-%s)"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x3

    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->id:Ljava/lang/String;

    aput-object v4, v7, v3

    const/4 v3, 0x4

    iget-object v4, v0, Lcom/netflix/mediaclient/service/pservice/PVideo;->title:Ljava/lang/String;

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-direct {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextVideo(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v0

    goto/16 :goto_1

    .line 907
    :cond_7
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateAllWidgetsWithLatestExperience(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    goto/16 :goto_0
.end method

.method public handleWidgetResizeReq(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 832
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "handleWidgetResizeReq"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;

    move-result-object v0

    .line 834
    if-nez v0, :cond_1

    .line 835
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Fetch agent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;->getDiskData()Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v0

    .line 840
    if-eqz v0, :cond_2

    .line 841
    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->isNonMemberDataAvailable(Lcom/netflix/mediaclient/service/pservice/PDiskData;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 842
    :cond_2
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "pDiskData null. Ignoring refresh request - going to static experience"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateAllWidgetsWithStaticExperience(Landroid/content/Context;)V

    .line 844
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getService()Lcom/netflix/mediaclient/service/pservice/PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->notifyToFetchData()V

    goto :goto_0

    .line 847
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mVideoIdOnWidget:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getVideoShownInWidget(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Ljava/lang/String;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v1

    .line 848
    if-eqz v1, :cond_0

    .line 849
    sget-object v2, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->mListTypeOnWidget:Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->updateAllWidgetsWithLatestExperience(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    goto :goto_0
.end method

.method public logWidgetRefreshEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 911
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getWidgetId(Landroid/content/Intent;)I

    move-result v0

    .line 912
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PService;->INVALID_WIDGET_ID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 913
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "cannot log refresh action invalid widgetId"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :goto_0
    return-void

    .line 916
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;->GO_TO_NEXT:Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;

    invoke-static {p1, v1, v0}, Lcom/netflix/mediaclient/service/pservice/logging/PServiceLogging;->storeLogEvent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/logging/PServiceWidgetLogEvent$WidgetAction;I)V

    goto :goto_0
.end method

.method public updateWidgetWithLatestData(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFetchAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;

    move-result-object v0

    .line 104
    if-nez v0, :cond_1

    .line 105
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "Fetch agent is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceFetchAgentInterface;->getDiskData()Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v1

    .line 110
    if-nez v1, :cond_2

    .line 111
    const-string/jumbo v0, "nf_preapp_widgetagent"

    const-string/jumbo v1, "mDiskData is null - ignoring request"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListTypeToUse(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getMaxNumOfImagesForAllWidgets(Landroid/content/Context;)I

    move-result v2

    .line 117
    invoke-direct {p0, v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->hasListGotEnoughVideos(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 118
    const-string/jumbo v3, "nf_preapp_widgetagent"

    const-string/jumbo v4, "list:%s, not enough need:%d - going to next"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getNextListTypeToUse(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;

    move-result-object v0

    .line 122
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getListByType(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getFirstVideo(Ljava/util/List;)Lcom/netflix/mediaclient/service/pservice/PVideo;

    move-result-object v2

    .line 123
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->sendVideoToWidget(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PVideo;Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    .line 126
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.ALL_MEMBER_UPDATED_FROM_PREAPP_AGENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PServiceWidgetAgent;->getService()Lcom/netflix/mediaclient/service/pservice/PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PService;->notifyToFetchNonMemberData()V

    goto :goto_0
.end method
