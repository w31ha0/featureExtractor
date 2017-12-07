.class public final La/a/a/m;
.super La/a/q;


# static fields
.field public static final d:La/a/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La/a/a/m;

    const-string v1, "Newsgroups"

    invoke-direct {v0, v1}, La/a/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/a/m;->d:La/a/a/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, La/a/q;-><init>(Ljava/lang/String;)V

    return-void
.end method
