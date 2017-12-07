.class public abstract La/b/k;
.super Ljava/lang/Object;


# static fields
.field private static a:La/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/b/k;->a:La/b/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()La/b/k;
    .locals 1

    sget-object v0, La/b/k;->a:La/b/k;

    if-nez v0, :cond_0

    new-instance v0, La/b/w;

    invoke-direct {v0}, La/b/w;-><init>()V

    sput-object v0, La/b/k;->a:La/b/k;

    :cond_0
    sget-object v0, La/b/k;->a:La/b/k;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)Ljava/lang/String;
.end method
