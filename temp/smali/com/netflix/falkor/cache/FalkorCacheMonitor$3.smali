.class Lcom/netflix/falkor/cache/FalkorCacheMonitor$3;
.super Ljava/lang/Object;
.source "FalkorCacheMonitor.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/ApplicationStateListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;


# direct methods
.method constructor <init>(Lcom/netflix/falkor/cache/FalkorCacheMonitor;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$3;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackground(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/falkor/cache/FalkorCacheMonitor$3;->this$0:Lcom/netflix/falkor/cache/FalkorCacheMonitor;

    const-string/jumbo v1, "state"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/falkor/cache/FalkorCacheMonitor;->logCacheAction(Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 108
    return-void
.end method

.method public onFocusGain(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method public onFocusLost(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onForeground(Lcom/netflix/mediaclient/android/app/UserInputManager;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onUiGone(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onUiStarted(Lcom/netflix/mediaclient/android/app/UserInputManager;)V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
