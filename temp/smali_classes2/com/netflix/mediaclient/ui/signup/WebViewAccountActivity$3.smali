.class Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$3;
.super Ljava/lang/Object;
.source "WebViewAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->access$000(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->webViewVisibility(Z)V

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$3;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->access$002(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;Z)Z

    .line 197
    :cond_0
    return-void
.end method
