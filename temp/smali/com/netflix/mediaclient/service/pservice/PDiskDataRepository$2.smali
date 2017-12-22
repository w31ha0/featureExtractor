.class final Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$2;
.super Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileDataLoadedCallback;
.source "PDiskDataRepository.java"


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileDataLoadedCallback;-><init>(Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    return-void
.end method


# virtual methods
.method public onDataLoaded(Ljava/lang/String;[BJ)V
    .locals 4

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 85
    :cond_0
    const-string/jumbo v1, "nf_preapp_dataRepo"

    const-string/jumbo v2, "We failed to retrieve payload."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$2;->getCallback()Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;->onDataLoaded(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    .line 101
    return-void

    .line 88
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 89
    invoke-static {v1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/pservice/PDiskData;

    move-result-object v0

    .line 91
    sget-object v1, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const-string/jumbo v1, "nf_preapp_dataRepo"

    const-string/jumbo v2, "onDataLoaded - diskData.print"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->print()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    const-string/jumbo v2, "nf_preapp_dataRepo"

    const-string/jumbo v3, "Failed to build object from stored data."

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
