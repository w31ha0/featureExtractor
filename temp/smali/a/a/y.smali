.class public abstract La/a/y;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/net/InetAddress;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()La/a/ab;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method final a(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)La/a/ab;
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, La/a/y;->a:Ljava/net/InetAddress;

    const/4 v0, -0x1

    iput v0, p0, La/a/y;->b:I

    iput-object v1, p0, La/a/y;->c:Ljava/lang/String;

    iput-object v1, p0, La/a/y;->d:Ljava/lang/String;

    iput-object v1, p0, La/a/y;->e:Ljava/lang/String;

    iput-object p1, p0, La/a/y;->a:Ljava/net/InetAddress;

    iput p2, p0, La/a/y;->b:I

    iput-object p3, p0, La/a/y;->c:Ljava/lang/String;

    iput-object v1, p0, La/a/y;->d:Ljava/lang/String;

    iput-object p4, p0, La/a/y;->e:Ljava/lang/String;

    invoke-virtual {p0}, La/a/y;->a()La/a/ab;

    move-result-object v0

    return-object v0
.end method
