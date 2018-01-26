.class public Lcom/biznessapps/activities/TwitterLoginActivity;
.super Landroid/app/Activity;
.source "TwitterLoginActivity.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# static fields
.field private static CALLBACK_URL:Ljava/lang/String; = null

.field public static final DATA_TO_TWEET:Ljava/lang/String; = "data_to_tweet"

.field private static OAUTH_VERIFIER:Ljava/lang/String; = null

.field public static final TWITTER_CONSUMER_KEY:Ljava/lang/String; = "ibeMh2JAmmQw09B1nfap5Q"

.field public static final TWITTER_CONSUMER_SECRET:Ljava/lang/String; = "dkomjgXm50XtNmWDn0FhJJpswGvdfIPqfYwfxqMar38"

.field private static requestToken:Ltwitter4j/http/RequestToken;

.field private static twitter:Ltwitter4j/Twitter;


# instance fields
.field private progress:Landroid/app/ProgressDialog;

.field private twitterOauthWebview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "http://www.google.com/callback"

    sput-object v0, Lcom/biznessapps/activities/TwitterLoginActivity;->CALLBACK_URL:Ljava/lang/String;

    .line 36
    const-string v0, "oauth_verifier"

    sput-object v0, Lcom/biznessapps/activities/TwitterLoginActivity;->OAUTH_VERIFIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ltwitter4j/Twitter;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/biznessapps/activities/TwitterLoginActivity;->twitter:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static synthetic access$002(Ltwitter4j/Twitter;)Ltwitter4j/Twitter;
    .locals 0
    .param p0, "x0"    # Ltwitter4j/Twitter;

    .prologue
    .line 26
    sput-object p0, Lcom/biznessapps/activities/TwitterLoginActivity;->twitter:Ltwitter4j/Twitter;

    return-object p0
.end method

.method static synthetic access$100()Ltwitter4j/http/RequestToken;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/biznessapps/activities/TwitterLoginActivity;->requestToken:Ltwitter4j/http/RequestToken;

    return-object v0
.end method

.method static synthetic access$102(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/RequestToken;
    .locals 0
    .param p0, "x0"    # Ltwitter4j/http/RequestToken;

    .prologue
    .line 26
    sput-object p0, Lcom/biznessapps/activities/TwitterLoginActivity;->requestToken:Ltwitter4j/http/RequestToken;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/biznessapps/activities/TwitterLoginActivity;->CALLBACK_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/activities/TwitterLoginActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/activities/TwitterLoginActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/biznessapps/activities/TwitterLoginActivity;->twitterOauthWebview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/activities/TwitterLoginActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/activities/TwitterLoginActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/biznessapps/activities/TwitterLoginActivity;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/activities/TwitterLoginActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/activities/TwitterLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/biznessapps/activities/TwitterLoginActivity;->handleAuthResponse(Ljava/lang/String;)V

    return-void
.end method

.method private cacher()Lcom/biznessapps/api/CachingManager;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method private getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/biznessapps/activities/TwitterLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/activities/TwitterLoginActivity$2;-><init>(Lcom/biznessapps/activities/TwitterLoginActivity;)V

    return-object v0
.end method

.method private handleAuthResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 122
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    sget-object v4, Lcom/biznessapps/activities/TwitterLoginActivity;->OAUTH_VERIFIER:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "verifier":Ljava/lang/String;
    sget-object v4, Lcom/biznessapps/activities/TwitterLoginActivity;->twitter:Ltwitter4j/Twitter;

    sget-object v5, Lcom/biznessapps/activities/TwitterLoginActivity;->requestToken:Ltwitter4j/http/RequestToken;

    invoke-virtual {v4, v5, v3}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    .line 127
    .local v0, "accessToken":Ltwitter4j/http/AccessToken;
    invoke-direct {p0}, Lcom/biznessapps/activities/TwitterLoginActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/CachingManager;->setTwitterOauthSecret(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/biznessapps/activities/TwitterLoginActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/CachingManager;->setTwitterOauthToken(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/biznessapps/activities/TwitterLoginActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/CachingManager;->setTwitterUID(I)V

    .line 130
    invoke-direct {p0}, Lcom/biznessapps/activities/TwitterLoginActivity;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/CachingManager;->setTwitterUserName(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/biznessapps/activities/TwitterLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/ViewUtils;->tweetAppName(Landroid/content/Context;)V

    .line 133
    invoke-virtual {p0}, Lcom/biznessapps/activities/TwitterLoginActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "accessToken":Ltwitter4j/http/AccessToken;
    .end local v3    # "verifier":Ljava/lang/String;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/biznessapps/activities/TwitterLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->twitting_failure:I

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    .line 137
    invoke-virtual {p0}, Lcom/biznessapps/activities/TwitterLoginActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/biznessapps/layout/R$layout;->twitter_login_view:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/TwitterLoginActivity;->setContentView(I)V

    .line 50
    sget v0, Lcom/biznessapps/layout/R$id;->twitter_oauth_internal_webview:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/TwitterLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/biznessapps/activities/TwitterLoginActivity;->twitterOauthWebview:Landroid/webkit/WebView;

    .line 51
    iget-object v0, p0, Lcom/biznessapps/activities/TwitterLoginActivity;->twitterOauthWebview:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/biznessapps/activities/TwitterLoginActivity;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53
    invoke-static {p0}, Lcom/biznessapps/utils/ViewUtils;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/activities/TwitterLoginActivity;->progress:Landroid/app/ProgressDialog;

    .line 55
    iget-object v0, p0, Lcom/biznessapps/activities/TwitterLoginActivity;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/biznessapps/activities/TwitterLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/activities/TwitterLoginActivity$1;-><init>(Lcom/biznessapps/activities/TwitterLoginActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 88
    return-void
.end method
