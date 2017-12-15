.class final Lcom/flurry/android/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/flurry/android/u;


# direct methods
.method constructor <init>(Lcom/flurry/android/u;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/flurry/android/j;->a:Lcom/flurry/android/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/flurry/android/j;->a:Lcom/flurry/android/u;

    iget-object v0, v0, Lcom/flurry/android/u;->a:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->f(Lcom/flurry/android/v;)V

    .line 877
    return-void
.end method
