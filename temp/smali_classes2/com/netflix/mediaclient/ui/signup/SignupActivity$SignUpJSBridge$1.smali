.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$1;
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
    .line 637
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$1;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 640
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$1;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$400(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$1;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->webViewVisibility(Z)V

    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$1;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$402(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Z)Z

    .line 644
    :cond_0
    return-void
.end method
