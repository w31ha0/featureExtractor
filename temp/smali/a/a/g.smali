.class final La/a/g;
.super Ljava/lang/Object;

# interfaces
.implements La/a/u;


# instance fields
.field private synthetic a:La/a/ae;


# direct methods
.method constructor <init>(La/a/ae;)V
    .locals 0

    iput-object p1, p0, La/a/g;->a:La/a/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, La/a/g;->a:La/a/ae;

    invoke-static {v0}, La/a/ae;->a(La/a/ae;)Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    return-void
.end method
