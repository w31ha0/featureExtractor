.class public Lcom/biznessapps/fragments/utils/TellFriendDelegate;
.super Ljava/lang/Object;
.source "TellFriendDelegate.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/biznessapps/fragments/utils/TellFriendDelegate;->closeFriendContent(Landroid/content/Context;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-static {p0, p1, p2}, Lcom/biznessapps/fragments/utils/TellFriendDelegate;->shareViaFacebook(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/biznessapps/fragments/utils/TellFriendDelegate;->openTwitterLoginView(Landroid/app/Activity;)V

    return-void
.end method

.method private static closeFriendContent(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    sget v1, Lcom/biznessapps/layout/R$anim;->hide_tell_friends_dialog:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 82
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    new-instance v1, Lcom/biznessapps/utils/ViewUtils$HideAnimationListener;

    invoke-direct {v1, p1}, Lcom/biznessapps/utils/ViewUtils$HideAnimationListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    return-void
.end method

.method public static initTellFriends(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    .local v1, "context":Landroid/content/Context;
    sget v5, Lcom/biznessapps/layout/R$id;->cancel_button:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    .local v0, "closeFriendDialogButton":Landroid/widget/Button;
    sget v5, Lcom/biznessapps/layout/R$id;->share_by_email_button:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 37
    .local v2, "shareByEmailButton":Landroid/widget/Button;
    sget v5, Lcom/biznessapps/layout/R$id;->share_on_facebook_button:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 38
    .local v3, "shareOnFacebookButton":Landroid/widget/Button;
    sget v5, Lcom/biznessapps/layout/R$id;->share_on_twitter_button:I

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 39
    .local v4, "shareOnTwitterButton":Landroid/widget/Button;
    new-instance v5, Lcom/biznessapps/fragments/utils/TellFriendDelegate$1;

    invoke-direct {v5, p0, p1}, Lcom/biznessapps/fragments/utils/TellFriendDelegate$1;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v5, Lcom/biznessapps/fragments/utils/TellFriendDelegate$2;

    invoke-direct {v5, v1, p0}, Lcom/biznessapps/fragments/utils/TellFriendDelegate$2;-><init>(Landroid/content/Context;Landroid/app/Activity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v5, Lcom/biznessapps/fragments/utils/TellFriendDelegate$3;

    invoke-direct {v5, p0, v1}, Lcom/biznessapps/fragments/utils/TellFriendDelegate$3;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v5, Lcom/biznessapps/fragments/utils/TellFriendDelegate$4;

    invoke-direct {v5, v1, p0, p1}, Lcom/biznessapps/fragments/utils/TellFriendDelegate$4;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method private static openTwitterLoginView(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/TwitterLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method private static shareViaFacebook(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "titleResourceId"    # I

    .prologue
    .line 92
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "dialog":Landroid/app/Dialog;
    sget v2, Lcom/biznessapps/layout/R$layout;->dialog:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 94
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setTitle(I)V

    .line 95
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 97
    sget v2, Lcom/biznessapps/layout/R$id;->webview:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 98
    .local v1, "webView":Landroid/webkit/WebView;
    new-instance v2, Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;

    invoke-direct {v2, v0, p0, v1}, Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;-><init>(Landroid/app/Dialog;Landroid/app/Activity;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    .line 121
    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 123
    return-void
.end method
