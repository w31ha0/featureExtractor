.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$2;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$2;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 684
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "Disabling webview visibility"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$2;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->webViewVisibility(Z)V

    .line 686
    return-void
.end method
