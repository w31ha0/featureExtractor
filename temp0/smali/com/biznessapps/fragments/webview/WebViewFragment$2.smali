.class Lcom/biznessapps/fragments/webview/WebViewFragment$2;
.super Landroid/webkit/WebViewClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/webview/WebViewFragment;->initControls(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/webview/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/webview/WebViewFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/biznessapps/fragments/webview/WebViewFragment$2;->this$0:Lcom/biznessapps/fragments/webview/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewFragment$2;->this$0:Lcom/biznessapps/fragments/webview/WebViewFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/webview/WebViewFragment;->access$100(Lcom/biznessapps/fragments/webview/WebViewFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 93
    if-nez p2, :cond_0

    .line 106
    :goto_0
    return v1

    .line 96
    :cond_0
    const-string v3, "mailto:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-static {p2}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v0

    .line 98
    .local v0, "mt":Landroid/net/MailTo;
    iget-object v3, p0, Lcom/biznessapps/fragments/webview/WebViewFragment$2;->this$0:Lcom/biznessapps/fragments/webview/WebViewFragment;

    invoke-virtual {v3}, Lcom/biznessapps/fragments/webview/WebViewFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4, v6, v6}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 101
    goto :goto_0

    .line 102
    .end local v0    # "mt":Landroid/net/MailTo;
    :cond_1
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/biznessapps/fragments/webview/WebViewFragment$2;->this$0:Lcom/biznessapps/fragments/webview/WebViewFragment;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v3}, Lcom/biznessapps/fragments/webview/WebViewFragment;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 104
    goto :goto_0

    .line 106
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
