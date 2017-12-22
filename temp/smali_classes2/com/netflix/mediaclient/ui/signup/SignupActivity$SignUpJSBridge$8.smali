.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$8;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

.field final synthetic val$callbackFunction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$8;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$8;->val$callbackFunction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 854
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$8;->this$1:Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge$8;->val$callbackFunction:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;->access$1800(Lcom/netflix/mediaclient/ui/signup/SignupActivity$SignUpJSBridge;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 855
    return-void
.end method
