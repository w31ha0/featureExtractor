.class Lb/a/a/a/a/b/x;
.super Lb/a/a/a/a/b/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lb/a/a/a/a/b/w;


# direct methods
.method constructor <init>(Lb/a/a/a/a/b/w;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lb/a/a/a/a/b/x;->b:Lb/a/a/a/a/b/w;

    iput-object p2, p0, Lb/a/a/a/a/b/x;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lb/a/a/a/a/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lb/a/a/a/a/b/x;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    return-void
.end method
