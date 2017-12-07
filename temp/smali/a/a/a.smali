.class final La/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field private final synthetic a:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, La/a/a;->a:Ljava/net/URL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/a/a;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
