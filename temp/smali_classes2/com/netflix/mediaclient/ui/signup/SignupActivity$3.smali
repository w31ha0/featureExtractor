.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$OnSetupFinishedListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetupFinished(Z)V
    .locals 4

    .prologue
    .line 264
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "play billing setup finished."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$002(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$100(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Lcom/netflix/mediaclient/partner/playbilling/PlayBilling;

    move-result-object v0

    if-nez v0, :cond_0

    .line 268
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "activity disposed already.. quit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "serviceManager not ready yet.. deferring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_1
    if-nez p1, :cond_2

    .line 278
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Problem setting up in-app billing: "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$200(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->setViews(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)V

    goto :goto_0
.end method
