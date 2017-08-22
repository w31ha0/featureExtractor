.class Lcom/mopub/mobileads/VastVideoConfig$1;
.super Ljava/lang/Object;
.source "VastVideoConfig.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastVideoConfig;->handleClick(Landroid/content/Context;ILjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastVideoConfig;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$requestCode:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastVideoConfig;Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->this$0:Lcom/mopub/mobileads/VastVideoConfig;

    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$requestCode:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "lastFailedUrlAction"    # Lcom/mopub/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 585
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "urlAction"    # Lcom/mopub/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 554
    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    if-ne p2, v4, :cond_0

    .line 555
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 556
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "URL"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v4, "mopub-dsp-creative-id"

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->this$0:Lcom/mopub/mobileads/VastVideoConfig;

    invoke-static {v5}, Lcom/mopub/mobileads/VastVideoConfig;->access$000(Lcom/mopub/mobileads/VastVideoConfig;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-class v1, Lcom/mopub/common/MoPubBrowser;

    .line 560
    .local v1, "clazz":Ljava/lang/Class;
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v1, v0}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 563
    .local v3, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$context:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 565
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$requestCode:Ljava/lang/Integer;

    invoke-static {v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 567
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$context:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$requestCode:Ljava/lang/Integer;

    .line 568
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 580
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 570
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "clazz":Ljava/lang/Class;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 572
    :catch_0
    move-exception v2

    .line 573
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 575
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .line 576
    .local v2, "e":Lcom/mopub/exceptions/IntentNotResolvableException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found. Did you declare it in your AndroidManifest.xml?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
