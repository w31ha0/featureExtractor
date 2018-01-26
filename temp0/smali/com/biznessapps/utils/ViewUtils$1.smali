.class final Lcom/biznessapps/utils/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/ViewUtils;->tweet(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dataToTweet:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/biznessapps/utils/ViewUtils$1;->val$dataToTweet:Ljava/lang/String;

    iput-object p2, p0, Lcom/biznessapps/utils/ViewUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v1

    .line 132
    .local v1, "cacher":Lcom/biznessapps/api/CachingManager;
    new-instance v0, Ltwitter4j/http/AccessToken;

    invoke-virtual {v1}, Lcom/biznessapps/api/CachingManager;->getTwitterOauthToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/biznessapps/api/CachingManager;->getTwitterOauthSecret()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, "accessToken":Ltwitter4j/http/AccessToken;
    new-instance v4, Ltwitter4j/TwitterFactory;

    invoke-direct {v4}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v4}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v3

    .line 135
    .local v3, "twitter":Ltwitter4j/Twitter;
    const-string v4, "ibeMh2JAmmQw09B1nfap5Q"

    const-string v5, "dkomjgXm50XtNmWDn0FhJJpswGvdfIPqfYwfxqMar38"

    invoke-virtual {v3, v4, v5}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3, v0}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 139
    iget-object v4, p0, Lcom/biznessapps/utils/ViewUtils$1;->val$dataToTweet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;

    .line 140
    invoke-static {}, Lcom/biznessapps/api/UIHandler;->get()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/biznessapps/utils/ViewUtils$1$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/utils/ViewUtils$1$1;-><init>(Lcom/biznessapps/utils/ViewUtils$1;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "accessToken":Ltwitter4j/http/AccessToken;
    .end local v1    # "cacher":Lcom/biznessapps/api/CachingManager;
    .end local v3    # "twitter":Ltwitter4j/Twitter;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/biznessapps/api/UIHandler;->get()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/biznessapps/utils/ViewUtils$1$2;

    invoke-direct {v5, p0}, Lcom/biznessapps/utils/ViewUtils$1$2;-><init>(Lcom/biznessapps/utils/ViewUtils$1;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
