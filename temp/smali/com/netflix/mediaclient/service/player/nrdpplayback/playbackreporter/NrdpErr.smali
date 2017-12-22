.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
.super Ljava/lang/Object;
.source "NrdpErr.java"


# instance fields
.field brError:Ljava/lang/String;

.field deviceSpecificCode:Ljava/lang/String;

.field deviceSpecificString:Ljava/lang/String;

.field errorCode:Ljava/lang/String;

.field errorString:Ljava/lang/String;

.field uiDisplayErrorString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDisplayErrorCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    const-string/jumbo v0, ""

    .line 72
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->brError:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->brError:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    if-ltz v0, :cond_3

    .line 79
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    const-string/jumbo v2, "."

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 80
    if-ltz v0, :cond_2

    .line 81
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public buildDisplayErrorString(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->uiDisplayErrorString:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->getDisplayErrorCode()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    const-string/jumbo v2, "3."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    const v1, 0x7f090051

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->uiDisplayErrorString:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_1
    const v1, 0x7f09004f

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->uiDisplayErrorString:Ljava/lang/String;

    goto :goto_0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getUiDisplayErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->uiDisplayErrorString:Ljava/lang/String;

    return-object v0
.end method
