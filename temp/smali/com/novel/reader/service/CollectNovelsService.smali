.class public Lcom/novel/reader/service/CollectNovelsService;
.super Landroid/app/IntentService;
.source "CollectNovelsService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "CollectNovelsService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private createCollectNovelNotification(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/novel/reader/service/CollectNovelsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/novel/reader/service/CollectNovelsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    const-class v16, Lcom/novel/reader/MyNovelActivity;

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v15, 0x48000000    # 131072.0f

    invoke-static {v12, v13, v14, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 71
    .local v11, "viewPendingIntent":Landroid/app/PendingIntent;
    const-string v2, ""

    .line 72
    .local v2, "content":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v3, v12, :cond_1

    .line 73
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ne v3, v12, :cond_0

    .line 74
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v12}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/novel/reader/entity/Novel;

    invoke-virtual {v12}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "),"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/novel/reader/service/CollectNovelsService;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070053

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "strFormat":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, "ticker":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/novel/reader/service/CollectNovelsService;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070054

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 83
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 85
    .local v10, "title":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/novel/reader/service/CollectNovelsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02005a

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 86
    .local v4, "iconBitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x2

    invoke-static {v12}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 87
    .local v1, "alarmSound":Landroid/net/Uri;
    new-instance v12, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0200a3

    .line 89
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 90
    invoke-virtual {v12, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    new-instance v13, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v13}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 91
    invoke-virtual {v13, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 92
    invoke-virtual {v12, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 93
    invoke-virtual {v12, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 94
    invoke-virtual {v12, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 95
    invoke-virtual {v12, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 96
    invoke-virtual {v12, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x1

    .line 97
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 100
    .local v5, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static/range {p0 .. p0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v7

    .line 102
    .local v7, "notificationManager":Landroid/support/v4/app/NotificationManagerCompat;
    const/4 v6, 0x2

    .line 103
    .local v6, "notificationId":I
    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    invoke-virtual {v7, v6, v12}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 104
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/novel/reader/service/CollectNovelsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/novel/reader/util/NovelReaderUtil;->dailyCollectNovelsAlarmSetup(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/novel/reader/service/CollectNovelsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/novel/reader/api/NovelAPI;->getCollectedNovels(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 41
    .local v5, "novels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-static {v5}, Lcom/novel/reader/api/NovelAPI;->getCollectNovelsInfoFromServer(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 45
    .local v6, "novelsFromServer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    if-eqz v6, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/novel/reader/service/CollectNovelsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/novel/reader/api/NovelAPI;->updateNovelsInfo(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v3, "hasNewArticleNovel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Novel;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/novel/reader/entity/Novel;

    .line 51
    .local v4, "novel":Lcom/novel/reader/entity/Novel;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "yy-MM-dd"

    invoke-direct {v1, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v4}, Lcom/novel/reader/entity/Novel;->getLastUpdate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 54
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v4}, Lcom/novel/reader/entity/Novel;->getLastViewDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 55
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1

    .line 62
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v4    # "novel":Lcom/novel/reader/entity/Novel;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 63
    invoke-direct {p0, v3}, Lcom/novel/reader/service/CollectNovelsService;->createCollectNovelNotification(Ljava/util/ArrayList;)V

    goto :goto_0
.end method
