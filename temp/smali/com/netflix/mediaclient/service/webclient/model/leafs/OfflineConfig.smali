.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
.super Ljava/lang/Object;
.source "OfflineConfig.java"


# static fields
.field private static final DEFAULT_MAINTENANCE_JOB_PERIOD_IN_HRS:I = 0x18

.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private disableOfflineFeature:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableOfflineFeature"
    .end annotation
.end field

.field private maintenanceJobPeriodInHrs:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "maintenanceJobPeriodInHrs"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;-><init>()V

    .line 32
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->disableOfflineFeature:Z

    .line 33
    const/16 v1, 0x18

    iput v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->maintenanceJobPeriodInHrs:I

    .line 34
    return-object v0
.end method


# virtual methods
.method public getMaintenanceJobPeriodInHrs()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->maintenanceJobPeriodInHrs:I

    return v0
.end method

.method public isOfflineFeatureDisabled()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/OfflineConfig;->disableOfflineFeature:Z

    return v0
.end method
