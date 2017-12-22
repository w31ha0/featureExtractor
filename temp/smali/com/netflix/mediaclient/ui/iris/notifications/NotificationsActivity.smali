.class public Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;
.super Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;
.source "NotificationsActivity.java"


# static fields
.field private static final NOTIFICATION_BEACON_SENT:Ljava/lang/String; = "notification_beacon_sent"

.field public static final NOTIFICATION_IRIS:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.NOTIFICATION_IRIS"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mManagerIsReady:Z

.field private mNotificationOpenedReportAlreadySent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->mManagerIsReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->mNotificationOpenedReportAlreadySent:Z

    return v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->mNotificationOpenedReportAlreadySent:Z

    return p1
.end method

.method public static getIntent(Lcom/netflix/mediaclient/service/pushnotification/MessageData;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.NOTIFICATION_IRIS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->addMessageDataToIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    .line 139
    return-object v0
.end method


# virtual methods
.method protected createManagerStatusListener()Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity$1;-><init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;)V

    return-object v0
.end method

.method protected createPrimaryFrag()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;-><init>()V

    return-object v0
.end method

.method protected getContentLayoutId()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f03006a

    return v0
.end method

.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->socialNotifications:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->mManagerIsReady:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->isLoadingData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    sget-object v1, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 50
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setTitle(Ljava/lang/String;)V

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    const-string/jumbo v0, "notification_beacon_sent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->mNotificationOpenedReportAlreadySent:Z

    .line 56
    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onNewIntent: "

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 61
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->setIntent(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "notification_beacon_sent"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsActivity;->mNotificationOpenedReportAlreadySent:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/FragmentHostActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public showAboutInMenu()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public showSettingsInMenu()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public showSignOutInMenu()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method
