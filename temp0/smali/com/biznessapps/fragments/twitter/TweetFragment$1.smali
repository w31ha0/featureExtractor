.class Lcom/biznessapps/fragments/twitter/TweetFragment$1;
.super Landroid/os/AsyncTask;
.source "TweetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/twitter/TweetFragment;->tweet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

.field final synthetic val$dataToTweet:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/twitter/TweetFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    iput-object p2, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$1;->val$dataToTweet:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 100
    const/4 v2, 0x0

    .line 102
    .local v2, "result":Ljava/lang/Exception;
    :try_start_0
    new-instance v0, Ltwitter4j/http/AccessToken;

    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/twitter/TweetFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getTwitterOauthToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    invoke-virtual {v5}, Lcom/biznessapps/fragments/twitter/TweetFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/api/CachingManager;->getTwitterOauthSecret()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ltwitter4j/http/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v0, "accessToken":Ltwitter4j/http/AccessToken;
    new-instance v4, Ltwitter4j/TwitterFactory;

    invoke-direct {v4}, Ltwitter4j/TwitterFactory;-><init>()V

    invoke-virtual {v4}, Ltwitter4j/TwitterFactory;->getInstance()Ltwitter4j/Twitter;

    move-result-object v3

    .line 106
    .local v3, "twitter":Ltwitter4j/Twitter;
    const-string v4, "ibeMh2JAmmQw09B1nfap5Q"

    const-string v5, "dkomjgXm50XtNmWDn0FhJJpswGvdfIPqfYwfxqMar38"

    invoke-virtual {v3, v4, v5}, Ltwitter4j/Twitter;->setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3, v0}, Ltwitter4j/Twitter;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 111
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$1;->val$dataToTweet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v0    # "accessToken":Ltwitter4j/http/AccessToken;
    .end local v3    # "twitter":Ltwitter4j/Twitter;
    :goto_0
    return-object v2

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/twitter/TweetFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Exception;

    .prologue
    .line 120
    if-eqz p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->twitting_failure:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->twitting_successful:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fragments/twitter/TweetFragment$1;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 95
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TweetFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/TweetFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fragments/twitter/TweetFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Tweeting..."

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    return-void
.end method
