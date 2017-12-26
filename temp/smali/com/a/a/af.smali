.class Lcom/a/a/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/a/a/z;


# direct methods
.method constructor <init>(Lcom/a/a/z;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/a/a/af;->b:Lcom/a/a/z;

    iput-object p2, p0, Lcom/a/a/af;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/a/a/af;->b:Lcom/a/a/z;

    invoke-static {v0}, Lcom/a/a/z;->c(Lcom/a/a/z;)Lcom/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/h;->C()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/a/b/m;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-static {}, Lb/a/a/a/f;->g()Lb/a/a/a/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/g/q;->b()Lb/a/a/a/a/g/w;

    move-result-object v0

    .line 1189
    iget-object v1, p0, Lcom/a/a/af;->b:Lcom/a/a/z;

    invoke-static {v1}, Lcom/a/a/z;->c(Lcom/a/a/z;)Lcom/a/a/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/a/h;->a(Lb/a/a/a/a/g/w;)Lcom/a/a/ar;

    move-result-object v0

    .line 1194
    if-eqz v0, :cond_0

    .line 1195
    new-instance v1, Lcom/a/a/bl;

    invoke-direct {v1, v0}, Lcom/a/a/bl;-><init>(Lcom/a/a/ar;)V

    new-instance v0, Lcom/a/a/bp;

    iget-object v2, p0, Lcom/a/a/af;->a:Ljava/io/File;

    invoke-static {}, Lcom/a/a/z;->i()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/a/a/bp;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/a/a/bl;->a(Lcom/a/a/bk;)Z

    .line 1199
    :cond_0
    return-void
.end method
