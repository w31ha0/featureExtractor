.class public abstract Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;
.super Ljava/lang/Object;
.source "BaseNotification.java"


# static fields
.field private static final NOTIFICATIONS_GROUP:Ljava/lang/String; = "iris_notifications"

.field public static final TAG:Ljava/lang/String;

.field private static mLastSocialNotificationIdSentToStatusBar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->mLastSocialNotificationIdSentToStatusBar:Ljava/lang/String;

    return-object p0
.end method

.method public static final getViewHolder(Landroid/view/View;Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;)Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;

    const v2, 0x7f10021b

    .line 81
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v3, 0x7f10021a

    .line 82
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f100218

    .line 83
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f100219

    .line 84
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f100217

    .line 86
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const v6, 0x7f100216

    .line 87
    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    invoke-direct/range {v0 .. v12}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;-><init>(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Landroid/view/View;)V

    .line 79
    return-object v0
.end method

.method public static showSingleLineText(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;I)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 165
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMovieArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTopTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getFriendImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getFriendImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getBottomTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getBottomTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTimeStampView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTimeStampView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 180
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAPlayButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 183
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAPlayButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 186
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_6
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 189
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 192
    return-void
.end method


# virtual methods
.method protected addNotificationActions(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 323
    const/4 v0, 0x3

    .line 324
    invoke-static {p4}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->getIntent(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)Landroid/content/Intent;

    move-result-object v1

    .line 325
    invoke-static {v1}, Lcom/netflix/mediaclient/util/NotificationUtils;->addNotificationSourceToIntent(Landroid/content/Intent;)V

    .line 326
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 327
    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 328
    return-void
.end method

.method protected abstract addNotificationText(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BigPictureStyle;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Landroid/content/Context;)V
.end method

.method public getAddToMyListButton(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNotificationType()Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;
.end method

.method public getPlayMovieButton(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;)Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMovieArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    return-object v0
.end method

.method public initView(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 97
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getUnreadIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getUnreadIndicator()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getFriendImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getFriendImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 104
    invoke-static {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getFriendImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getBigImageUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->profileAvatar:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 106
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getFullName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 104
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 111
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMovieArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 112
    invoke-static {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMovieArtImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v1

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getTVCardUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 114
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 112
    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V

    .line 117
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTopTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTopTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getMiddleTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 125
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getBottomTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getMessageString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getMessageString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 127
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getBottomTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTimeStampView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 136
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTimeStampView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getTimeStampView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getTimestamp()J

    move-result-wide v2

    invoke-static {p3, v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_5
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAPlayButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 142
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getNSAPlayButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 145
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getPlayButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :cond_7
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 150
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    :cond_8
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 153
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 155
    :cond_9
    return-void

    :cond_a
    move v0, v7

    .line 98
    goto/16 :goto_0

    .line 129
    :cond_b
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getBottomTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationViewHolder;->getBottomTextView()Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "\"%s\""

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getMessageString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final sendNotificationToStatusbar(Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Lcom/netflix/mediaclient/util/gfx/ImageLoader;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 271
    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification$1;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;Lcom/netflix/mediaclient/util/gfx/ImageLoader;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Landroid/content/Context;)V

    .line 286
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v1

    .line 289
    sget-object v2, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->mLastSocialNotificationIdSentToStatusBar:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->mLastSocialNotificationIdSentToStatusBar:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Notification with such id was already shown - skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_0
    return-void

    .line 295
    :cond_0
    const-string/jumbo v2, "notification_id_deleted_from_statusbar"

    const-string/jumbo v3, "-1"

    invoke-static {p5, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Notification with such id was swiped out by user - skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getFriendProfile()Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/FriendProfile;->getBigImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 305
    :cond_2
    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->profileAvatar:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    move-object v1, p3

    move v4, v7

    move v5, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    goto :goto_0
.end method

.method public supportsStatusBar()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method
