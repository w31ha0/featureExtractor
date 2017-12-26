.class Lb/a/a/a/a/d/k;
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
    .line 75
    iput-object p1, p0, Lb/a/a/a/a/d/k;->a:Lb/a/a/a/a/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lb/a/a/a/a/d/k;->a:Lb/a/a/a/a/d/g;

    iget-object v0, v0, Lb/a/a/a/a/d/g;->c:Lb/a/a/a/a/d/o;

    .line 80
    iget-object v1, p0, Lb/a/a/a/a/d/k;->a:Lb/a/a/a/a/d/g;

    iget-object v2, p0, Lb/a/a/a/a/d/k;->a:Lb/a/a/a/a/d/g;

    invoke-virtual {v2}, Lb/a/a/a/a/d/g;->a()Lb/a/a/a/a/d/o;

    move-result-object v2

    iput-object v2, v1, Lb/a/a/a/a/d/g;->c:Lb/a/a/a/a/d/o;

    .line 81
    invoke-interface {v0}, Lb/a/a/a/a/d/o;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    iget-object v1, p0, Lb/a/a/a/a/d/k;->a:Lb/a/a/a/a/d/g;

    iget-object v1, v1, Lb/a/a/a/a/d/g;->a:Landroid/content/Context;

    const-string v2, "Failed to disable events."

    invoke-static {v1, v2, v0}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
