.class final Lcom/flurry/android/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/android/v;


# direct methods
.method constructor <init>(Lcom/flurry/android/v;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/flurry/android/r;->a:Lcom/flurry/android/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 810
    iget-object v0, p0, Lcom/flurry/android/r;->a:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->c(Lcom/flurry/android/v;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/android/r;->a:Lcom/flurry/android/v;

    invoke-static {v1}, Lcom/flurry/android/v;->c(Lcom/flurry/android/v;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 811
    return-void
.end method
