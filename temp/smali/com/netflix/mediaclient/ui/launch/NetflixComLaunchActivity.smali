.class public Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;
.super Landroid/app/Activity;
.source "NetflixComLaunchActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetflixComLaunchActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 44
    invoke-static {p1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;->canHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;->finishMeAndLaunchBrowserIfNeeded(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string/jumbo v0, "NetflixComLaunchActivity"

    const-string/jumbo v1, "This deeplink should be handled by external browser - launching it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string/jumbo v0, "NetflixComLaunchActivity"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 38
    const-string/jumbo v0, "NetflixComLaunchActivity"

    const-string/jumbo v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/launch/NetflixComLaunchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 40
    return-void
.end method
