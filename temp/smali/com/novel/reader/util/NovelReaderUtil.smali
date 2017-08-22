.class public Lcom/novel/reader/util/NovelReaderUtil;
.super Ljava/lang/Object;
.source "NovelReaderUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/novel/reader/util/NovelReaderUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/novel/reader/util/NovelReaderUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dailyCollectNovelsAlarmSetup(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x7b

    const/4 v1, 0x0

    .line 48
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/novel/reader/service/CollectNovelsService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x20000000

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v7, 0x1

    .line 52
    .local v7, "alarmUp":Z
    :goto_0
    if-nez v7, :cond_0

    .line 53
    const-string v2, "keyCollectNotificationRandomNum"

    invoke-static {v2, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v9

    .line 54
    .local v9, "random":I
    const-string v2, "keyCollectNotificationRandomNum"

    invoke-static {v2, v9, p0}, Lcom/novel/reader/util/Setting;->saveSetting(Ljava/lang/String;ILandroid/content/Context;)V

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 57
    .local v8, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    const/16 v3, 0x8

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 58
    const/16 v2, 0xc

    invoke-virtual {v8, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 59
    const/16 v2, 0xd

    invoke-virtual {v8, v2, v9}, Ljava/util/Calendar;->set(II)V

    .line 60
    const/16 v2, 0xe

    invoke-virtual {v8, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 62
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/novel/reader/service/CollectNovelsService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x8000000

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 64
    .local v6, "pi":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 65
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 66
    sget-object v1, Lcom/novel/reader/util/NovelReaderUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "AlarmSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v8    # "calendar":Ljava/util/Calendar;
    .end local v9    # "random":I
    :cond_0
    return-void

    .end local v7    # "alarmUp":Z
    :cond_1
    move v7, v1

    .line 48
    goto :goto_0
.end method

.method public static isDisplayDefaultBookCover(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.bestory.com/pics/0.jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 72
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 73
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v2, 0x0

    .line 32
    .local v2, "retrun_string":Ljava/lang/String;
    const-string v3, "TextLanguage"

    invoke-static {v3, p0}, Lcom/novel/reader/util/Setting;->getSettingInt(Ljava/lang/String;Landroid/content/Context;)I

    move-result v1

    .line 33
    .local v1, "local":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 35
    :try_start_0
    invoke-static {}, Ltaobe/tec/jcc/JChineseConvertor;->getInstance()Ltaobe/tec/jcc/JChineseConvertor;

    move-result-object v3

    invoke-virtual {v3, p1}, Ltaobe/tec/jcc/JChineseConvertor;->t2s(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 43
    :goto_0
    return-object v2

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/IOException;
    move-object v2, p1

    .line 38
    goto :goto_0

    .line 40
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    move-object v2, p1

    goto :goto_0
.end method
