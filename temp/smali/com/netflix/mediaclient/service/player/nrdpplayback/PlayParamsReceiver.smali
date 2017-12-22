.class Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlayParamsReceiver.java"


# static fields
.field public static final BUFFERSIZE_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.TWEAK_BUFFERSIZE"

.field private static final TAG:Ljava/lang/String; = "Bandwidth_Rcvr"

.field public static final TWEAKBW_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.TWEAKBW"


# instance fields
.field mPlayController:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;->mPlayController:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;->handleTweakBandwith(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;->handleBufferSize(Landroid/content/Intent;)V

    return-void
.end method

.method private getHandlerForBufferSize(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver$2;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver$2;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;Landroid/content/Intent;)V

    return-object v0
.end method

.method private getHandlerForTweakBandwith(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver$1;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver$1;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;Landroid/content/Intent;)V

    return-object v0
.end method

.method private handleBufferSize(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    const-string/jumbo v1, "bufferSizeInMS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 102
    if-gtz v0, :cond_0

    .line 103
    const v0, 0x1d4c0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;->mPlayController:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->overrideBuffer(I)V

    .line 106
    const-string/jumbo v1, "Bandwidth_Rcvr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Video Buffer Size in MS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string/jumbo v1, "Bandwidth_Rcvr"

    const-string/jumbo v2, "Unintented Exception thrown "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private handleTweakBandwith(Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    const-string/jumbo v0, "maxbw"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 68
    if-gtz v0, :cond_3

    .line 69
    const/16 v0, 0x12c0

    move v2, v0

    .line 71
    :goto_0
    const-string/jumbo v0, "minbw"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 73
    if-ltz v0, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 76
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;->mPlayController:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {v3, v0, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->overrideBitrate(II)V

    .line 77
    const-string/jumbo v3, "Bandwidth_Rcvr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MaxBw set: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "MinBw set: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_2
    :goto_1
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string/jumbo v2, "Bandwidth_Rcvr"

    const-string/jumbo v3, "Unintented Exception thrown "

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 40
    const-string/jumbo v0, "Bandwidth_Rcvr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received an action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    .line 43
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.TWEAKBW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;->getHandlerForTweakBandwith(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Runnable;

    move-result-object v0

    .line 48
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;->mPlayController:Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/NrdpPlayback;->excuteOnPlayExecutor(Ljava/lang/Runnable;)V

    .line 49
    return-void

    .line 45
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.TWEAK_BUFFERSIZE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/PlayParamsReceiver;->getHandlerForBufferSize(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0
.end method
