.class public Lcom/novel/reader/service/DownloadService;
.super Landroid/app/IntentService;
.source "DownloadService.java"


# static fields
.field private static final Tag:Ljava/lang/String; = "DownloadService"

.field static articles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final STATUS_BAR_NOTIFICATION:I

.field private context:Landroid/content/Context;

.field private nm:Landroid/app/NotificationManager;

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/novel/reader/service/DownloadService;->articles:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "NovelReaderArticleDownloadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 23
    const/16 v0, 0x2a83

    iput v0, p0, Lcom/novel/reader/service/DownloadService;->STATUS_BAR_NOTIFICATION:I

    .line 30
    return-void
.end method

.method public static addArticle(Lcom/novel/reader/entity/Article;)V
    .locals 1
    .param p0, "article"    # Lcom/novel/reader/entity/Article;

    .prologue
    .line 51
    sget-object v0, Lcom/novel/reader/service/DownloadService;->articles:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public static addArticles(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Article;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "downlodArticles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Article;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 56
    sget-object v1, Lcom/novel/reader/service/DownloadService;->articles:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "DownloadService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 36
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "DownloadService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 42
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/novel/reader/service/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/novel/reader/service/DownloadService;->nm:Landroid/app/NotificationManager;

    .line 67
    const-string/jumbo v10, "\u4e0b\u8f09\u4e2d ..."

    .line 68
    .local v10, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 69
    .local v12, "when":J
    new-instance v5, Landroid/app/Notification;

    const v14, 0x7f0200a3

    invoke-direct {v5, v14, v10, v12, v13}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 70
    .local v5, "noti":Landroid/app/Notification;
    invoke-virtual/range {p0 .. p0}, Lcom/novel/reader/service/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/novel/reader/service/DownloadService;->context:Landroid/content/Context;

    .line 71
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/novel/reader/service/DownloadService;->context:Landroid/content/Context;

    const-class v15, Lcom/novel/reader/MyNovelActivity;

    invoke-direct {v6, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v6, "notiIntent":Landroid/content/Intent;
    const-string v14, "noti"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 73
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/novel/reader/service/DownloadService;->context:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-static {v14, v15, v6, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 74
    .local v7, "pi":Landroid/app/PendingIntent;
    iget v14, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x10

    iput v14, v5, Landroid/app/Notification;->flags:I

    .line 75
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lcom/novel/reader/service/DownloadService;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f030057

    invoke-direct {v2, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 76
    .local v2, "contentView":Landroid/widget/RemoteViews;
    const v14, 0x7f0e0138

    const v15, 0x7f02005a

    invoke-virtual {v2, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 77
    const v14, 0x7f0e0139

    invoke-virtual {v2, v14, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 78
    const v14, 0x7f0e013a

    const/16 v15, 0x64

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 79
    iput-object v2, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 80
    iput-object v7, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 81
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/novel/reader/service/DownloadService;->nm:Landroid/app/NotificationManager;

    const/16 v15, 0x2a83

    invoke-virtual {v14, v15, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/novel/reader/service/DownloadService;->startTime:J

    .line 84
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v14, Lcom/novel/reader/service/DownloadService;->articles:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v4, v14, :cond_2

    .line 85
    sget-object v14, Lcom/novel/reader/service/DownloadService;->articles:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/novel/reader/entity/Article;

    invoke-virtual {v14}, Lcom/novel/reader/entity/Article;->getNovelId()I

    move-result v15

    sget-object v14, Lcom/novel/reader/service/DownloadService;->articles:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/novel/reader/entity/Article;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/novel/reader/service/DownloadService;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v14, v0}, Lcom/novel/reader/api/NovelAPI;->downloadArticle(ILcom/novel/reader/entity/Article;Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 86
    sget-object v14, Lcom/novel/reader/service/DownloadService;->articles:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ne v4, v14, :cond_1

    .line 87
    iget-object v14, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v15, 0x7f0e0139

    const-string/jumbo v16, "\u4e0b\u8f09\u5b8c\u6210"

    invoke-virtual/range {v14 .. v16}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 88
    iget-object v14, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v15, 0x7f0e013a

    const/16 v16, 0x64

    const/16 v17, 0x64

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 89
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/novel/reader/service/DownloadService;->nm:Landroid/app/NotificationManager;

    const/16 v15, 0x2a83

    invoke-virtual {v14, v15, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 90
    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v14, Lcom/novel/reader/service/DownloadService;->articles:Ljava/util/ArrayList;

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 93
    .local v8, "nowTime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/novel/reader/service/DownloadService;->startTime:J

    sub-long v14, v8, v14

    const-wide/16 v16, 0xfa0

    cmp-long v14, v14, v16

    if-ltz v14, :cond_0

    .line 96
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/novel/reader/service/DownloadService;->startTime:J

    .line 98
    add-int/lit8 v14, v4, 0x1

    int-to-float v14, v14

    sget-object v15, Lcom/novel/reader/service/DownloadService;->articles:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v14, v15

    float-to-int v3, v14

    .line 99
    .local v3, "downloadPercent":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Downloading: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%   "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v14, Lcom/novel/reader/service/DownloadService;->articles:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/novel/reader/entity/Article;

    invoke-virtual {v14}, Lcom/novel/reader/entity/Article;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, "title":Ljava/lang/CharSequence;
    iget-object v14, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v15, 0x7f0e0139

    invoke-virtual {v14, v15, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 101
    iget-object v14, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v15, 0x7f0e013a

    const/16 v16, 0x64

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v15, v0, v3, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/novel/reader/service/DownloadService;->nm:Landroid/app/NotificationManager;

    const/16 v15, 0x2a83

    invoke-virtual {v14, v15, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 107
    .end local v3    # "downloadPercent":I
    .end local v8    # "nowTime":J
    .end local v11    # "title":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 46
    const-string v0, "DownloadService"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0, p1, p2}, Landroid/app/IntentService;->onStart(Landroid/content/Intent;I)V

    .line 48
    return-void
.end method
