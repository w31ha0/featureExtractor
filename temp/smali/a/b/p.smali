.class final La/b/p;
.super Ljava/lang/Object;

# interfaces
.implements La/b/j;


# instance fields
.field private a:La/b/f;


# direct methods
.method public constructor <init>(La/b/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, La/b/p;->a:La/b/f;

    iput-object p1, p0, La/b/p;->a:La/b/f;

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, La/b/p;->a:La/b/f;

    invoke-virtual {v0}, La/b/f;->d()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/b/p;->a:La/b/f;

    invoke-virtual {v0}, La/b/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/b/p;->a:La/b/f;

    invoke-virtual {v0}, La/b/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
