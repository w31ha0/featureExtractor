.class final enum Lcom/mopub/common/UrlAction$8;
.super Lcom/mopub/common/UrlAction;
.source "UrlAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/UrlAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .param p3, "requiresUserInteraction"    # Z

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/common/UrlAction;-><init>(Ljava/lang/String;IZLcom/mopub/common/UrlAction$1;)V

    return-void
.end method


# virtual methods
.method protected performAction(Landroid/content/Context;Landroid/net/Uri;Lcom/mopub/common/UrlHandler;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "urlHandler"    # Lcom/mopub/common/UrlHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "creativeId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/exceptions/IntentNotResolvableException;
        }
    .end annotation

    .prologue
    .line 221
    const-string v7, "navigate"

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 222
    new-instance v7, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v8, "Deeplink+ URL did not have \'navigate\' as the host."

    invoke-direct {v7, v8}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 231
    :cond_0
    :try_start_0
    const-string v7, "primaryUrl"

    invoke-virtual {p2, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "primaryUrl":Ljava/lang/String;
    const-string v7, "primaryTrackingUrl"

    invoke-virtual {p2, v7}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 233
    .local v4, "primaryTrackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "fallbackUrl"

    invoke-virtual {p2, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "fallbackUrl":Ljava/lang/String;
    const-string v7, "fallbackTrackingUrl"

    invoke-virtual {p2, v7}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 242
    .local v1, "fallbackTrackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_1

    .line 243
    new-instance v7, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v8, "Deeplink+ did not have \'primaryUrl\' query param."

    invoke-direct {v7, v8}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 235
    .end local v1    # "fallbackTrackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "fallbackUrl":Ljava/lang/String;
    .end local v4    # "primaryTrackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "primaryUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v7, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v8, "Deeplink+ URL was not a hierarchical URI."

    invoke-direct {v7, v8}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 247
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v1    # "fallbackTrackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "fallbackUrl":Ljava/lang/String;
    .restart local v4    # "primaryTrackingUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "primaryUrl":Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 248
    .local v5, "primaryUri":Landroid/net/Uri;
    invoke-virtual {p0, v5}, Lcom/mopub/common/UrlAction$8;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 250
    new-instance v7, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v8, "Deeplink+ had another Deeplink+ as the \'primaryUrl\'."

    invoke-direct {v7, v8}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 256
    :cond_2
    :try_start_1
    invoke-static {p1, v5}, Lcom/mopub/common/util/Intents;->launchApplicationUrl(Landroid/content/Context;Landroid/net/Uri;)V

    .line 257
    sget-object v7, Lcom/mopub/common/event/BaseEvent$Name;->CLICK_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    invoke-static {v4, p1, v7}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;Lcom/mopub/common/event/BaseEvent$Name;)V
    :try_end_1
    .catch Lcom/mopub/exceptions/IntentNotResolvableException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :goto_0
    return-void

    .line 259
    :catch_1
    move-exception v7

    .line 264
    if-nez v2, :cond_3

    .line 265
    new-instance v7, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v8, "Unable to handle \'primaryUrl\' for Deeplink+ and \'fallbackUrl\' was missing."

    invoke-direct {v7, v8}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 269
    :cond_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/mopub/common/UrlAction$8;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 271
    new-instance v7, Lcom/mopub/exceptions/IntentNotResolvableException;

    const-string v8, "Deeplink+ URL had another Deeplink+ URL as the \'fallbackUrl\'."

    invoke-direct {v7, v8}, Lcom/mopub/exceptions/IntentNotResolvableException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 276
    :cond_4
    const/4 v3, 0x1

    .line 277
    .local v3, "fromUserInteraction":Z
    const/4 v7, 0x1

    invoke-virtual {p3, p1, v2, v7, v1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Iterable;)V

    goto :goto_0
.end method

.method public shouldTryHandlingUrl(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 210
    const-string v0, "deeplink+"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
