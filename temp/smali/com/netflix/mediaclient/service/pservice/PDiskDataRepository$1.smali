.class final Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$1;
.super Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileLoadedCallback;
.source "PDiskDataRepository.java"


# instance fields
.field final synthetic val$loadCallback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/util/data/DataRepository;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V
    .locals 0

    .prologue
    .line 42
    iput-object p3, p0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$1;->val$loadCallback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileLoadedCallback;-><init>(Lcom/netflix/mediaclient/util/data/DataRepository;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    return-void
.end method


# virtual methods
.method public onLoaded([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V
    .locals 2

    .prologue
    .line 46
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$1;->getRepository()Lcom/netflix/mediaclient/util/data/DataRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$1;->val$loadCallback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->access$000(Lcom/netflix/mediaclient/util/data/DataRepository;[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string/jumbo v0, "nf_preapp_dataRepo"

    const-string/jumbo v1, "No saved preAppData found."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$1;->getCallback()Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;->onDataLoaded(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    goto :goto_0
.end method
