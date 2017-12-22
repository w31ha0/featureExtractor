.class public Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;
.super Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;
.source "MdxPostPlayerRemoteViews.java"


# instance fields
.field private headerTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V

    .line 18
    invoke-direct {p0, p4}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->setHeaderTitle(Landroid/content/Context;)V

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

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->headerTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private setPlayNextButton(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    const v1, 0x7f10023f

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const v0, 0x7f02021d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getPlayNextIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getPlayNextIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setPostplayButtons(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->setPlayNextButton(Landroid/widget/RemoteViews;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->setStopButton(Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method private setStopButton(Landroid/widget/RemoteViews;)V
    .locals 2

    .prologue
    const v1, 0x7f100240

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const v0, 0x7f02021f

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mIntentRetriever:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;->getStopIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method protected createViewForEpisodes(Z)Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 39
    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f03009b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->mPackageName:Ljava/lang/String;

    const v2, 0x7f03009c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->headerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setState(ZZ)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method protected updateControlAsActive(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->setPostplayButtons(Landroid/widget/RemoteViews;)V

    .line 55
    return-void
.end method

.method protected updateControlsAsInactive(Landroid/widget/RemoteViews;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;->setPostplayButtons(Landroid/widget/RemoteViews;)V

    .line 48
    return-void
.end method
