.class public Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;
.super Ljava/lang/Object;
.source "PDiskDataRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaded(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->ENABLE_VERBOSE_LOGGING:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "nf_preapp_dataRepo"

    const-string/jumbo v1, "onDataLoaded - diskData.print"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pservice/PDiskData;->print()V

    .line 34
    :cond_0
    return-void
.end method
