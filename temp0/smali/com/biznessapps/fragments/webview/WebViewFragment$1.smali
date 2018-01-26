.class Lcom/biznessapps/fragments/webview/WebViewFragment$1;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/webview/WebViewFragment;
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
    .line 38
    iput-object p1, p0, Lcom/biznessapps/fragments/webview/WebViewFragment$1;->this$0:Lcom/biznessapps/fragments/webview/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/biznessapps/fragments/webview/WebViewFragment$1;->this$0:Lcom/biznessapps/fragments/webview/WebViewFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/webview/WebViewFragment;->access$000(Lcom/biznessapps/fragments/webview/WebViewFragment;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/biznessapps/fragments/webview/WebViewFragment$1;->this$0:Lcom/biznessapps/fragments/webview/WebViewFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/webview/WebViewFragment;->access$000(Lcom/biznessapps/fragments/webview/WebViewFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 43
    .local v0, "canGoBack":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/biznessapps/fragments/webview/WebViewFragment$1;->this$0:Lcom/biznessapps/fragments/webview/WebViewFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/webview/WebViewFragment;->access$000(Lcom/biznessapps/fragments/webview/WebViewFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 46
    :cond_0
    return v0

    .line 42
    .end local v0    # "canGoBack":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
