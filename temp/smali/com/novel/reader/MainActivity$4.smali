.class Lcom/novel/reader/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/MainActivity;->signOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/MainActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/novel/reader/MainActivity$4;->this$0:Lcom/novel/reader/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 214
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/novel/reader/MainActivity$4;->onResult(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/novel/reader/MainActivity$4;->this$0:Lcom/novel/reader/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/novel/reader/MainActivity;->access$400(Lcom/novel/reader/MainActivity;Z)V

    .line 218
    return-void
.end method
