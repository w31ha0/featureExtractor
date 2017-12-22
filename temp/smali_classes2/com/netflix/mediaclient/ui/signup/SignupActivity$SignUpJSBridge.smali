.class public Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;
.super Ljava/lang/Object;
.source "SignupActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 459
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->handleTokenActivate(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    return-void
.end method

.method private handleTokenActivate(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 878
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getMessage()Ljava/lang/String;

    .line 879
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1102(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 884
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    .line 887
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->NRD_REGISTRATION_EXISTS:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_3

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 889
    invoke-direct {p0, p2, v3}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 901
    :cond_1
    :goto_1
    return-void

    .line 878
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 893
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getError()Lcom/netflix/mediaclient/service/logging/client/model/Error;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 894
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const v4, 0x7f09026d

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v3, v3, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->provideDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 896
    if-eqz p2, :cond_1

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Executing the following javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 908
    return-void
.end method


# virtual methods
.method public getDeviceCategory()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1000(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1000(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    .line 559
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "phone"

    goto :goto_0
.end method

.method public getESN()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getESNPrefix()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$800(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$800(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    .line 541
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Ljava/lang/String;

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public isNetflixPreloaded()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isNetflixPreloaded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    const-string/jumbo v0, "true"

    .line 602
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public isPlayBillingEnabled()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 614
    .line 615
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    .line 616
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    .line 617
    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 618
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isPlayBillingDisabled()Z

    move-result v1

    .line 622
    :goto_0
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isNetflixPreloaded(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 624
    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public launchUrl(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 514
    if-nez p1, :cond_1

    .line 515
    const-string/jumbo v0, "http://netflix.com"

    .line 523
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startActivity(Landroid/content/Intent;)V

    .line 524
    return-void

    .line 517
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 518
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loginCompleted()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 497
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "loginCompleted, noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void
.end method

.method public loginToApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 650
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "loginToApp ongoing, returning NULL operation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_0
    return-void

    .line 655
    :cond_0
    const-string/jumbo v0, "SignupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Login with Tokens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ErrHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1202(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->noConnectivityWarning()V

    goto :goto_0

    .line 664
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 669
    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;-><init>(Lorg/json/JSONObject;)V

    .line 670
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 671
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 672
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const-string/jumbo v3, "prefs_non_member_playback"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 673
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    .line 674
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1300(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1102(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 681
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$2;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    const-string/jumbo v1, "SignupActivity"

    const-string/jumbo v2, "Failed to LoginToApp"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 691
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, v5}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1102(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 692
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const v2, 0x7f09026d

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->provideDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 676
    :cond_2
    :try_start_1
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "loginToApp, invalid state to Login, bailing out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public logoutOfApp()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 698
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 699
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->logoutUser(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 702
    :cond_0
    return-void
.end method

.method public notifyReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 633
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Signup UI ready to interact"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mJumpToSignInTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 635
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->NON_MEMBER_TTI:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V

    .line 637
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$1;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 646
    return-void
.end method

.method public passNonMemberInfo(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 476
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Ignoring passNonMemberInfo %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 477
    return-void
.end method

.method public playBillingGetPurchaseHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 774
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 775
    const-string/jumbo v1, "SignupActivity"

    const-string/jumbo v2, "playBillingGetPurchaseHistory"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 779
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "playBillingGetPurchaseHistory - playBillingNotReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 790
    :goto_0
    return-void

    .line 784
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$6;

    invoke-direct {v2, p0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$6;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getPurchaseHistory(Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    goto :goto_0
.end method

.method public playBillingGetPurchases(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    const-string/jumbo v1, "SignupActivity"

    const-string/jumbo v2, "playBillingGetPurchases"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 759
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "playBillingGetPurchases - playBillingNotReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 770
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$5;

    invoke-direct {v2, p0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$5;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getPurchases(Ljava/lang/String;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    goto :goto_0
.end method

.method public playBillingGetSkuDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 728
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 729
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 730
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 731
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 739
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "playBillingGetSkuDetails - playBillingNotReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 750
    :goto_1
    return-void

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$4;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$4;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->getSkuDetails(Ljava/util/ArrayList;Lcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    goto :goto_1
.end method

.method public playBillingPurchase(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p4}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 795
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1900(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 799
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1700(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "playBillingPurchase - playBillingNotReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v0, 0x0

    invoke-direct {p0, p5, v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->invokeJsCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 811
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v6, 0x2

    new-instance v7, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$7;

    invoke-direct {v7, p0, p5}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$7;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;->purchase(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILcom/netflix/mediaclient/partner/playbilling/PlayBillingCallback;)V

    goto :goto_0
.end method

.method public playVideo(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 815
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 816
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->setNonMemberPlayback(Z)Z

    .line 819
    :cond_0
    const-string/jumbo v0, "episode"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 820
    :goto_0
    new-instance v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    const-string/jumbo v2, "mcplayer"

    invoke-direct {v1, v2, p2, v3, v3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 821
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getBootLoader()Lcom/netflix/mediaclient/ui/signup/Bootloader;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/signup/Bootloader;->setVideoId(Ljava/lang/String;)V

    .line 822
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/netflix/mediaclient/ui/player/NonMemberPlayerActivity;->createColdStartIntent(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/ui/common/PlayContext;)Landroid/content/Intent;

    move-result-object v0

    .line 823
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 824
    return-void

    .line 819
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    goto :goto_0
.end method

.method public playbackTokenActivate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 828
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Another potential token activate ongoing, returning NULL operation"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :goto_0
    return-void

    .line 833
    :cond_0
    const-string/jumbo v0, "SignupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Token Activate with Tokens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->isConnectedOrConnecting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 835
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->noConnectivityWarning()V

    goto :goto_0

    .line 841
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 846
    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;-><init>(Lorg/json/JSONObject;)V

    .line 847
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 848
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 849
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 851
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$8;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$8;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    const-string/jumbo v1, "SignupActivity"

    const-string/jumbo v2, "Failed to TokenActivate"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 872
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1102(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 873
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const v2, 0x7f09026d

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->mHandleError:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->provideDialog(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 858
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;->tokenActivate:Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/log/SignInLogUtils;->reportSignInRequestSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/SignInLogging$SignInType;)V

    .line 859
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const-string/jumbo v3, "prefs_non_member_playback"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 860
    new-instance v2, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$9;

    invoke-direct {v2, p0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$9;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->loginUserByTokens(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_0

    .line 868
    :cond_3
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "tokenActivate, invalid state to token activate, bailing out"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public saveUserCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1402(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 712
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$1502(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    new-instance v1, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$3;-><init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 721
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 571
    const-string/jumbo v1, "SignupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update language to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    if-nez v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->setCurrentAppLocale(Ljava/lang/String;)Z

    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/NetflixApplication;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/NetflixApplication;->refreshLocale(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$600(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "setLanguage  failed, invalid state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showSignIn()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 482
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Show SignIn: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$502(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 484
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$600(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    .line 485
    return-void
.end method

.method public showSignOut()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 490
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Show SignOut"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$502(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$600(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V

    .line 493
    return-void
.end method

.method public signupCompleted()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 502
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "signupCompleted, report"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportSignUpOnDevice(Landroid/content/Context;)V

    .line 504
    return-void
.end method

.method public supportsSignUp(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 587
    const-string/jumbo v0, "SignupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SupportSignUp flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method public toSignIn()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 463
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Redirecting to Login screen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/login/LoginActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->startNextActivity(Landroid/content/Intent;)V

    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->finish()V

    .line 466
    return-void
.end method
