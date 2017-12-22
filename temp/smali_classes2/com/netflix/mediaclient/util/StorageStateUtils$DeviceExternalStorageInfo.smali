.class public Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;
.super Ljava/lang/Object;
.source "StorageStateUtils.java"


# instance fields
.field public final mExternalStorageInfoList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storageInfoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/util/StorageStateUtils$ExternalStorageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mNumberOfExternalStorage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "storageCount"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;->mExternalStorageInfoList:Ljava/util/List;

    .line 113
    iput p1, p0, Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;->mNumberOfExternalStorage:I

    .line 114
    return-void
.end method


# virtual methods
.method public isPermissionProblem(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;->mExternalStorageInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;->mExternalStorageInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/util/StorageStateUtils$DeviceExternalStorageInfo;->mExternalStorageInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/StorageStateUtils$ExternalStorageInfo;

    iget-boolean v0, v0, Lcom/netflix/mediaclient/util/StorageStateUtils$ExternalStorageInfo;->mIsWritable:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 119
    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isPermissionNotGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 119
    goto :goto_0
.end method
