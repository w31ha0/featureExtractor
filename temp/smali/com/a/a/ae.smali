.class Lcom/a/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/a/a/z;


# direct methods
.method constructor <init>(Lcom/a/a/z;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/a/a/ae;->b:Lcom/a/a/z;

    iput-object p2, p0, Lcom/a/a/ae;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/a/a/ae;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
