.class Lcom/novel/reader/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/MainActivity;->onStart()V
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
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;",
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
    .line 163
    iput-object p1, p0, Lcom/novel/reader/MainActivity$1;->this$0:Lcom/novel/reader/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V
    .locals 1
    .param p1, "googleSignInResult"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/novel/reader/MainActivity$1;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v0}, Lcom/novel/reader/MainActivity;->access$000(Lcom/novel/reader/MainActivity;)V

    .line 167
    iget-object v0, p0, Lcom/novel/reader/MainActivity$1;->this$0:Lcom/novel/reader/MainActivity;

    invoke-static {v0, p1}, Lcom/novel/reader/MainActivity;->access$100(Lcom/novel/reader/MainActivity;Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    .line 168
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 163
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-virtual {p0, p1}, Lcom/novel/reader/MainActivity$1;->onResult(Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;)V

    return-void
.end method
