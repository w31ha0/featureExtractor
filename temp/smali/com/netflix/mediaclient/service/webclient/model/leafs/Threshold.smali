.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;
.super Ljava/lang/Object;
.source "Threshold.java"


# instance fields
.field private red:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "red"
    .end annotation
.end field

.field private yellow:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "yellow"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRed()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->red:I

    return v0
.end method

.method public getYellow()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->yellow:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Threshold{red="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->red:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", yellow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->yellow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
