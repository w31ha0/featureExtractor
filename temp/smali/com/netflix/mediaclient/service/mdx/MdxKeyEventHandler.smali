.class public Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;
.super Ljava/lang/Object;
.source "MdxKeyEventHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_key"

.field private static final VOLUME_DELTA:I = 0xa


# instance fields
.field private final callbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

.field private final lastKey:Lcom/netflix/mediaclient/util/LastKeyEvent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/util/LastKeyEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/LastKeyEvent;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->lastKey:Lcom/netflix/mediaclient/util/LastKeyEvent;

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->callbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;)Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->callbacks:Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$MdxKeyEventCallbacks;

    return-object v0
.end method

.method private isPlayerInValidState(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;)Z
    .locals 2

    .prologue
    .line 107
    const-string/jumbo v1, "nf_key"

    if-nez p1, :cond_0

    const-string/jumbo v0, "null player"

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;->isVolumeControl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;->getCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    if-nez p3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    invoke-static {p2}, Lcom/netflix/mediaclient/util/MdxUtils;->isCurrentMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 48
    const-string/jumbo v1, "nf_key"

    const-string/jumbo v2, "Current mdx target is not available - not handling key event"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->isPlayerInValidState(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->lastKey:Lcom/netflix/mediaclient/util/LastKeyEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/LastKeyEvent;->shouldIgnore(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    const-string/jumbo v0, "nf_key"

    const-string/jumbo v2, "Volume key up is pressed, ignored"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    .line 93
    goto :goto_0

    .line 57
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->isPlayerInValidState(Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;->lastKey:Lcom/netflix/mediaclient/util/LastKeyEvent;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/util/LastKeyEvent;->shouldIgnore(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    const-string/jumbo v0, "nf_key"

    const-string/jumbo v2, "Volume key down is pressed, ignored"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v0, v1

    .line 71
    goto :goto_0

    .line 61
    :cond_3
    const-string/jumbo v0, "nf_key"

    const-string/jumbo v2, "Volume key down is pressed, sending..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$1;

    invoke-direct {v2, p0, p3}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$1;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;)V

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 74
    :cond_4
    const-string/jumbo v1, "nf_key"

    const-string/jumbo v2, "Volume key down is pressed, pass it"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    :cond_5
    const-string/jumbo v0, "nf_key"

    const-string/jumbo v2, "Volume key up is pressed, sending..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$2;

    invoke-direct {v2, p0, p3}, Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler$2;-><init>(Lcom/netflix/mediaclient/service/mdx/MdxKeyEventHandler;Lcom/netflix/mediaclient/ui/mdx/RemotePlayer;)V

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 96
    :cond_6
    const-string/jumbo v1, "nf_key"

    const-string/jumbo v2, "Volume key up is pressed, pass it"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
