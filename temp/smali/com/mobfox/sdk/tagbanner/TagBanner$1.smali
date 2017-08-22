.class Lcom/mobfox/sdk/tagbanner/TagBanner$1;
.super Landroid/webkit/WebViewClient;
.source "TagBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/tagbanner/TagBanner;->setWebViewSettings(Lcom/mobfox/sdk/tagbanner/TagBanner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

.field final synthetic val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/tagbanner/TagBanner;Lcom/mobfox/sdk/tagbanner/TagBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/tagbanner/TagBanner;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$1;->this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

    iput-object p2, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$1;->val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 108
    iget-object v2, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$1;->val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;

    iget-boolean v2, v2, Lcom/mobfox/sdk/tagbanner/TagBanner;->userInteraction:Z

    if-nez v2, :cond_0

    .line 122
    :goto_0
    return v4

    .line 114
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "launchBrowser":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 116
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v2, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$1;->val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;

    iget-object v2, v2, Lcom/mobfox/sdk/tagbanner/TagBanner;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "launchBrowser":Landroid/content/Intent;
    :goto_1
    iget-object v2, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$1;->val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;

    iget-object v2, v2, Lcom/mobfox/sdk/tagbanner/TagBanner;->listener:Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;

    iget-object v3, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$1;->val$self:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-interface {v2, v3}, Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;->onBannerClicked(Landroid/view/View;)V

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "MobFoxBanner"

    const-string v3, "launch browser exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
