.class public final Lcom/netflix/mediaclient/service/mdx/CommandHandler;
.super Ljava/lang/Object;
.source "CommandHandler.java"


# static fields
.field private static final DEFAULT_INTEGER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "nf_mdx"


# instance fields
.field private mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/CommandInterface;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    .line 16
    return-void
.end method


# virtual methods
.method handleCommandIntent(Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 19
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.MDX"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCommandIntent:intent is not for mdx, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    const-string/jumbo v0, "nf_mdx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCommandIntent:intent doesn\'t have action, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 29
    :cond_1
    const-string/jumbo v1, "uuid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_GETCAPABILITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerGetCapability(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_GETSTATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerGetCurrentState(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_PLAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 35
    const-string/jumbo v2, "catalogId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    const-string/jumbo v3, "trackId"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 37
    const-string/jumbo v4, "episodeId"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    const-string/jumbo v5, "previewPinProtected"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 40
    const-string/jumbo v5, "time"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 41
    if-ne v3, v7, :cond_4

    .line 42
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCommandIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", invalid parameters"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 45
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface/range {v0 .. v6}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerPlay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZ)V

    goto/16 :goto_0

    .line 46
    :cond_5
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_PAUSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerPause(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_6
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_RESUME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerResume(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50
    :cond_7
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_SEEK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 51
    const-string/jumbo v2, "time"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 52
    if-ne v2, v7, :cond_8

    .line 53
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCommandIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", invalid parameters"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 56
    :cond_8
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerSeek(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 57
    :cond_9
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_SKIP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 58
    const-string/jumbo v2, "time"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 59
    if-ne v2, v7, :cond_a

    .line 60
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCommandIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", invalid parameters"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 63
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerSkip(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 64
    :cond_b
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_STOP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerStop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_c
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_SETAUDIOSUB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 67
    const-string/jumbo v2, "audioTrackId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string/jumbo v3, "subtitleTrackId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 70
    :cond_d
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCommandIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", invalid parameters"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 73
    :cond_e
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerSetAudioSubtitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :cond_f
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_SETVOLUME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 75
    const-string/jumbo v2, "volume"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 76
    if-ne v2, v7, :cond_10

    .line 77
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCommandIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", invalid parameters"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    :cond_10
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerSetVolume(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 81
    :cond_11
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_AUTOADV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 82
    const-string/jumbo v2, "speed"

    invoke-virtual {p1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 83
    if-ne v2, v7, :cond_12

    .line 84
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCommandIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", invalid parameters"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 87
    :cond_12
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerAutoAdvance(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 88
    :cond_13
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_METADATA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 89
    const-string/jumbo v2, "catalogId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const-string/jumbo v3, "episodeId"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    const-string/jumbo v4, "type"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 93
    :cond_14
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCommandIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", invalid parameters"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 96
    :cond_15
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerChangeMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_16
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_DIALOGRESP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 98
    const-string/jumbo v2, "uid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string/jumbo v3, "data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {v3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 101
    :cond_17
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCommandIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", invalid parameters"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    :cond_18
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerDialogReponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :cond_19
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_GETAUDIOSUB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 106
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerGetAudioSubtitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_1a
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_PINCONFIRMED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->pinConfirmed(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_1b
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_PINCANCELLED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->pinCancelled(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_1c
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.MDX_STOPPOSTPALY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CommandHandler;->mTarget:Lcom/netflix/mediaclient/service/mdx/CommandInterface;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/CommandInterface;->playerStopPostplay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_1d
    const-string/jumbo v1, "nf_mdx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleCommandIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", unknown command"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
