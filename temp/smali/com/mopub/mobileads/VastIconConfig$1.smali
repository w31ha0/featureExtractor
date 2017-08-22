.class Lcom/mopub/mobileads/VastIconConfig$1;
.super Ljava/lang/Object;
.source "VastIconConfig.java"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/VastIconConfig;->handleClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/VastIconConfig;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dspCreativeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/VastIconConfig;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/VastIconConfig;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mopub/mobileads/VastIconConfig$1;->this$0:Lcom/mopub/mobileads/VastIconConfig;

    iput-object p2, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$dspCreativeId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$context:Landroid/content/Context;

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
    .line 179
    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "urlAction"    # Lcom/mopub/common/UrlAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    sget-object v3, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    if-ne p2, v3, :cond_1

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "URL"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$dspCreativeId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    const-string v3, "mopub-dsp-creative-id"

    iget-object v4, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$dspCreativeId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$context:Landroid/content/Context;

    const-class v4, Lcom/mopub/common/MoPubBrowser;

    invoke-static {v3, v4, v0}, Lcom/mopub/common/util/Intents;->getStartActivityIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 169
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/mopub/mobileads/VastIconConfig$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/mopub/common/util/Intents;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 170
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Lcom/mopub/exceptions/IntentNotResolvableException;
    invoke-virtual {v1}, Lcom/mopub/exceptions/IntentNotResolvableException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
