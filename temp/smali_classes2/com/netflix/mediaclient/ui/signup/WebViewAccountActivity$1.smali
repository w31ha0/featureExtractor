.class Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$1;
.super Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;
.source "WebViewAccountActivity.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$1;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;-><init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/signup/AccountWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$1;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->onWebViewLoaded()V

    .line 111
    return-void
.end method
