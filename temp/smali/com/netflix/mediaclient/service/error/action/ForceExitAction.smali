.class public Lcom/netflix/mediaclient/service/error/action/ForceExitAction;
.super Lcom/netflix/mediaclient/service/error/action/BaseAction;
.source "ForceExitAction.java"


# instance fields
.field private doNotWait:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/error/action/BaseAction;-><init>(Landroid/app/Activity;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/error/action/BaseAction;-><init>(Landroid/app/Activity;)V

    .line 25
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/error/action/ForceExitAction;->doNotWait:Z

    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 35
    :try_start_0
    const-string/jumbo v0, "ErrorManager"

    const-string/jumbo v1, "Waiting 1.5 second to exit app"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/error/action/ForceExitAction;->doNotWait:Z

    if-nez v0, :cond_0

    .line 37
    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    const-string/jumbo v0, "ErrorManager"

    const-string/jumbo v1, "Kill app"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/action/ForceExitAction;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->forceStop(Landroid/content/Context;)V

    .line 44
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    const-string/jumbo v1, "ErrorManager"

    const-string/jumbo v2, "Wait is interrupted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
