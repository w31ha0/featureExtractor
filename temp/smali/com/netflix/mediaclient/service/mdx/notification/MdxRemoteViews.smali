.class public abstract Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;
.super Ljava/lang/Object;
.source "MdxRemoteViews.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdxnotification"


# instance fields
.field protected mBoxart:Landroid/graphics/Bitmap;

.field protected mExpandedRemoteView:Landroid/widget/RemoteViews;

.field protected mInTransition:Z

.field protected final mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

.field protected mIsEpisode:Z

.field protected mMainTitle:Ljava/lang/String;

.field protected mNormalRemoteView:Landroid/widget/RemoteViews;

.field protected final mPackageName:Ljava/lang/String;

.field protected mPaused:Z

.field protected mSubTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPackageName:Ljava/lang/String;

    .line 41
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIsEpisode:Z

    .line 42
    return-void
.end method

.method private createRemoteView(Z)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIsEpisode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createViewForEpisodes(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 103
    :goto_0
    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateBoxart(Landroid/widget/RemoteViews;)V

    .line 105
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateTitles(Landroid/widget/RemoteViews;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateControl(Landroid/widget/RemoteViews;)V

    .line 109
    :cond_0
    return-object v0

    .line 101
    :cond_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createViewsForMovies(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method private createViewsForMovies(Z)Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f03009e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f03009d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateBoxart(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mBoxart:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const v0, 0x7f10023b

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mBoxart:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private updateTitles(Landroid/widget/RemoteViews;)V
    .locals 4

    .prologue
    const v3, 0x7f100242

    const v2, 0x7f10023d

    const v1, 0x7f10023c

    .line 130
    if-nez p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mMainTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mMainTitle:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 140
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 146
    :goto_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIsEpisode:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mSubTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mSubTitle:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :cond_3
    const-string/jumbo v0, ""

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 150
    :cond_4
    const-string/jumbo v0, ""

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createViewForEpisodes(Z)Landroid/widget/RemoteViews;
.end method

.method protected abstract getHeader()Ljava/lang/String;
.end method

.method public getRemoteView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createRemoteView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getRemoteViewBigContetnt()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createRemoteView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public setBoxart(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 81
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string/jumbo v0, "nf_mdxnotification"

    const-string/jumbo v1, "MdxRemoteViewManager:setBoxart"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mBoxart:Landroid/graphics/Bitmap;

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateBoxart(Landroid/widget/RemoteViews;)V

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateBoxart(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method protected setPauseActive(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    const v1, 0x7f10023f

    .line 214
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    const v0, 0x7f02021b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getPauseIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setPauseInactive(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    const v1, 0x7f10023f

    .line 241
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const v0, 0x7f02021c

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getNoActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setPlayActiveWithGetNext(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    const v1, 0x7f10023f

    .line 232
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const v0, 0x7f02021d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 237
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getPlayNextIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setPlayActiveWithResume(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    const v1, 0x7f10023f

    .line 223
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const v0, 0x7f02021d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getResumeIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setPlayInactive(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    const v1, 0x7f10023f

    .line 250
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const v0, 0x7f02021e

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getNoActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public abstract setState(ZZ)V
.end method

.method protected setStopActive(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    const v1, 0x7f100240

    .line 196
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const v0, 0x7f02021f

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setStopInactive(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    const v1, 0x7f100240

    .line 205
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const v0, 0x7f020220

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getNoActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setTitles(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIsEpisode:Z

    if-eq v0, p1, :cond_0

    .line 61
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mIsEpisode:Z

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createRemoteView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->createRemoteView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    .line 68
    :cond_0
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mMainTitle:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mSubTitle:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateTitles(Landroid/widget/RemoteViews;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateTitles(Landroid/widget/RemoteViews;)V

    .line 77
    :cond_2
    return-void
.end method

.method protected updateControl(Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 165
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mInTransition:Z

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateControlAsActive(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateControlsAsInactive(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method protected updateControlAsActive(Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setStopActive(Landroid/widget/RemoteViews;)V

    .line 188
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPaused:Z

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setPlayActiveWithResume(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setPauseActive(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method protected updateControlsAsInactive(Landroid/widget/RemoteViews;)V
    .locals 1

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setStopInactive(Landroid/widget/RemoteViews;)V

    .line 174
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->mPaused:Z

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setPlayInactive(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setPauseInactive(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method
