.class public final Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;
.super Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;
.source "MdxPlayerRemoteViews.java"


# static fields
.field private static final SKIPBACK_SECONDS:I = -0x1e


# instance fields
.field private headerTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->setHeaderTitle(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method private setHeaderTitle(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->headerTitle:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected createViewForEpisodes(Z)Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 85
    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f03009a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f030099

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->headerTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected setSkipActive(Landroid/widget/RemoteViews;)V
    .locals 3

    .prologue
    const v2, 0x7f10023e

    .line 63
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const v0, 0x7f020219

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    const/16 v1, -0x1e

    .line 71
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getSkipbackIntent(I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 69
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected setSkipInactive(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    const v1, 0x7f10023e

    .line 75
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-nez v0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const v0, 0x7f02021a

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getNoActionIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public setState(ZZ)V
    .locals 1

    .prologue
    .line 32
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mInTransition:Z

    .line 33
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mPaused:Z

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mNormalRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->updateControl(Landroid/widget/RemoteViews;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->mExpandedRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->updateControl(Landroid/widget/RemoteViews;)V

    .line 42
    :cond_1
    return-void
.end method

.method protected updateControlAsActive(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateControlAsActive(Landroid/widget/RemoteViews;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->setSkipActive(Landroid/widget/RemoteViews;)V

    .line 60
    return-void
.end method

.method protected updateControlsAsInactive(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->updateControlsAsInactive(Landroid/widget/RemoteViews;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;->setSkipInactive(Landroid/widget/RemoteViews;)V

    .line 54
    return-void
.end method
