.class public Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "NotificationsFrag.java"


# static fields
.field private static final BUNDLE_EXTRA_HAS_LOAD_MORE:Ljava/lang/String; = "has_load_more_list"

.field private static final BUNDLE_EXTRA_NOTIFICATIONS_LIST:Ljava/lang/String; = "notifications_list"

.field private static final BUNDLE_EXTRA_NOTIFICATIONS_LIST_TO_BE_READ:Ljava/lang/String; = "notifications_list_to_be_read"

.field private static final BUNDLE_EXTRA_NOTIFICATIONS_WERE_FETCHED:Ljava/lang/String; = "were_notifications_fetched"

.field private static final BUNDLE_EXTRA_NOTIFICATIONS_WERE_FOUND:Ljava/lang/String; = "are_there_noitifcations"

.field private static final BUNDLE_EXTRA_NOTIFICATION_LIST_STATUS:Ljava/lang/String; = "notification_list_status"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

.field private mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

.field protected mAreNotificationsPresent:Z

.field private mAreReceiversRegistered:Z

.field private mAreViewsCreated:Z

.field private mIsLoadingData:Z

.field private mListener:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;

.field private mLoadMoreAvailable:Z

.field private mNetworkErrorOccured:Z

.field protected mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

.field protected mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

.field private final mNotificationsToBeRead:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationSummary;",
            ">;"
        }
    .end annotation
.end field

.field private mWasRefreshForTopViewScheduled:Z

.field private mWereNotificationsFetched:Z

.field protected notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

.field private final socialNotificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mLoadMoreAvailable:Z

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsToBeRead:Ljava/util/Set;

    .line 81
    sget-object v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;->NO_MESSAGES:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    .line 219
    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->errorCallback:Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;

    .line 712
    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$7;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->socialNotificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWereNotificationsFetched:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationSummary;ILcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->buildClickListenerForDeeplinkUrl(Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationSummary;ILcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWereNotificationsFetched:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->buildClickListener(Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->reportNotificationsClick(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/model/leafs/social/IrisNotificationSummary;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->reportNotificationsClick(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/model/leafs/social/IrisNotificationSummary;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->checkForNetworkError(Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1602(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mLoadMoreAvailable:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNetworkErrorOccured:Z

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->areMoreNotificationsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->loadMoreNotifications()V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsToBeRead:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWasRefreshForTopViewScheduled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWasRefreshForTopViewScheduled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->fetchNotificationsList(Z)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getPlaybackListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method private areMoreNotificationsAvailable()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->canLoadMultiplePages()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mLoadMoreAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildClickListener(Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 542
    if-nez p1, :cond_0

    .line 543
    const-string/jumbo v0, "SPY-8161 - Got null target value"

    .line 544
    sget-object v2, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getDisplayListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    .line 549
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SPY-8161 - Got unsupported target value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    sget-object v2, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getDisplayListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    goto :goto_0

    .line 549
    :sswitch_0
    const-string/jumbo v3, "PLAYBACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "DISPLAY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 551
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getPlaybackListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    goto :goto_0

    .line 554
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getDisplayListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    goto :goto_0

    .line 549
    nop

    :sswitch_data_0
    .sparse-switch
        -0x718f5b5e -> :sswitch_1
        -0x615839e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private buildClickListenerForDeeplinkUrl(Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationSummary;ILcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View$OnClickListener;
    .locals 6

    .prologue
    .line 525
    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;I)V

    return-object v0
.end method

.method private checkForNetworkError(Lcom/netflix/mediaclient/android/app/Status;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 692
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    .line 694
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->NETWORK_ERROR:Lcom/netflix/mediaclient/StatusCode;

    if-ne v2, v3, :cond_1

    .line 696
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNetworkErrorOccured:Z

    .line 697
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    if-eqz v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkForNetworkError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNetworkErrorOccured:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->notifyDataSetChanged(Ljava/lang/String;)V

    .line 706
    :cond_0
    :goto_0
    return v0

    .line 704
    :cond_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNetworkErrorOccured:Z

    move v0, v1

    .line 706
    goto :goto_0
.end method

.method private completeInitIfPossible()V
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreViewsCreated:Z

    if-nez v0, :cond_0

    .line 237
    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Can\'t complete init - views not created"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 242
    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Can\'t complete init - manager not ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-nez v0, :cond_2

    .line 250
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->fetchNotificationsList(Z)V

    goto :goto_0

    .line 252
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    const-string/jumbo v1, "completeInitIfPossible"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->notifyDataSetChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fetchNotificationsList(Z)V
    .locals 6

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_0

    .line 619
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    .line 620
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNumNotificationsPerPage()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    new-instance v4, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$5;

    sget-object v5, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    invoke-direct {v4, p0, v5, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$5;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchNotificationsList(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 647
    :cond_0
    return-void
.end method

.method private getDisplayListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;
    .locals 8

    .prologue
    .line 473
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoId()Ljava/lang/String;

    move-result-object v6

    .line 474
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v5

    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotificationsListSummary()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    move-result-object v4

    .line 476
    invoke-virtual {v4}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getRequestId()Ljava/lang/String;

    move-result-object v3

    .line 478
    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;I)V

    return-object v0
.end method

.method private getModelObject(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 510
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 512
    :try_start_0
    const-string/jumbo v0, "position"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 513
    const-string/jumbo v0, "trackId"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotificationsListSummary()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getBaseTrackId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 514
    const-string/jumbo v0, "messageGuid"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    const-string/jumbo v0, "titleId"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :goto_0
    return-object v1

    .line 516
    :catch_0
    move-exception v0

    .line 517
    sget-object v2, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getModelObject() got an exception"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private getPlaybackListener(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Landroid/view/View$OnClickListener;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoId()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-virtual {p1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v4

    .line 458
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotificationsListSummary()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 460
    new-instance v3, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getPlayerTrackId()I

    move-result v0

    invoke-direct {v3, v1, v0, v5, v5}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 462
    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)V

    return-object v0
.end method

.method private getVisibleNotificationsNumber()I
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNumNotificationsPerPage()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNumNotificationsPerPage()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private loadMoreNotifications()V
    .locals 5

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 659
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    .line 660
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    .line 661
    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNumNotificationsPerPage()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    new-instance v3, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;

    sget-object v4, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;)V

    .line 660
    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchNotificationsList(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 683
    :cond_0
    return-void
.end method

.method private playVideo(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 1

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p3, p2}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;

    move-result-object v0

    .line 607
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->startActivity(Landroid/content/Intent;)V

    .line 608
    return-void
.end method

.method private refreshNotificationMyListButtons()V
    .locals 5

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 582
    if-eqz v1, :cond_1

    .line 584
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getFirstVisiblePosition()I

    move-result v0

    .line 585
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getLastVisiblePosition()I

    move-result v2

    .line 587
    :goto_0
    if-gt v0, v2, :cond_1

    .line 588
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->getItem(I)Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 589
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAdapter:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->getItem(I)Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    move-result-object v3

    .line 590
    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getInQueueValue()Z

    move-result v3

    invoke-virtual {v1, v4, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->updateMyListState(Ljava/lang/String;Z)V

    .line 587
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_1
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 731
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreReceiversRegistered:Z

    if-nez v0, :cond_0

    .line 732
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreReceiversRegistered:Z

    .line 733
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->socialNotificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.BA_IRIS_NOTIFICATION_LIST_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 737
    :cond_0
    return-void
.end method

.method private reportNotificationsClick(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)V
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->reportNotificationsClick(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/model/leafs/social/IrisNotificationSummary;ILjava/lang/String;)V

    .line 501
    return-void
.end method

.method private reportNotificationsClick(Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/model/leafs/social/IrisNotificationSummary;ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 504
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getModelObject(Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)Lorg/json/JSONObject;

    move-result-object v5

    .line 505
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->menuPanel:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 506
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 507
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreReceiversRegistered:Z

    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->socialNotificationsListUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 743
    :cond_0
    return-void
.end method


# virtual methods
.method public areNotificationsPresent()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    return v0
.end method

.method protected canLoadMultiplePages()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method protected computeRowCount()I
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->areMoreNotificationsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNumNotificationsPerPage()I
    .locals 1

    .prologue
    .line 650
    const/16 v0, 0x8

    return v0
.end method

.method protected getRowLayoutResourceId()I
    .locals 1

    .prologue
    .line 574
    const v0, 0x7f030083

    return v0
.end method

.method protected isListViewStatic()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    return v0
.end method

.method public markNotificationsAsRead()V
    .locals 5

    .prologue
    .line 280
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getVisibleNotificationsNumber()I

    move-result v3

    .line 283
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    .line 285
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 290
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->markNotificationsAsRead(Ljava/util/List;)V

    .line 296
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onAttach(Landroid/app/Activity;)V

    .line 169
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->registerReceivers()V

    .line 170
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onCreate(Landroid/os/Bundle;)V

    .line 96
    if-eqz p1, :cond_0

    const-string/jumbo v0, "notifications_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "has_load_more_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mLoadMoreAvailable:Z

    .line 98
    const-string/jumbo v0, "notifications_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    .line 99
    const-string/jumbo v0, "notifications_list_to_be_read"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsToBeRead:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IrisUtils;->castArrayToSet([Landroid/os/Parcelable;Ljava/util/Set;)V

    .line 101
    const-string/jumbo v0, "were_notifications_fetched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWereNotificationsFetched:Z

    .line 102
    const-string/jumbo v0, "are_there_noitifcations"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    .line 103
    const-string/jumbo v0, "notification_list_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->refreshNotificationsListStatus()V

    .line 106
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 110
    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Creating new frag view..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreViewsCreated:Z

    .line 113
    const v0, 0x7f0300fb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 114
    const v0, 0x7f100370

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/StaticListView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setItemsCanFocus(Z)V

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsList:Lcom/netflix/mediaclient/android/widget/StaticListView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->isListViewStatic()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/StaticListView;->setAsStatic(Z)V

    .line 118
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mIsLoadingData:Z

    .line 120
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->completeInitIfPossible()V

    .line 122
    return-object v1
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onDetach()V

    .line 175
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->unregisterReceivers()V

    .line 176
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 128
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->shouldWaitForTTIComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->completeInitIfPossible()V

    .line 131
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onPause()V

    .line 213
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->refreshNotificationMyListButtons()V

    .line 182
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v0, "has_load_more_list"

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->areMoreNotificationsAvailable()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    const-string/jumbo v0, "notifications_list"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getParcelable()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    const-string/jumbo v1, "notifications_list_to_be_read"

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsToBeRead:Ljava/util/Set;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotificationsToBeRead:Ljava/util/Set;

    .line 147
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 146
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 148
    const-string/jumbo v0, "were_notifications_fetched"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mWereNotificationsFetched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    const-string/jumbo v0, "notification_list_status"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->notificationsListStatus:Lcom/netflix/mediaclient/util/IrisUtils$NotificationsListStatus;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 151
    :cond_0
    const-string/jumbo v0, "are_there_noitifcations"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    return-void
.end method

.method public onTTIComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onTTIComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 136
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->completeInitIfPossible()V

    .line 137
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->fetchNotificationsList(Z)V

    .line 217
    return-void
.end method

.method refreshNotificationsListStatus()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    .line 271
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mListener:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mListener:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mAreNotificationsPresent:Z

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;->onNotificationsListUpdated(Z)V

    .line 274
    :cond_0
    return-void

    .line 269
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportNotificationsImpression(Z)V
    .locals 5

    .prologue
    .line 190
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getVisibleNotificationsNumber()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    .line 193
    if-eqz p1, :cond_0

    .line 194
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 196
    :try_start_0
    const-string/jumbo v3, "position"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 197
    const-string/jumbo v3, "isRead"

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 198
    const-string/jumbo v3, "messageGuid"

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string/jumbo v3, "titleId"

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportNotificationImpressionStarted(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportNotificationImpressionEnded(Landroid/content/Context;Z)V

    goto :goto_1

    .line 208
    :cond_1
    return-void
.end method

.method public setNotificationsListStatusListener(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mListener:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListStatusListener;

    .line 90
    return-void
.end method

.method protected shouldShowPlayButtonFromNotifications()Z
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldWaitForTTIComplete()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method
