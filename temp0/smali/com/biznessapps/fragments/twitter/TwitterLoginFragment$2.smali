.class Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$2;
.super Landroid/webkit/WebViewClient;
.source "TwitterLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->getWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$2;->this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$2;->this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$400(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$2;->this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$400(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$2;->this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$400(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 103
    invoke-static {}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$2;->this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    invoke-static {v0, p2}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$500(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
