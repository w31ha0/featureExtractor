.class final Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;
.super Landroid/webkit/WebViewClient;
.source "TellFriendDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/utils/TellFriendDelegate;->shareViaFacebook(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 104
    const-string v0, "www.facebook.com/ajax/sharer/submit_page"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 107
    iget-object v0, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->facebook_sharing_successful:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    .line 110
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;->val$webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/biznessapps/fragments/utils/TellFriendDelegate$5;->val$webView:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 117
    return-void
.end method
