.class Lb/a/a/a/a/d/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lb/a/a/a/a/d/g;


# direct methods
.method constructor <init>(Lb/a/a/a/a/d/g;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lb/a/a/a/a/d/j;->a:Lb/a/a/a/a/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lb/a/a/a/a/d/j;->a:Lb/a/a/a/a/d/g;

    iget-object v0, v0, Lb/a/a/a/a/d/g;->c:Lb/a/a/a/a/d/o;

    invoke-interface {v0}, Lb/a/a/a/a/d/o;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    iget-object v1, p0, Lb/a/a/a/a/d/j;->a:Lb/a/a/a/a/d/g;

    iget-object v1, v1, Lb/a/a/a/a/d/g;->a:Landroid/content/Context;

    const-string v2, "Failed to send events files."

    invoke-static {v1, v2, v0}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
