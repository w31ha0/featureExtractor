.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData;
.super Ljava/lang/Object;
.source "KubrickConfigData.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/configuration/KubrickConfiguration;


# instance fields
.field private cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

.field private cellInt:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cell"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData;->cellInt:I

    return-void
.end method


# virtual methods
.method public getCell()Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData;->cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    if-nez v0, :cond_0

    .line 36
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData;->cellInt:I

    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;->access$000(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData;->cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData;->cellEnum:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData$KubrickCell;

    return-object v0
.end method
