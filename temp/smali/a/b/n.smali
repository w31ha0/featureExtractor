.class public final La/b/n;
.super Ljava/lang/Object;

# interfaces
.implements La/b/j;


# instance fields
.field private a:Ljava/io/File;

.field private b:La/b/k;


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/b/n;->a:Ljava/io/File;

    iput-object v0, p0, La/b/n;->b:La/b/k;

    iput-object p1, p0, La/b/n;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, La/b/n;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, La/b/n;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La/b/n;->b:La/b/k;

    if-nez v0, :cond_0

    invoke-static {}, La/b/k;->a()La/b/k;

    move-result-object v0

    iget-object v1, p0, La/b/n;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, La/b/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/b/n;->b:La/b/k;

    iget-object v1, p0, La/b/n;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, La/b/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/b/n;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
