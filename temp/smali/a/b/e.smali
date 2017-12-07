.class public abstract La/b/e;
.super Ljava/lang/Object;


# static fields
.field private static a:La/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/b/e;->a:La/b/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()La/b/e;
    .locals 1

    sget-object v0, La/b/e;->a:La/b/e;

    if-nez v0, :cond_0

    new-instance v0, La/b/v;

    invoke-direct {v0}, La/b/v;-><init>()V

    sput-object v0, La/b/e;->a:La/b/e;

    :cond_0
    sget-object v0, La/b/e;->a:La/b/e;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)La/b/c;
.end method

.method public final b(Ljava/lang/String;)La/b/c;
    .locals 1

    invoke-virtual {p0, p1}, La/b/e;->a(Ljava/lang/String;)La/b/c;

    move-result-object v0

    return-object v0
.end method
