.class final Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;
.super Ljava/lang/Object;
.source "UserActionLoggingImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/UserActionLogging;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_log"

.field private static final excludedViewsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

.field private mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

.field private mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

.field private mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

.field private mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

.field private mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

.field private mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

.field private mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

.field private mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

.field private mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

.field private mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

.field private mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

.field private mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

.field private mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

.field private mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

.field private mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

.field private mRegisterForPushNotificationsSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;

.field private mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

.field private mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

.field private mSearchSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

.field private mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

.field private mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

.field private mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

.field private mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

.field private mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

.field private mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

.field private mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

.field private mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

.field private mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 123
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->movieDetails:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->excludedViewsSet:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/service/logging/EventHandler;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSearchSessions:Ljava/util/Map;

    .line 128
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    .line 129
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 130
    return-void
.end method

.method private handleAcknowledgeSignupEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1595
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1596
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    const-string/jumbo v3, "view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1602
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1609
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1610
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v2

    .line 1612
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1613
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1615
    :cond_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1616
    return-void

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1
.end method

.method private handleAcknowledgeSignupStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1581
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1583
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1584
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1586
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1588
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1589
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1591
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1592
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleAddProfileEnded(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 2158
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2159
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2160
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2162
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2163
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 2169
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2175
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2176
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2178
    :cond_0
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    const-string/jumbo v4, "profile_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "profile_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "profile_age"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "profile_is_kids"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 2179
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAddProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    .line 2180
    return-void

    .line 2170
    :catch_0
    move-exception v2

    .line 2171
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleAddProfileStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2143
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2145
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2146
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2148
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2150
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2151
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2153
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startAddProfileSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2154
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleAddToPlaylistEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1634
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1635
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1636
    const-string/jumbo v3, "title_rank"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1640
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1646
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1647
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1649
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;I)V

    .line 1650
    return-void

    .line 1641
    :catch_0
    move-exception v0

    .line 1642
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleAddToPlaylistStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1620
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1622
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1623
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1625
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1627
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1628
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1630
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1631
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleChangeValueEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1739
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1740
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1741
    const-string/jumbo v3, "new_value"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1745
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1751
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1752
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1754
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endChangeValueSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    .line 1755
    return-void

    .line 1746
    :catch_0
    move-exception v0

    .line 1747
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleChangeValueStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1725
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1727
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1728
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1730
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1732
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1733
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1735
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startChangeValueSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1736
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleCustomAction(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2411
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "CUSTOM_ACTION"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2415
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2417
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2418
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 2422
    :goto_0
    const-string/jumbo v2, "custom"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2423
    if-eqz v4, :cond_0

    .line 2425
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 2431
    :cond_0
    :goto_1
    invoke-virtual {p0, v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->reportCustomAction(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lorg/json/JSONObject;)V

    .line 2432
    return-void

    .line 2426
    :catch_0
    move-exception v2

    .line 2427
    const-string/jumbo v4, "handleCustomAction"

    invoke-static {v4, v2}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleDeleteProfileEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2200
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2201
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2202
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2204
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2205
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 2211
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2217
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2218
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2221
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endDeleteProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 2222
    return-void

    .line 2212
    :catch_0
    move-exception v2

    .line 2213
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleDeleteProfileStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2184
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2186
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2187
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2189
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2191
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2192
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2194
    :cond_0
    const-string/jumbo v2, "profile_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2195
    invoke-virtual {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startDeleteProfileSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2196
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleDeserializeLolomoEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2355
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2356
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2361
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2367
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2368
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2371
    :cond_0
    const-string/jumbo v2, "lolomoTtl"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2372
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    .line 2373
    return-void

    .line 2362
    :catch_0
    move-exception v0

    .line 2363
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleDeserializeLolomoStarted(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2341
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2343
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2344
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2346
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2348
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2349
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2351
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2352
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleEditProfileEnded(Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 2241
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2242
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2243
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2245
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2246
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 2252
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2258
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2259
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2262
    :cond_0
    new-instance v3, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;

    const-string/jumbo v4, "profile_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "profile_name"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "profile_age"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "profile_is_kids"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 2263
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endEditProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    .line 2264
    return-void

    .line 2253
    :catch_0
    move-exception v2

    .line 2254
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleEditProfileStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2226
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2228
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2229
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2231
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2233
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2234
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2236
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startEditProfileSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2237
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleLoginEnded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1772
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1773
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1777
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1783
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1784
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1786
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endLoginSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1787
    return-void

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleLoginStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1758
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1760
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1761
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1763
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1765
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1766
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1768
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startLoginSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1769
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleNavigationEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1806
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1807
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1810
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1812
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1813
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    move-object v2, v0

    .line 1817
    :goto_0
    :try_start_0
    invoke-static {v4}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1823
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1824
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1826
    :cond_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endNavigationSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1827
    return-void

    .line 1818
    :catch_0
    move-exception v0

    .line 1819
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method private handleNavigationStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1791
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1793
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1794
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1796
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1798
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1799
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1801
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startNavigationSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1802
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleNewLolomoEnded(Landroid/content/Intent;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 1471
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1472
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1473
    const-string/jumbo v3, "view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1474
    const-string/jumbo v3, "renoCause"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1475
    const-string/jumbo v3, "renoMessageGuid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1476
    const-string/jumbo v3, "renoCreationTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v3, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1477
    const-string/jumbo v3, "mercuryMessageGuid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1478
    const-string/jumbo v3, "mercuryEventGuid"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1483
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1490
    :goto_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1491
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1493
    :goto_1
    invoke-static {v10}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1494
    invoke-static {v10}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    :goto_2
    move-object v0, p0

    .line 1496
    invoke-virtual/range {v0 .. v9}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1497
    return-void

    .line 1484
    :catch_0
    move-exception v2

    .line 1485
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v11, "Failed JSON"

    invoke-static {v3, v11, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method private handleNewLolomoStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1457
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1459
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1460
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1462
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1464
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1465
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1467
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1468
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handlePostPlayEnded(Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    .line 1424
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "POSTPLAY_START_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1426
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1427
    const-string/jumbo v3, "view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1428
    const-string/jumbo v3, "wasAutoPlayCountdownInterrupted"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1429
    const-string/jumbo v3, "didUserContinueWatching"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1430
    const-string/jumbo v3, "chosenVideoId"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1431
    if-gez v3, :cond_0

    move-object v6, v0

    .line 1432
    :goto_0
    const-string/jumbo v3, "chosenIndex"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1433
    if-gez v3, :cond_1

    move-object v7, v0

    .line 1434
    :goto_1
    const-string/jumbo v3, "trackId"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 1439
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1446
    :goto_2
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1447
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1449
    :goto_3
    invoke-static {v9}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1450
    invoke-static {v9}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    :goto_4
    move-object v0, p0

    .line 1452
    invoke-virtual/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPostPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 1453
    return-void

    .line 1431
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 1433
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1

    .line 1440
    :catch_0
    move-exception v2

    .line 1441
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v10, "Failed JSON"

    invoke-static {v3, v10, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v0

    goto :goto_2

    :cond_2
    move-object v2, v0

    goto :goto_4

    :cond_3
    move-object v1, v0

    goto :goto_3
.end method

.method private handlePostPlayStart(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1409
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "POSTPLAY_START_START"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const-string/jumbo v0, "isAutoPlayCountdownEnabled"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1412
    const-string/jumbo v0, "lengthOfAutoPlayCountdown"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1413
    const-string/jumbo v0, "postPlayExperience"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1414
    const/4 v0, 0x0

    .line 1415
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1416
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    move-result-object v0

    .line 1419
    :cond_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startPostPlaySession(ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V

    .line 1420
    return-void
.end method

.method private handlePreAppWidgetActionEnded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2290
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2291
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2295
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2301
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2302
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2304
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 2305
    return-void

    .line 2296
    :catch_0
    move-exception v0

    .line 2297
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handlePreAppWidgetActionStart(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 2279
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2280
    const/4 v0, 0x0

    .line 2281
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2282
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2284
    :cond_0
    const-string/jumbo v1, "logData"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2285
    const-string/jumbo v2, "widgetActionData"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2286
    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    return-void
.end method

.method private handlePrefetchLolomoJobEnded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2322
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2323
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2328
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2334
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2335
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2337
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 2338
    return-void

    .line 2329
    :catch_0
    move-exception v0

    .line 2330
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handlePrefetchLolomoJobStarted(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2308
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2310
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2311
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2313
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2315
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2316
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2318
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2319
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleRateTitleEnded(Landroid/content/Intent;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/high16 v10, -0x80000000

    const/4 v0, 0x0

    .line 1844
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1845
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1846
    const-string/jumbo v3, "rating"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1847
    const-string/jumbo v3, "rank"

    invoke-virtual {p1, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1848
    const-string/jumbo v5, "rating_type"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1849
    const-string/jumbo v6, "score"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1850
    const-string/jumbo v7, "is_new"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 1855
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1861
    :goto_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1862
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1864
    :goto_1
    if-ne v3, v10, :cond_0

    move-object v3, v0

    :goto_2
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRateTitleSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;ILjava/lang/String;IZ)V

    .line 1865
    return-void

    .line 1856
    :catch_0
    move-exception v2

    .line 1857
    const-string/jumbo v8, "nf_log"

    const-string/jumbo v9, "Failed JSON"

    invoke-static {v8, v9, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    goto :goto_0

    .line 1864
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method private handleRateTitleStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1830
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1832
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1833
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1835
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1837
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1838
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1840
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startRateTitleSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1841
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleRegisterEnded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1882
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1883
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1887
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1893
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1894
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1896
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRegisterSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1897
    return-void

    .line 1888
    :catch_0
    move-exception v0

    .line 1889
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleRegisterForPushNotificationEnded(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 1383
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "REGISTER_FOR_PUSH_NOTIFICATION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1386
    const-string/jumbo v1, "error"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1387
    const-string/jumbo v1, "deviceToken"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1388
    const-string/jumbo v2, "userPushOptIn"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1389
    const-string/jumbo v3, "infoPushOptIn"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1394
    :try_start_0
    invoke-static {v5}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1400
    :goto_0
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1401
    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v4

    :goto_1
    move-object v0, p0

    .line 1404
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRegisterForPushNotifications(Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1405
    return-void

    .line 1395
    :catch_0
    move-exception v5

    .line 1396
    const-string/jumbo v6, "nf_log"

    const-string/jumbo v7, "Failed JSON"

    invoke-static {v6, v7, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v4, v0

    goto :goto_1
.end method

.method private handleRegisterForPushNotificationStarted(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1370
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "REGISTER_FOR_PUSH_NOTIFICATION_STARTED"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1373
    const/4 v0, 0x0

    .line 1374
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1375
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 1378
    :cond_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startRegisterForPushNotifications(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1379
    return-void
.end method

.method private handleRegisterStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1868
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1870
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1871
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1873
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1875
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1876
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1878
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startRegisterSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1879
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleRemoveFromPlaylistEnded(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1914
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1915
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1919
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1925
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1926
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1928
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1929
    return-void

    .line 1920
    :catch_0
    move-exception v0

    .line 1921
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleRemoveFromPlaylistStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1900
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1902
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1903
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1905
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1907
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1908
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1910
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1911
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSearchEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1948
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1949
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1950
    const-string/jumbo v3, "id"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1954
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1960
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1961
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1963
    :cond_0
    invoke-virtual {p0, v4, v5, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSearchSession(JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1964
    return-void

    .line 1955
    :catch_0
    move-exception v0

    .line 1956
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v6, "Failed JSON"

    invoke-static {v3, v6, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleSearchStart(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1932
    const-string/jumbo v1, "cmd"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1934
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1935
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v4

    .line 1937
    :goto_0
    const-string/jumbo v1, "term"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1938
    const-string/jumbo v1, "view"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1940
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1941
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v5

    .line 1943
    :goto_1
    const-string/jumbo v0, "id"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object v1, p0

    .line 1944
    invoke-virtual/range {v1 .. v6}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSearchSession(JLcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 1945
    return-void

    :cond_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v4, v0

    goto :goto_0
.end method

.method private handleSelectProfileEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2117
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2118
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2119
    const-string/jumbo v0, "view"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2121
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2122
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    .line 2128
    :goto_0
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2134
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2135
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2138
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSelectProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 2139
    return-void

    .line 2129
    :catch_0
    move-exception v2

    .line 2130
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSelectProfileStart(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2096
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2098
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2099
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2101
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2103
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2104
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    .line 2106
    :goto_1
    const-string/jumbo v3, "profile_id"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2108
    const-string/jumbo v4, "remember_profile"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2109
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2110
    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    move-result-object v1

    .line 2112
    :cond_0
    invoke-virtual {p0, v3, v1, v0, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSelectProfileSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2113
    return-void

    :cond_1
    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSerializeLolomoEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2390
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2391
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2396
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2402
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2403
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2405
    :cond_0
    const-string/jumbo v2, "lolomoFetchedTime"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2406
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    .line 2407
    return-void

    .line 2397
    :catch_0
    move-exception v0

    .line 2398
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed JSON"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleSerializeLolomoStarted(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2376
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2378
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2379
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2381
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2383
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2384
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2386
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2387
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleShareSheetEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1516
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1517
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1518
    const-string/jumbo v3, "view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1523
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1530
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1531
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v2

    .line 1533
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1534
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1536
    :cond_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endShareSheetSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1537
    return-void

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1
.end method

.method private handleShareSheetOpenEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1556
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1557
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1558
    const-string/jumbo v3, "view"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1563
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1570
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1571
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v2

    .line 1573
    :goto_1
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1574
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1576
    :cond_0
    invoke-virtual {p0, v2, v1, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endShareSheetOpenSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1577
    return-void

    .line 1564
    :catch_0
    move-exception v0

    .line 1565
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1
.end method

.method private handleShareSheetOpenStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1541
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1543
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1544
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1546
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1548
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1549
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1551
    :cond_0
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1552
    invoke-virtual {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startShareSheetOpenSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1553
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleShareSheetStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1501
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1503
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1504
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1506
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1508
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1509
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1511
    :cond_0
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1512
    invoke-virtual {p0, v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startShareSheetSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1513
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleStartPlayEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    const/4 v1, 0x0

    .line 1982
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1983
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1984
    const-string/jumbo v3, "rank"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1988
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1994
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1995
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v2

    .line 1997
    :goto_1
    if-ne v3, v6, :cond_0

    .line 1998
    :goto_2
    const-string/jumbo v3, "playerType"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1999
    const-string/jumbo v3, "playLocation"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2000
    invoke-static {v3}, Lcom/netflix/mediaclient/ui/common/PlayLocationType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/common/PlayLocationType;

    move-result-object v3

    .line 2001
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endStartPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 2002
    return-void

    .line 1989
    :catch_0
    move-exception v0

    .line 1990
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 1997
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_1
.end method

.method private handleStartPlayStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1968
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1970
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1971
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1973
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1975
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1976
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1978
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startStartPlaySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1979
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSubmitPaymentEnded(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 2020
    const-string/jumbo v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2021
    const-string/jumbo v2, "sucess"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2022
    const-string/jumbo v2, "error_code"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2023
    const-string/jumbo v2, "payment_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2024
    const-string/jumbo v2, "error"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2029
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2036
    :goto_0
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2037
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2039
    :goto_1
    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2040
    invoke-static {v4}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;

    move-result-object v4

    .line 2044
    :goto_2
    invoke-static {v6}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2046
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v0, p0

    .line 2051
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZLcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;Lorg/json/JSONObject;)V

    .line 2052
    return-void

    .line 2030
    :catch_0
    move-exception v2

    .line 2031
    const-string/jumbo v5, "nf_log"

    const-string/jumbo v7, "Failed JSON"

    invoke-static {v5, v7, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    goto :goto_0

    .line 2047
    :catch_1
    move-exception v5

    .line 2048
    const-string/jumbo v6, "nf_log"

    const-string/jumbo v7, "Failed JSON"

    invoke-static {v6, v7, v5}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v5, v0

    goto :goto_3

    :cond_1
    move-object v4, v0

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private handleSubmitPaymentStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2005
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2007
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2008
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2010
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2012
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2013
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 2015
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 2016
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSurveyEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1668
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1669
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1671
    const-string/jumbo v3, "surveyType"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1675
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1681
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1682
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1684
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSurveySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    .line 1685
    return-void

    .line 1676
    :catch_0
    move-exception v0

    .line 1677
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleSurveyQuestionEnded(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1703
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1704
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1706
    const-string/jumbo v3, "question"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1707
    const-string/jumbo v4, "response"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1711
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1717
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1718
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 1720
    :cond_0
    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    return-void

    .line 1712
    :catch_0
    move-exception v0

    .line 1713
    const-string/jumbo v5, "nf_log"

    const-string/jumbo v6, "Failed JSON"

    invoke-static {v5, v6, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleSurveyQuestionStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1689
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1691
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1692
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1694
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1696
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1697
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1699
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1700
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleSurveyStart(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1654
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1656
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1657
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 1659
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1661
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1662
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    .line 1664
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startSurveySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1665
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private handleUpgradeStreamsEnded(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2075
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2076
    const-string/jumbo v0, "error"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2077
    const-string/jumbo v3, "streams"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2079
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->find(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    move-result-object v3

    .line 2082
    :try_start_0
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2088
    :goto_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2089
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    .line 2091
    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V

    .line 2092
    return-void

    .line 2083
    :catch_0
    move-exception v0

    .line 2084
    const-string/jumbo v4, "nf_log"

    const-string/jumbo v5, "Failed JSON"

    invoke-static {v4, v5, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private handleUpgradeStreamsStart(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2056
    const-string/jumbo v0, "cmd"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2058
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2059
    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v0

    .line 2061
    :goto_0
    const-string/jumbo v2, "view"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2063
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2064
    invoke-static {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    .line 2067
    :goto_1
    const-string/jumbo v3, "streams"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2068
    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2069
    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;->find(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    move-result-object v1

    .line 2071
    :cond_0
    invoke-virtual {p0, v0, v2, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->startUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V

    .line 2072
    return-void

    :cond_1
    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 2268
    if-nez p1, :cond_0

    .line 2274
    :goto_0
    return-void

    .line 2272
    :cond_0
    invoke-virtual {p1, p2}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 2273
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->setModalView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0
.end method

.method private validateTermForPrivacy(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Query is empty, skip privacy check"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    :goto_0
    return-object p1

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-nez v0, :cond_2

    .line 534
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "User agent is NULL, this should NOT happen, we can not check for privacy violation!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 p1, 0x0

    goto :goto_0

    .line 537
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUserAgent:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->isPotentialPrivacyViolationFoundForLogging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Security violation found, do NOT log query"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string/jumbo p1, "PRIVACY_VIOLATION"

    goto :goto_0
.end method


# virtual methods
.method public endAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "User session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/uiaction/model/AcknowledgeSignupEndedEvent;

    move-result-object v0

    .line 156
    if-nez v0, :cond_1

    .line 157
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AcknowledgeSignup session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1, p3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 162
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 163
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "AcknowledgeSignup session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    .line 166
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AcknowledgeSignup session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endAddProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V
    .locals 3

    .prologue
    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    if-nez v0, :cond_0

    .line 752
    :goto_0
    return-void

    .line 739
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)Lcom/netflix/mediaclient/service/logging/uiaction/model/AddProfileEndedEvent;

    move-result-object v0

    .line 741
    if-nez v0, :cond_1

    .line 742
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 747
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 748
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Add profile session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    .line 751
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;I)V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;I)Lcom/netflix/mediaclient/service/logging/uiaction/model/AddToPlaylistEndedEvent;

    move-result-object v0

    .line 193
    if-nez v0, :cond_1

    .line 194
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 199
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 200
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "AddToPlaylist session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    .line 203
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized endAllActiveSessions()V
    .locals 10

    .prologue
    .line 1159
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1160
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAddProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    .line 1161
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;I)V

    .line 1162
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endDeleteProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1163
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endEditProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V

    .line 1164
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endLoginSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1165
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endNavigationSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1166
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1167
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRateTitleSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;ILjava/lang/String;IZ)V

    .line 1168
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRegisterSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1169
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1170
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSelectProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1171
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endStartPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V

    .line 1172
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZLcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;Lorg/json/JSONObject;)V

    .line 1173
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V

    .line 1174
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endShareSheetOpenSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1175
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endShareSheetSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1176
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->logout:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPostPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 1177
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1178
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSurveySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    .line 1179
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 1181
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    .line 1182
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V

    .line 1186
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSearchSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1187
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSearchSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1188
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1189
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->endSearchSession(JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1191
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public endChangeValueSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "changeValue session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueEndedEvent;

    move-result-object v0

    .line 304
    if-nez v0, :cond_1

    .line 305
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ChangeValue session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 310
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 311
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "changeValue session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    .line 314
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "changeValue session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endDeleteProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    if-nez v0, :cond_0

    .line 828
    :goto_0
    return-void

    .line 815
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    invoke-virtual {v0, p1, p3, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/uiaction/model/DeleteProfileEndedEvent;

    move-result-object v0

    .line 817
    if-nez v0, :cond_1

    .line 818
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 822
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 823
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 824
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Delete profile session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    .line 827
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    .locals 3

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    if-nez v0, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1056
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "DeserializeLolomoSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)Lcom/netflix/mediaclient/service/logging/uiaction/model/DeserializeLolomoEndedEvent;

    move-result-object v0

    .line 1058
    if-nez v0, :cond_1

    .line 1059
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "DeserializeLolomoSession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1063
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1064
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1065
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "DeserializeLolomoSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    .line 1068
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "DeserializeLolomoSession session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endEditProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)V
    .locals 3

    .prologue
    .line 772
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    if-nez v0, :cond_0

    .line 791
    :goto_0
    return-void

    .line 776
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Profile;)Lcom/netflix/mediaclient/service/logging/uiaction/model/EditProfileEndedEvent;

    move-result-object v0

    .line 778
    if-nez v0, :cond_1

    .line 779
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 783
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 784
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 785
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Edit profile session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    .line 788
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session end done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endLoginSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    if-nez v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 338
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/LoginEndedEvent;

    move-result-object v0

    .line 340
    if-nez v0, :cond_1

    .line 341
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 346
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 347
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Login session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    .line 350
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endNavigationSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    .line 373
    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 379
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->excludedViewsSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->getStartingView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 383
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->setStartingView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 387
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->setStartingView(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 391
    :cond_2
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Navigation session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/NavigationEndedEvent;

    move-result-object v1

    .line 393
    if-nez v1, :cond_3

    .line 394
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "We stayed in same view, cancel session."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    goto :goto_0

    .line 396
    :cond_3
    const-string/jumbo v2, "nf_log"

    const-string/jumbo v3, "Navigation session end event posting..."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 398
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 399
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Navigation session end event posted."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public endNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 910
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    if-nez v0, :cond_0

    .line 928
    :goto_0
    return-void

    .line 914
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiaction/model/NewLolomoEndedEvent;

    move-result-object v0

    .line 917
    if-nez v0, :cond_1

    .line 918
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 922
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1, p2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 923
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 924
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NewLolomoSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    .line 927
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endPostPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 9

    .prologue
    .line 982
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    if-nez v0, :cond_0

    .line 998
    :goto_0
    return-void

    .line 986
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZZLjava/lang/Integer;Ljava/lang/Integer;I)Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;

    move-result-object v0

    .line 988
    if-nez v0, :cond_1

    .line 989
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 993
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 994
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PostPlaySession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    .line 997
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    if-nez v0, :cond_0

    .line 962
    :goto_0
    return-void

    .line 950
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;

    move-result-object v0

    .line 952
    if-nez v0, :cond_1

    .line 953
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 957
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 958
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PreAppWidgetActionSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 960
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    .line 961
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSession end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    if-nez v0, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 1020
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/PrefetchLolomoJobEndedEvent;

    move-result-object v0

    .line 1022
    if-nez v0, :cond_1

    .line 1023
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1027
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1028
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1029
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PrefetchLolomoJobSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1031
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    .line 1032
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJob session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endRateTitleSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;ILjava/lang/String;IZ)V
    .locals 8

    .prologue
    .line 425
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 429
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle  session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;ILjava/lang/String;IZ)Lcom/netflix/mediaclient/service/logging/uiaction/model/RateTitleEndedEvent;

    move-result-object v0

    .line 431
    if-nez v0, :cond_1

    .line 432
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle  session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 437
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 438
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "RateTitle session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    .line 441
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endRegisterForPushNotifications(Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 6

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterForPushNotificationsSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;

    if-nez v0, :cond_0

    .line 1143
    :goto_0
    return-void

    .line 1135
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RegisterForPushNotificationsSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterForPushNotificationsSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;->createEndedEvent(Ljava/lang/String;ZZLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsEndedEvent;

    move-result-object v0

    .line 1137
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterForPushNotificationsSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1138
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterForPushNotificationsSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1139
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SRegisterForPushNotificationsSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterForPushNotificationsSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;

    .line 1142
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RegisterForPushNotificationsSession session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endRegisterSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    if-nez v0, :cond_0

    .line 478
    :goto_0
    return-void

    .line 465
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterEndedEvent;

    move-result-object v0

    .line 467
    if-nez v0, :cond_1

    .line 468
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 473
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 474
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Register session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    .line 477
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 502
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/RemoveFromPlaylistEndedEvent;

    move-result-object v0

    .line 504
    if-nez v0, :cond_1

    .line 505
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 510
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 511
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "RemoveFromPlaylist session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    .line 514
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized endSearchSession(JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 5

    .prologue
    .line 550
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSearchSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    if-nez v0, :cond_0

    .line 567
    :goto_0
    monitor-exit p0

    return-void

    .line 555
    :cond_0
    :try_start_1
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Search session ended"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {v0, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SearchEndedEvent;

    move-result-object v1

    .line 557
    if-nez v1, :cond_1

    .line 558
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Search session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 562
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 563
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v2, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 564
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v2, "Search session end event posting..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 566
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Search session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public endSelectProfileSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 698
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    if-nez v0, :cond_0

    .line 715
    :goto_0
    return-void

    .line 702
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    invoke-virtual {v0, p1, p3, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;

    move-result-object v0

    .line 704
    if-nez v0, :cond_1

    .line 705
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 710
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 711
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "Select profile session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 713
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    .line 714
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)V
    .locals 3

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    if-nez v0, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1093
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SerializeLolomoSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;J)Lcom/netflix/mediaclient/service/logging/uiaction/model/SerializeLolomoEndedEvent;

    move-result-object v0

    .line 1095
    if-nez v0, :cond_1

    .line 1096
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SerializeLolomoSession still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1100
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1101
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1102
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SerializeLolomoSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    .line 1105
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SerializeLolomoSession session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endShareSheetOpenSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    if-nez v0, :cond_0

    .line 890
    :goto_0
    return-void

    .line 882
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetOpenSession ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    invoke-virtual {v0, p1, p3, p2}, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetOpenEndedEvent;

    move-result-object v0

    .line 884
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1, p2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 885
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 886
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ShareSheetOpenSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 888
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    .line 889
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetOpenSession end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endShareSheetSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 3

    .prologue
    .line 847
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    if-nez v0, :cond_0

    .line 859
    :goto_0
    return-void

    .line 851
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetSession ended and posted to executor"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    invoke-virtual {v0, p1, p3, p2}, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetEndedEvent;

    move-result-object v0

    .line 853
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {p0, v0, v1, p2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 854
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 855
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ShareSheetSession end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    .line 858
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetSession end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endStartPlaySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    if-nez v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 590
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/Integer;Lcom/netflix/mediaclient/ui/common/PlayLocationType;)Lcom/netflix/mediaclient/service/logging/uiaction/model/StartPlayEndedEvent;

    move-result-object v0

    .line 592
    if-nez v0, :cond_1

    .line 593
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 598
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 599
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "StartPlay session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    .line 602
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZLcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 624
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    if-nez v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 628
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZLcom/netflix/mediaclient/servicemgr/UserActionLogging$PaymentType;Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SubmitPaymentEndedEvent;

    move-result-object v0

    .line 630
    if-nez v0, :cond_1

    .line 631
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 635
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 636
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 637
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SubmitPayment session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    .line 640
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 265
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SurveyQuestionEndedEvent;

    move-result-object v0

    .line 267
    if-nez v0, :cond_1

    .line 268
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 273
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 274
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SurveyQuestionSession session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    .line 277
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endSurveySession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SurveyEndedEvent;

    move-result-object v0

    .line 230
    if-nez v0, :cond_1

    .line 231
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 236
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 237
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SurveySession session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    .line 240
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V
    .locals 3

    .prologue
    .line 661
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    if-nez v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 665
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UpgradeStreams session ended"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;->createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;

    move-result-object v0

    .line 667
    if-nez v0, :cond_1

    .line 668
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "User session still waits on session id, do not post at this time."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 673
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 674
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "UpgradeStreams session end event posting..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    .line 677
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UpgradeStreams session end event posted."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public handleIntent(Landroid/content/Intent;Z)Z
    .locals 3

    .prologue
    .line 1196
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1197
    const/4 v0, 0x1

    .line 1198
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_TO_PLAYLIST_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1199
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ADD_TO_PLAYLIST_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAddToPlaylistStart(Landroid/content/Intent;)V

    .line 1365
    :goto_0
    return v0

    .line 1201
    :cond_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_TO_PLAYLIST_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1202
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ADD_TO_PLAYLIST_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAddToPlaylistEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 1204
    :cond_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1205
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SURVEY_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSurveyStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 1207
    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1208
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SURVEY_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSurveyEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 1210
    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_QUESTION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1211
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SURVEY_QUESTION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSurveyQuestionStart(Landroid/content/Intent;)V

    goto :goto_0

    .line 1213
    :cond_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SURVEY_QUESTION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1214
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SURVEY_QUESTION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSurveyQuestionEnded(Landroid/content/Intent;)V

    goto :goto_0

    .line 1216
    :cond_5
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_CHANGE_VALUE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1217
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "CHANGE_VALUE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleChangeValueStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1219
    :cond_6
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_CHANGE_VALUE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1220
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "CHANGE_VALUE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleChangeValueEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1222
    :cond_7
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_LOGIN_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1223
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LOGIN_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleLoginStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1225
    :cond_8
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_LOGIN_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1226
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "LOGIN_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleLoginEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1228
    :cond_9
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SIGNUP_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1229
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SIGNUP_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAcknowledgeSignupStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1231
    :cond_a
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SIGNUP_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1232
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SIGNUP_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAcknowledgeSignupEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1234
    :cond_b
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NAVIGATION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1235
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NAVIGATION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleNavigationStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1237
    :cond_c
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NAVIGATION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1238
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NAVIGATION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleNavigationEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1240
    :cond_d
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_RATE_TITLE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1241
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "RATE_TITLE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRateTitleStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1243
    :cond_e
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_RATE_TITLE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1244
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "RATE_TITLE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRateTitleEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1246
    :cond_f
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1247
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "REGISTER_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRegisterStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1249
    :cond_10
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1250
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "REGISTER_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRegisterEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1252
    :cond_11
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REMOVE_FROM_PLAYLIST_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1253
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "REMOVE_FROM_PLAYLIST_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRemoveFromPlaylistStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1255
    :cond_12
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REMOVE_FROM_PLAYLIST_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1256
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "REMOVE_FROM_PLAYLIST_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRemoveFromPlaylistEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1258
    :cond_13
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SEARCH_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1259
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SEARCH_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSearchStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1261
    :cond_14
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SEARCH_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1262
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SEARCH_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSearchEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1264
    :cond_15
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_START_PLAY_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1265
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "START_PLAY_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleStartPlayStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1267
    :cond_16
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_START_PLAY_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1268
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "START_PLAY_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleStartPlayEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1270
    :cond_17
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SUBMIT_PAYMENT_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1271
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SUBMIT_PAYMENT_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSubmitPaymentStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1273
    :cond_18
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SUBMIT_PAYMENT_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1274
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SUBMIT_PAYMENT_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSubmitPaymentEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1276
    :cond_19
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_UPGRADE_STREAMS_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1277
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "UPGRADE_STREAMS_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleUpgradeStreamsStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1279
    :cond_1a
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_UPGRADE_STREAMS_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1280
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "UPGRADE_STREAMS_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleUpgradeStreamsEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1282
    :cond_1b
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SELECT_PROFILE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1283
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SELECT_PROFILE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSelectProfileStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1285
    :cond_1c
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SELECT_PROFILE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1286
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SELECT_PROFILE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSelectProfileEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1288
    :cond_1d
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_PROFILE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1289
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ADD_PROFILE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAddProfileStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1291
    :cond_1e
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_ADD_PROFILE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1292
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "ADD_PROFILE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleAddProfileEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1294
    :cond_1f
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_EDIT_PROFILE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1295
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "EDIT_PROFILE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleEditProfileStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1297
    :cond_20
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_EDIT_PROFILE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1298
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "EDIT_PROFILE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleEditProfileEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1300
    :cond_21
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DELETE_PROFILE_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1301
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "DELETE_PROFILE_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleDeleteProfileStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1303
    :cond_22
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DELETE_PROFILE_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1304
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "DELETE_PROFILE_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleDeleteProfileEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1306
    :cond_23
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1307
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SHARE_SHEET_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleShareSheetStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1309
    :cond_24
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1310
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SHARE_SHEET_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleShareSheetEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1312
    :cond_25
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_OPEN_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1313
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SHARE_SHEET_OPEN_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleShareSheetOpenStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1315
    :cond_26
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SHARE_SHEET_OPEN_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1316
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SHARE_SHEET_OPEN_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleShareSheetOpenEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1318
    :cond_27
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NEW_LOLOMO_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1319
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NEW_LOLOMO_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleNewLolomoStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1321
    :cond_28
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_NEW_LOLOMO_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1322
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "NEW_LOLOMO_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleNewLolomoEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1324
    :cond_29
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PREAPP_WIDGET_ACTION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1325
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PREAPP_WIDGET_ACTION_START"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePreAppWidgetActionStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1327
    :cond_2a
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.PREAPP_WIDGET_ACTION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1328
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PREAPP_WIDGET_ACTION_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePreAppWidgetActionEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1330
    :cond_2b
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_POSTPLAY_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1331
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePostPlayStart(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1332
    :cond_2c
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_POSTPLAY_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1333
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePostPlayEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1334
    :cond_2d
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_PREFETCH_LOLOMO_JOB_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1335
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PREFETCH_LOLOMO_JOB_STARTED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePrefetchLolomoJobStarted(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1337
    :cond_2e
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_PREFETCH_LOLOMO_JOB_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 1338
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "PREFETCH_LOLOMO_JOB_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handlePrefetchLolomoJobEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1340
    :cond_2f
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DESERIALIZE_LOLOMO_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1341
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "DESERIALIZE_LOLOMO_STARTED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleDeserializeLolomoStarted(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1343
    :cond_30
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_DESERIALIZE_LOLOMO_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1344
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "DESERIALIZE_LOLOMO_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleDeserializeLolomoEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1346
    :cond_31
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SERIALIZE_LOLOMO_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1347
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SERIALIZE_LOLOMO_STARTED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSerializeLolomoStarted(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1349
    :cond_32
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_SERIALIZE_LOLOMO_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1350
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v2, "SERIALIZE_LOLOMO_ENDED"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleSerializeLolomoEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1352
    :cond_33
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_CUSTOM_ACTION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1353
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleCustomAction(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1354
    :cond_34
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_FOR_PUSH_NOTIFICATION_START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1355
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRegisterForPushNotificationStarted(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1356
    :cond_35
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.LOG_UIA_REGISTER_FOR_PUSH_NOTIFICATION_ENDED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1357
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->handleRegisterForPushNotificationEnded(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1362
    :cond_36
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public reportCustomAction(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 1146
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/CustomEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/client/model/CustomEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lorg/json/JSONObject;)V

    .line 1148
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1149
    return-void
.end method

.method public setDataContext(Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V
    .locals 0

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    .line 1154
    return-void
.end method

.method public startAcknowledgeSignupSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    if-eqz v0, :cond_0

    .line 136
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AcknowledgeSignup session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AcknowledgeSignup session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 142
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 143
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAcknowledgeSignup:Lcom/netflix/mediaclient/service/logging/uiaction/AcknowledgeSignupSession;

    .line 144
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AcknowledgeSignup session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAddProfileSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    if-eqz v0, :cond_0

    .line 721
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    return-void

    .line 725
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 727
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 728
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddProfileSession;

    .line 729
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Add profile session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startAddToPlaylistSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    if-eqz v0, :cond_0

    .line 173
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 179
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 180
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mAddToPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/AddToPlaylistSession;

    .line 181
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "AddToPlaylist session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startChangeValueSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "changeValue session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "changeValue session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 290
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 291
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mChangeValueSession:Lcom/netflix/mediaclient/service/logging/uiaction/model/ChangeValueSession;

    .line 292
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "changeValue session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDeleteProfileSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    if-eqz v0, :cond_0

    .line 797
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :goto_0
    return-void

    .line 801
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 803
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 804
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeleteProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeleteProfileSession;

    .line 805
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Delete profile session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDeserializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    if-eqz v0, :cond_0

    .line 1039
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "DeserializeLolomoSession already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :goto_0
    return-void

    .line 1043
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "DeserializeLolomoSession starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1045
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1046
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDeserializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/DeserializeLolomoSession;

    .line 1047
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startEditProfileSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    if-eqz v0, :cond_0

    .line 758
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :goto_0
    return-void

    .line 762
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 764
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 765
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEditProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/EditProfileSession;

    .line 766
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Edit profile session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startLoginSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    if-eqz v0, :cond_0

    .line 320
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_0
    return-void

    .line 323
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 327
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 328
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mLoginSession:Lcom/netflix/mediaclient/service/logging/uiaction/LoginSession;

    .line 329
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Login session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startNavigationSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    if-eqz v0, :cond_0

    .line 357
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Navigation session existed before, overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->removeSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 363
    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 364
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 365
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNavigationSession:Lcom/netflix/mediaclient/service/logging/uiaction/NavigationSession;

    .line 366
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Navigation session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-void

    .line 360
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Navigation session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startNewLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    if-eqz v0, :cond_0

    .line 896
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :goto_0
    return-void

    .line 900
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    .line 902
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mNewLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/NewLolomoSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 903
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "NewLolomoSession session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPostPlaySession(ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V
    .locals 6

    .prologue
    .line 967
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    if-eqz v0, :cond_0

    .line 968
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :goto_0
    return-void

    .line 972
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->postPlay:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V

    .line 974
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 975
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPostPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;

    .line 976
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PostPlaySession start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPreAppWidgetActionSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    if-eqz v0, :cond_0

    .line 933
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSession already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :goto_0
    return-void

    .line 937
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSessionstarting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 940
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPreAppWidgetActionSession:Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;

    .line 941
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PreAppWidgetActionSession start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPrefetchLolomoJobSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    if-eqz v0, :cond_0

    .line 1003
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :goto_0
    return-void

    .line 1007
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1009
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1010
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mPrefetchLolomoJobSession:Lcom/netflix/mediaclient/service/logging/uiaction/PrefetchLolomoJobSession;

    .line 1011
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRateTitleSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    if-eqz v0, :cond_0

    .line 410
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 414
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 416
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 417
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRateTitleSession:Lcom/netflix/mediaclient/service/logging/uiaction/RateTitleSession;

    .line 418
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RateTitle session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRegisterForPushNotifications(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 3

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterForPushNotificationsSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;

    if-eqz v0, :cond_0

    .line 1112
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RegisterForPushNotificationsSession already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :goto_0
    return-void

    .line 1116
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RegisterForPushNotificationsSession starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1118
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1119
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterForPushNotificationsSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;

    .line 1121
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;->createStartedEvent()Lcom/netflix/mediaclient/service/logging/uiaction/model/RegisterForPushNotificationsStartedEvent;

    move-result-object v1

    .line 1122
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mDataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterForPushNotificationsSession;->getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->populateEvent(Lcom/netflix/mediaclient/service/logging/client/model/Event;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->post(Lcom/netflix/mediaclient/service/logging/client/model/Event;)V

    .line 1125
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RegisterForPushNotificationsSession start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRegisterSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    if-eqz v0, :cond_0

    .line 448
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_0
    return-void

    .line 452
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 454
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 455
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRegisterSession:Lcom/netflix/mediaclient/service/logging/uiaction/RegisterSession;

    .line 456
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Register session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startRemoveFromPlaylistSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    if-eqz v0, :cond_0

    .line 484
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_0
    return-void

    .line 488
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 490
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 491
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mRemoveFromPlaylistSession:Lcom/netflix/mediaclient/service/logging/uiaction/RemoveFromPlaylistSession;

    .line 492
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "RemoveFromPlaylist session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized startSearchSession(JLcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 520
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Search session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-direct {p0, p5}, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->validateTermForPrivacy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 522
    new-instance v1, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;-><init>(JLcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 524
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSearchSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Search session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    monitor-exit p0

    return-void

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startSelectProfileSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    if-eqz v0, :cond_0

    .line 684
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_0
    return-void

    .line 688
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 690
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 691
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSelectProfileSession:Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;

    .line 692
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Select profile session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSerializeLolomoSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    if-eqz v0, :cond_0

    .line 1075
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SerializeLolomoSession already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :goto_0
    return-void

    .line 1079
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SerializeLolomoSession starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 1081
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 1082
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSerializeLolomoSession:Lcom/netflix/mediaclient/service/logging/uiaction/SerializeLolomoSession;

    .line 1083
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "PrefetchLolomoJobSession start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startShareSheetOpenSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    if-eqz v0, :cond_0

    .line 865
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetOpenSession session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :goto_0
    return-void

    .line 869
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetOpenSession session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    .line 871
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetOpenSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 872
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetOpenSession  session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startShareSheetSession(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    if-eqz v0, :cond_0

    .line 834
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetSession session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :goto_0
    return-void

    .line 838
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetSession session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    .line 840
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mShareSheetSession:Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 841
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "ShareSheetSession  session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startStartPlaySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    if-eqz v0, :cond_0

    .line 573
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_0
    return-void

    .line 577
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 579
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 580
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mStartPlaySession:Lcom/netflix/mediaclient/service/logging/uiaction/StartPlaySession;

    .line 581
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "StartPlay session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSubmitPaymentSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    if-eqz v0, :cond_0

    .line 609
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_0
    return-void

    .line 613
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 615
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 616
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSubmitPaymentSession:Lcom/netflix/mediaclient/service/logging/uiaction/SubmitPaymentSession;

    .line 617
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SubmitPayment session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSurveyQuestionSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    if-eqz v0, :cond_0

    .line 247
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 253
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 254
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveyQuestionSession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveyQuestionSession;

    .line 255
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveyQuestionSession session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startSurveySession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    if-eqz v0, :cond_0

    .line 210
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 216
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 217
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mSurveySession:Lcom/netflix/mediaclient/service/logging/uiaction/SurveySession;

    .line 218
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "SurveySession session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startUpgradeStreamsSession(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    if-eqz v0, :cond_0

    .line 647
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UpgradeStreams session already started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_0
    return-void

    .line 651
    :cond_0
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UpgradeStreams session starting..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V

    .line 653
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mEventHandler:Lcom/netflix/mediaclient/service/logging/EventHandler;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/EventHandler;->addSession(Lcom/netflix/mediaclient/service/logging/client/LoggingSession;)V

    .line 654
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/UserActionLoggingImpl;->mUpgradeStreamsSession:Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;

    .line 655
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "UpgradeStreams session start done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
