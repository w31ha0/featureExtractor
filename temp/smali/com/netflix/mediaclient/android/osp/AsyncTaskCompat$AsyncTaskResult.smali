.class Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTaskCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;


# direct methods
.method varargs constructor <init>(Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;->mTask:Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat;

    .line 494
    iput-object p2, p0, Lcom/netflix/mediaclient/android/osp/AsyncTaskCompat$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 495
    return-void
.end method
