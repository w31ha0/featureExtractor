.class public Lcom/netflix/mediaclient/util/StorageStateUtils$ExternalStorageInfo;
.super Ljava/lang/Object;
.source "StorageStateUtils.java"


# instance fields
.field public final mDebugInfo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dbgInfo"
    .end annotation
.end field

.field public final mIsEmulated:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emulated"
    .end annotation
.end field

.field public final mIsPrimaryStorage:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primary"
    .end annotation
.end field

.field public final mIsRemovable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "removable"
    .end annotation
.end field

.field public final mIsWritable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "writable"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean p1, p0, Lcom/netflix/mediaclient/util/StorageStateUtils$ExternalStorageInfo;->mIsRemovable:Z

    .line 98
    iput-boolean p2, p0, Lcom/netflix/mediaclient/util/StorageStateUtils$ExternalStorageInfo;->mIsPrimaryStorage:Z

    .line 99
    iput-boolean p3, p0, Lcom/netflix/mediaclient/util/StorageStateUtils$ExternalStorageInfo;->mIsWritable:Z

    .line 100
    iput-boolean p4, p0, Lcom/netflix/mediaclient/util/StorageStateUtils$ExternalStorageInfo;->mIsEmulated:Z

    .line 101
    iput-object p5, p0, Lcom/netflix/mediaclient/util/StorageStateUtils$ExternalStorageInfo;->mDebugInfo:Ljava/lang/String;

    .line 102
    return-void
.end method
