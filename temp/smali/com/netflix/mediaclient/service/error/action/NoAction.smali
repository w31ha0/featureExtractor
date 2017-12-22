.class public Lcom/netflix/mediaclient/service/error/action/NoAction;
.super Lcom/netflix/mediaclient/service/error/action/BaseAction;
.source "NoAction.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/error/action/BaseAction;-><init>(Landroid/app/Activity;)V

    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 27
    const-string/jumbo v0, "ErrorManager"

    const-string/jumbo v1, "User pressed OK"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method
