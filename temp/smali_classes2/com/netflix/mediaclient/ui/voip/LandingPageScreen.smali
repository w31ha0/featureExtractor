.class Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;
.super Ljava/lang/Object;
.source "LandingPageScreen.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoipActivity"


# instance fields
.field private mCancelMyAccount:Landroid/view/View;

.field private mChangePassword:Landroid/view/View;

.field private mFab:Landroid/view/View;

.field private mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    .line 42
    const v0, 0x7f100168

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mFab:Landroid/view/View;

    .line 43
    const v0, 0x7f10016d

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mCancelMyAccount:Landroid/view/View;

    .line 44
    const v0, 0x7f10016a

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mChangePassword:Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->shouldHidePersonalizedLinks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mCancelMyAccount:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mChangePassword:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->shouldHideCallButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mFab:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 54
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 199
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 200
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 202
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;->url:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportHelpRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Action;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Unable to launchHelp"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openUrlWithAutoLoginToken(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    const-wide/32 v2, 0x36ee80

    new-instance v1, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen$1;-><init>(Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAutoLoginToken(JLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 191
    return-void
.end method

.method private shouldHideCallButton()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 90
    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 95
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v2

    .line 96
    if-nez v2, :cond_1

    .line 97
    const-string/jumbo v2, "VoipActivity"

    const-string/jumbo v3, "VOIP config does not exist, by default it is enabled"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v3

    .line 102
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isNetworkTypeCellular(Landroid/content/Context;)Z

    move-result v4

    .line 104
    if-eqz v4, :cond_2

    .line 108
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverData()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 111
    :cond_2
    if-eqz v3, :cond_3

    .line 112
    const-string/jumbo v3, "VoipActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "On WiFi, VOIP call is enabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverWiFi()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoipOverWiFi()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 116
    :cond_3
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Not on data or WiFi? We most likely do not have network Hide by default"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Something is very wrong, go with default ."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_4
    :try_start_1
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Service manager or configuration not found, hide VOIP"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private shouldHidePersonalizedLinks()Z
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x1

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "User is logged in, leave links..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 74
    :cond_0
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "User is NOT logged in, remove personal links..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "User is NOT logged in, remove personal links..."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getFab()Landroid/view/View;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mFab:Landroid/view/View;

    return-object v0
.end method

.method public performAction(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 138
    if-nez p1, :cond_0

    .line 139
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "launchBrowser:: null view? This should never happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return v0

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 171
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :sswitch_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f0902d0

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :sswitch_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f0902d1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->openUrlWithAutoLoginToken(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :sswitch_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f0902cd

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->openUrlWithAutoLoginToken(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :sswitch_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f0902cf

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :sswitch_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f0902ce

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->openUrl(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.MDX_CS_CAST_DISCOVERY_ISSUE"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/mdx/MdxAgentApiUtils;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 161
    :sswitch_5
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->startDial()V

    goto :goto_0

    .line 164
    :sswitch_6
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "Perform up action"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->performUpAction()V

    goto :goto_0

    .line 143
    :sswitch_data_0
    .sparse-switch
        0x7f100136 -> :sswitch_6
        0x7f100168 -> :sswitch_5
        0x7f100169 -> :sswitch_0
        0x7f10016a -> :sswitch_1
        0x7f10016b -> :sswitch_3
        0x7f10016c -> :sswitch_4
        0x7f10016d -> :sswitch_2
    .end sparse-switch
.end method

.method public update()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->shouldHideCallButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mFab:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/LandingPageScreen;->mFab:Landroid/view/View;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/View;Lcom/netflix/mediaclient/util/ViewUtils$Visibility;)V

    goto :goto_0
.end method
