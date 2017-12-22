.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;
.super Ljava/lang/Object;
.source "DataSaveConfigData.java"


# instance fields
.field public videoBitrateAuto:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoBitrateAuto"
    .end annotation
.end field

.field public videoBitrateHigh:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoBitrateHigh"
    .end annotation
.end field

.field public videoBitrateLow:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoBitrateLow"
    .end annotation
.end field

.field public videoBitrateMedium:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoBitrateMedium"
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
