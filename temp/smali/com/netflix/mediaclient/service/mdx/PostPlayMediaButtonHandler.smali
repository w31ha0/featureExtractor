.class public final Lcom/netflix/mediaclient/service/mdx/PostPlayMediaButtonHandler;
.super Ljava/lang/Object;
.source "PostPlayMediaButtonHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostPlayMediaButtonHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private playNextVideo(Landroid/content/Context;IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_PLAY_VIDEOIDS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netflix/mediaclient/service/NetflixService;

    .line 58
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDXRCC"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    if-lez p2, :cond_0

    .line 63
    const-string/jumbo v1, "catalogId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    :cond_0
    if-lez p3, :cond_1

    .line 67
    const-string/jumbo v1, "episodeId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    :cond_1
    invoke-static {p4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const-string/jumbo v1, "uuid"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 75
    return-void
.end method

.method private stopMDXTarget(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netflix/mediaclient/service/NetflixService;

    .line 41
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDX"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.MDXRCC"

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string/jumbo v1, "uuid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    return-void
.end method


# virtual methods
.method public handleButtonDown(Landroid/content/Context;Landroid/view/KeyEvent;IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 31
    const-string/jumbo v0, "PostPlayMediaButtonHandler"

    const-string/jumbo v1, "received unhandled key"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :goto_0
    return-void

    .line 21
    :sswitch_0
    const-string/jumbo v0, "PostPlayMediaButtonHandler"

    const-string/jumbo v1, "received play_stop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-direct {p0, p1, p5}, Lcom/netflix/mediaclient/service/mdx/PostPlayMediaButtonHandler;->stopMDXTarget(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :sswitch_1
    const-string/jumbo v0, "PostPlayMediaButtonHandler"

    const-string/jumbo v1, "received play_pause"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :sswitch_2
    const-string/jumbo v0, "PostPlayMediaButtonHandler"

    const-string/jumbo v1, "received play"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/netflix/mediaclient/service/mdx/PostPlayMediaButtonHandler;->playNextVideo(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    .line 19
    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_1
        0x56 -> :sswitch_0
        0x7e -> :sswitch_2
    .end sparse-switch
.end method
