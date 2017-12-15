.class final Lcom/flurry/android/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Z

.field private synthetic c:Lcom/flurry/android/v;


# direct methods
.method constructor <init>(Lcom/flurry/android/v;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/flurry/android/x;->c:Lcom/flurry/android/v;

    iput-object p2, p0, Lcom/flurry/android/x;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/flurry/android/x;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/flurry/android/x;->c:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->a(Lcom/flurry/android/v;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/flurry/android/x;->c:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->b(Lcom/flurry/android/v;)V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/flurry/android/x;->c:Lcom/flurry/android/v;

    iget-object v1, p0, Lcom/flurry/android/x;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/flurry/android/x;->b:Z

    invoke-static {v0, v1, v2}, Lcom/flurry/android/v;->a(Lcom/flurry/android/v;Landroid/content/Context;Z)V

    .line 795
    return-void
.end method
