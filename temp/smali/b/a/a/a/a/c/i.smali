.class Lb/a/a/a/a/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lb/a/a/a/a/c/h;


# direct methods
.method constructor <init>(Lb/a/a/a/a/c/h;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lb/a/a/a/a/c/i;->b:Lb/a/a/a/a/c/h;

    iput-object p2, p0, Lb/a/a/a/a/c/i;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lb/a/a/a/a/c/i;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v0, p0, Lb/a/a/a/a/c/i;->b:Lb/a/a/a/a/c/h;

    invoke-virtual {v0}, Lb/a/a/a/a/c/h;->a()V

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/a/c/i;->b:Lb/a/a/a/a/c/h;

    invoke-virtual {v1}, Lb/a/a/a/a/c/h;->a()V

    throw v0
.end method
