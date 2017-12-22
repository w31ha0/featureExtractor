.class abstract Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileDataLoadedCallback;
.super Ljava/lang/Object;
.source "PDiskDataRepository.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;


# instance fields
.field private final callback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileDataLoadedCallback;->callback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    .line 135
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$FileDataLoadedCallback;->callback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    return-object v0
.end method
