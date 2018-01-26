.class public Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "TwitterLoginFragment.java"


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
    .line 26
    const-string v0, "http://www.google.com/callback"

    sput-object v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->CALLBACK_URL:Ljava/lang/String;

    .line 27
    const-string v0, "oauth_verifier"

    sput-object v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->OAUTH_VERIFIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ltwitter4j/Twitter;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->twitter:Ltwitter4j/Twitter;

    return-object v0
.end method

.method static synthetic access$002(Ltwitter4j/Twitter;)Ltwitter4j/Twitter;
    .locals 0
    .param p0, "x0"    # Ltwitter4j/Twitter;

    .prologue
    .line 24
    sput-object p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->twitter:Ltwitter4j/Twitter;

    return-object p0
.end method

.method static synthetic access$100()Ltwitter4j/http/RequestToken;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->requestToken:Ltwitter4j/http/RequestToken;

    return-object v0
.end method

.method static synthetic access$102(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/RequestToken;
    .locals 0
    .param p0, "x0"    # Ltwitter4j/http/RequestToken;

    .prologue
    .line 24
    sput-object p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->requestToken:Ltwitter4j/http/RequestToken;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->CALLBACK_URL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->twitterOauthWebview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->handleAuthResponse(Ljava/lang/String;)V

    return-void
.end method

.method private getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$2;-><init>(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;)V

    return-object v0
.end method

.method private handleAuthResponse(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 126
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    sget-object v4, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->OAUTH_VERIFIER:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "verifier":Ljava/lang/String;
    sget-object v4, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->twitter:Ltwitter4j/Twitter;

    sget-object v5, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->requestToken:Ltwitter4j/http/RequestToken;

    invoke-virtual {v4, v5, v3}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    .line 131
    .local v0, "accessToken":Ltwitter4j/http/AccessToken;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/CachingManager;->setTwitterOauthSecret(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/CachingManager;->setTwitterOauthToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/CachingManager;->setTwitterUID(I)V

    .line 134
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v0}, Ltwitter4j/http/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/api/CachingManager;->setTwitterUserName(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/biznessapps/activities/CommonFragmentActivity;->setResult(I)V

    .line 137
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "accessToken":Ltwitter4j/http/AccessToken;
    .end local v3    # "verifier":Ljava/lang/String;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/biznessapps/activities/CommonFragmentActivity;->setResult(I)V

    .line 141
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    sget v1, Lcom/biznessapps/layout/R$layout;->twitter_login_view:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->root:Landroid/view/ViewGroup;

    .line 41
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->root:Landroid/view/ViewGroup;

    sget v2, Lcom/biznessapps/layout/R$id;->twitter_oauth_internal_webview:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->twitterOauthWebview:Landroid/webkit/WebView;

    .line 42
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->twitterOauthWebview:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 44
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 45
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 46
    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->progress:Landroid/app/ProgressDialog;

    .line 48
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 49
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;-><init>(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;Landroid/app/Activity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->root:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 89
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/biznessapps/activities/CommonTabFragmentActivity;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Lcom/biznessapps/activities/CommonTabFragmentActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->getViewPager()Lcom/biznessapps/fragments/CustomizableViewPager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/CustomizableViewPager;->enableScrolling(Z)V

    .line 92
    :cond_0
    return-void
.end method
