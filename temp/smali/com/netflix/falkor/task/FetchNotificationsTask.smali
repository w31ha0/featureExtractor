.class public Lcom/netflix/falkor/task/FetchNotificationsTask;
.super Lcom/netflix/falkor/task/CmpTask;
.source "FetchNotificationsTask.java"


# static fields
.field private static final IN_QUEUE_FIELD:Ljava/lang/String; = "inQueue"

.field private static final NOTIFICATIONS_LIST_FIELD:Ljava/lang/String; = "notificationsList"

.field private static final NOTIFICATION_VIDEO_FIELD:Ljava/lang/String; = "notificationVideo"

.field private static final SUMMARY_FIELD:Ljava/lang/String; = "summary"

.field private static final TV_CARD_IMAGE_URL:Ljava/lang/String; = "tvCardArt"


# instance fields
.field private final fromIndex:I

.field private notificationsListSummaryPql:Lcom/netflix/falkor/PQL;

.field private final notificationsSummaryPql:Lcom/netflix/falkor/PQL;

.field private notificationsVideoSummaryPql:Lcom/netflix/falkor/PQL;

.field private oldNotificationsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorIrisNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final skipCache:Z

.field private final toIndex:I


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/CachedModelProxy;IIZLcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0, p1, p5}, Lcom/netflix/falkor/task/CmpTask;-><init>(Lcom/netflix/falkor/CachedModelProxy;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    .line 38
    iput p2, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->fromIndex:I

    .line 39
    iput p3, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->toIndex:I

    .line 40
    iput-boolean p4, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->skipCache:Z

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "notificationsList"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->notificationsSummaryPql:Lcom/netflix/falkor/PQL;

    .line 46
    if-eqz p4, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->notificationsSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->oldNotificationsList:Ljava/util/List;

    .line 49
    :cond_0
    return-void
.end method

.method private clearFalkorCacheOfExistingNotifications()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "notificationsList"

    aput-object v1, v0, v5

    iget v1, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->toIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->toIndex:I

    iget v3, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->toIndex:I

    iget v4, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->fromIndex:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    .line 134
    invoke-static {v1, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v7

    .line 133
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 141
    iget v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->toIndex:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v2, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->toIndex:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 142
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "notificationsList"

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    .line 143
    iget-object v3, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-virtual {v3, v2}, Lcom/netflix/falkor/CachedModelProxy;->invalidate(Lcom/netflix/falkor/PQL;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method private notificationsListValid(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/model/branches/FalkorIrisNotification;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->oldNotificationsList:Ljava/util/List;

    if-nez v0, :cond_1

    move v2, v3

    .line 122
    :cond_0
    :goto_0
    return v2

    .line 107
    :cond_1
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->oldNotificationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    move v2, v3

    .line 112
    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->oldNotificationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorIrisNotification;

    .line 117
    iget-object v0, v0, Lcom/netflix/model/branches/FalkorIrisNotification;->summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/branches/FalkorIrisNotification;

    iget-object v0, v0, Lcom/netflix/model/branches/FalkorIrisNotification;->summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 121
    goto :goto_1

    :cond_3
    move v2, v3

    .line 122
    goto :goto_0
.end method


# virtual methods
.method protected buildPqlList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "notificationsList"

    aput-object v1, v0, v3

    iget v1, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->fromIndex:I

    iget v2, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->toIndex:I

    .line 70
    invoke-static {v1, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "notificationVideo"

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v3

    const-string/jumbo v2, "inQueue"

    aput-object v2, v1, v4

    const-string/jumbo v2, "tvCardArt"

    aput-object v2, v1, v5

    .line 71
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v6

    .line 69
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->notificationsVideoSummaryPql:Lcom/netflix/falkor/PQL;

    .line 73
    new-array v0, v5, [Ljava/lang/Object;

    const-string/jumbo v1, "notificationsList"

    aput-object v1, v0, v3

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->notificationsListSummaryPql:Lcom/netflix/falkor/PQL;

    .line 75
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->notificationsSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->notificationsVideoSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->notificationsListSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method protected callbackForFailure(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 95
    return-void
.end method

.method public bridge synthetic executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/netflix/falkor/task/CmpTask;->executeRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)V

    return-void
.end method

.method protected fetchResultsAndCallbackForSuccess(Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;Lcom/netflix/falkor/CachedModelProxy$GetResult;)V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v1, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->notificationsSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/CachedModelProxy;->getItemsAsList(Lcom/netflix/falkor/PQL;)Ljava/util/List;

    move-result-object v1

    .line 84
    iget-boolean v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->skipCache:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/netflix/falkor/task/FetchNotificationsTask;->notificationsListValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/netflix/falkor/task/FetchNotificationsTask;->clearFalkorCacheOfExistingNotifications()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    iget-object v2, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->notificationsListSummaryPql:Lcom/netflix/falkor/PQL;

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/CachedModelProxy;->getValue(Lcom/netflix/falkor/PQL;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    .line 89
    new-instance v2, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;

    iget-object v3, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->modelProxy:Lcom/netflix/falkor/CachedModelProxy;

    invoke-direct {v2, v0, v1, v3}, Lcom/netflix/model/leafs/social/IrisNotificationsListImpl;-><init>(Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Ljava/util/List;Lcom/netflix/falkor/ModelProxy;)V

    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v2, v0}, Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;->onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 90
    return-void
.end method

.method public getPriorityOverride()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected shouldCollapseMissingPql(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldSkipCache()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/netflix/falkor/task/FetchNotificationsTask;->skipCache:Z

    return v0
.end method
