.class Lcom/netflix/mediaclient/service/NrdController$NrdJSCmdReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NrdController.java"


# static fields
.field public static final JS_BRIDGE_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.JS_BRIDGE_CMD"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/NrdController;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/service/NrdController;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NrdController$NrdJSCmdReceiver;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 240
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.JS_BRIDGE_CMD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    const-string/jumbo v1, "object"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    const-string/jumbo v2, "method"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    const-string/jumbo v3, "params"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 249
    iget-object v3, p0, Lcom/netflix/mediaclient/service/NrdController$NrdJSCmdReceiver;->this$0:Lcom/netflix/mediaclient/service/NrdController;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/NrdController;->access$200(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v3

    invoke-interface {v3, v1, v2, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string/jumbo v1, "nf_nrdcontroller"

    const-string/jumbo v2, "Unintented Exception thrown "

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
