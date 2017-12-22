.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$9;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "SignupActivity.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

.field final synthetic val$callbackFunction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$9;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$9;->val$callbackFunction:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$9;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$9;->val$callbackFunction:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->access$2000(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 864
    return-void
.end method
