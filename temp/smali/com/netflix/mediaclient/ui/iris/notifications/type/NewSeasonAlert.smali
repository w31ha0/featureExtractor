.class public Lcom/netflix/mediaclient/ui/iris/notifications/type/NewSeasonAlert;
.super Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;
.source "NewSeasonAlert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;-><init>()V

    return-void
.end method


# virtual methods
.method protected addNotificationText(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BigPictureStyle;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public getAddToMyListButton(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationType()Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;->NEW_SEASON_ALERT:Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    return-object v0
.end method

.method public getPlayMovieButton(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;)Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    return-object v0
.end method

.method public initView(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 36
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    .line 37
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMovieArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    .line 40
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getHeaderText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTopTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTopTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getFriendImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getFriendImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getUnreadIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getUnreadIndicator()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v7

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMovieArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 58
    invoke-static {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getTVCardUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getImageAltText()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 62
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getBottomTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getBottomTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTimeStampView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getShowTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTimeStampView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTimeStampView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getTimestamp()J

    move-result-wide v2

    invoke-static {p3, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_4
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 76
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAPlayButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 77
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAPlayButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_6
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getBodyText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_7
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 88
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 90
    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 91
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :cond_9
    return-void

    :cond_a
    move v0, v8

    .line 52
    goto/16 :goto_0
.end method

.method public supportsStatusBar()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method
