.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
.super Ljava/lang/Object;
.source "ABTestConfig.java"


# instance fields
.field private cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

.field private cellInt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cell"
    .end annotation
.end field

.field private isExplicit:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isExplicit"
    .end annotation
.end field

.field private isFallback:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isFallback"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->cellInt:I

    return-void
.end method


# virtual methods
.method public getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-nez v0, :cond_0

    .line 48
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->cellInt:I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->fromInt(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    return-object v0
.end method

.method public isExplicit()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isExplicit:Z

    return v0
.end method

.method public isFallback()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;->isFallback:Z

    return v0
.end method
