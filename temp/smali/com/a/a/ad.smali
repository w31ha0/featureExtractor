.class Lcom/a/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/a/a/z;


# direct methods
.method constructor <init>(Lcom/a/a/z;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/a/a/ad;->a:Lcom/a/a/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/a/a/ad;->a:Lcom/a/a/z;

    iget-object v1, p0, Lcom/a/a/ad;->a:Lcom/a/a/z;

    sget-object v2, Lcom/a/a/d;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/a/a/z;->a(Lcom/a/a/z;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/z;->a([Ljava/io/File;)V

    .line 719
    return-void
.end method
