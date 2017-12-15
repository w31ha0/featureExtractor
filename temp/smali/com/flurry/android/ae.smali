.class final Lcom/flurry/android/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/flurry/android/aj;

.field final synthetic d:Lcom/flurry/android/l;


# direct methods
.method constructor <init>(Lcom/flurry/android/l;Ljava/lang/String;Landroid/content/Context;Lcom/flurry/android/aj;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/flurry/android/ae;->d:Lcom/flurry/android/l;

    iput-object p2, p0, Lcom/flurry/android/ae;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/android/ae;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/flurry/android/ae;->c:Lcom/flurry/android/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/flurry/android/ae;->d:Lcom/flurry/android/l;

    iget-object v1, p0, Lcom/flurry/android/ae;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/android/l;->a(Lcom/flurry/android/l;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/flurry/android/aa;

    invoke-direct {v2, p0, v0}, Lcom/flurry/android/aa;-><init>(Lcom/flurry/android/ae;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method
